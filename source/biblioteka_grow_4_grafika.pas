(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Biblioteka_Grow_4_grafika;

{$mode objfpc}

interface

uses
  GLUT, Classes, SysUtils, LCLIntf, FileUtil, Graphics, Controls, Process, Forms,
  Dialogs, Math, Menus, ComCtrls, ExtCtrls, StdCtrls, GL, GLU, Buttons, Grids,
  LResources, EditBtn, Clipbrd, gettext, Printers, FileCtrl, TAGraph, TASeries,
  ShellApi, LCLtype, OpenGLContext, IntfGraphics, fpImage, glext;

  Function  Main_3Ddraw():boolean;   // glowan funkacja rysowania
  Function  Lights(LightNumber:integer):boolean;        // ustawienia swiatla
  Function  Materials(kind:integer):boolean;     // give as result different parameters of matherials
//Selector
  Function  Draw3dSelect():boolean;
//Ryswanie
  Function  Draw3dPlanes(ProjectNumber:integer):boolean; // rysowanie plaszczyzn
  Function  Draw3dAxes():boolean;    // funkcja wyswitlania osi
  Function  Draw3dAtoms():boolean; //visible,x,y,z,atrybuty [kolor,atr1,atr2]
  Function  Draw3dBonds():boolean; //
  Function  Draw3dAnalisisBox():boolean; // draw boxes as values csaled by analise
  Function  Refresh3Ddraw():boolean; // odswierz listy rysowania
  Procedure Draw3dLabel(text: string);
  Function  Draw3dChart():boolean;
// Funkcje dodatkowe
  Function  ClearAtomName(AtomName:string):string;
  Function  AtomNameToElement(AtomName:string):string;
  Function  AtomSymbolTo(ValueType,Symbol:string):string; // zamiana symbolu na kolor,radius, element,  ect.
  Function  StripedLine(x1,y1,z1,x2,y2,z2:currency;steps:integer):boolean;
// sprawdz czy biblioteka OpenGL jest dostepna ?
  Function  IsOpenGLonMaschine():boolean;
// Zapisz OpenGL jako image
  Procedure GetOGL_BMP(c:TOpenGLControl; savedir:string);

// zmienne globalne dostepne w programie -zmiana stanow

Var
Start3dDraw:boolean=false; // wlacznik / wylacznik rysowania

    g4g_rendering_quality:string='Best'; // Best lub Low

    g4g_center:boolean=false; // centarlizowanie ukladu wspolrzednych
    g4g_Average_X:currency=0;  // srodek weometryczny atomow
    g4g_Average_Y:currency=0;
    g4g_Average_Z:currency=0;
    g4g_ShowAxes:boolean=false;   // pokaż osie wspolzednych
    g4g_LookZ:currency=-500; // !!!!!!!!!!!         // pocztakowe polozenie look at na osi Z
    g4g_scale:currency=20; // <--------------------------------------------------------- // saklaownaie co ile
    g4g_TranslateX:GLFloat=0;           // przenoszenie obiektu
    g4g_TranslateY:GLFloat=0;
    g4g_rotationx: GLFloat=0;
    g4g_rotationy: GLFloat=0;
    g4g_rotationz: GLFloat=0;
    g4g_AutoRotation: boolean=False;
    g4g_pre_rotationx:GLFloat=0;
    g4g_pre_rotationy:GLFloat=0;
    g4g_XX:integer=0;
    g4g_YY:integer=0;
    g4g_PosTranslateX:double=0;
    g4g_PosTranslateY:double=0;
    g4g_mouse_button:string;
    g4g_lastx:integer=0;
    g4g_lasty:integer=0;

    // varaibales of analyses
    g4g_AN1_scale_factor:currency=0.05; // scale factor of balls
    g4g_AN1_color_alpha:byte=255; // 0 = 0 % -> 255 = 100%

    // varaiables of visualization
    g4g_Projections:String='Orthographic'; // Orthographic;  Perspective
    g4g_visualisation_type:string='Bounds_and_Balls';  // jaki rodzaj vizualziacji: Bounds_and_Balls ; Bounds ; Balls

    // labels
    g4g_Labels_L:integer=0 ; // 0 none, 1,2,3 - column number
    g4g_Labels_P:integer=0 ; // 0 none, 1,2,3 - column number
    g4g_Labels_A:integer=0 ; // 0 none, 1,2,3 - column number
    g4g_Labels_size:currency=0.005 ; // 0 none, 1,2,3 - column number

implementation
  Uses
  Unit1,Unit2,Unit14,Unit9,Unit4,Unit16,Unit12,Unit21,Unit22,Unit20,Unit23,Biblioteka_Grow_4;

//<-------------------- FUNKCJE RYSOWANIA ----------------------------------->

Function  Main_3Ddraw():boolean;
var
  ProjectNumber:integer;

   fogColor : array[0..3] of GLfloat = ( 1, 1, 1, 0.5);
begin

// POLE WIDZENIA //

 glViewport(0, 0, IVM.Openglcontrol1.width, IVM.Openglcontrol1.Height); // okienko (rozmiary)

 glClearColor(Red(Settings.BackgroundColor.ButtonColor), // red,green,blue,alpha Kolor, którym czysci sie ekran
             Green(Settings.BackgroundColor.ButtonColor),
             Blue(Settings.BackgroundColor.ButtonColor),
             0);


 glMatrixMode( GL_PROJECTION );
    glLoadIdentity();

 if g4g_Projections = 'Orthographic' then
   begin
    glOrtho (-IVM.OpenGLcontrol1.width/2, // zut prostopadly    - zrobic perspektywe !!!
              IVM.OpenGLcontrol1.width/2,
              IVM.OpenGLcontrol1.height/2,
             -IVM.OpenGLcontrol1.height/2,
             -50000, 50000);
    end;

 if g4g_Projections = 'Perspective' then
   begin
     gluPerspective(22,IVM.OpenGLControl1.Width/IVM.OpenGLControl1.Height,0.1,1000);
   end;

// USTAWIENIA MODELI //


glMatrixMode( GL_MODELVIEW );
glLoadIdentity(); //Powróć do początku układu współżednych

   glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);

 // USTAWIENIA POCZTAKOWE //
   glEnable(GL_DEPTH_TEST); // badanie glebi
   glDepthMask(GL_TRUE);   // zapis do bufora
   glDepthFunc(GL_LESS); // GL_LESS

   gluLookAt( 0, 0, g4g_LookZ,   // współrzędne x, y, z położenia kamery
              0, 0, 0,     // x, y, z punktu na który patrzy kamera
              0, 1, 0 );  // stałe liczby

//  DOKLADNOSC RENDERINGU

 // JAKOSC renderowania !!!!! - GL_FASTEST - najwyższa wydajność renderingu, GL_NICEST - najwyższa jakość obrazu GL_DONT_CARE - ustawienia domyślne.

 If g4g_rendering_quality ='Best' then
   begin
     glEnable (GL_POINT_SMOOTH);
     glEnable (GL_LINE_SMOOTH);
     glEnable( GL_POLYGON_SMOOTH );

     glHint( GL_FOG_HINT, GL_NICEST);
     glHint( GL_LINE_SMOOTH_HINT, GL_NICEST);
     glHint( GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
     glHint( GL_POINT_SMOOTH_HINT , GL_NICEST);
     glHint( GL_POLYGON_SMOOTH_HINT, GL_NICEST);

     glEnable (GL_POLYGON_SMOOTH);

    {  glEnable(GL_FOG); // fog
      glFogi (GL_FOG_MODE, GL_LINEAR);//  GL_EXP
      glFogf (GL_FOG_DENSITY, 0.05);
      glFogfv (GL_FOG_COLOR, fogColor);

      glFogi (GL_FOG_START, 1);
      glFogi (GL_FOG_END, 5);

      glFogi (GL_FOG_COORD_SRC,GL_LINEAR); }

glEnable (GL_BLEND);
glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
 //glutsetGlutDisplayString('rgba double samples>=6 depth');


     glShadeModel(GL_SMOOTH);  // GL_FLAT

   end;

 If g4g_rendering_quality ='Low' then
   begin
     glDisable (GL_POINT_SMOOTH);
     glDisable (GL_LINE_SMOOTH);
     glDisable( GL_POLYGON_SMOOTH );

     glHint( GL_FOG_HINT, GL_FASTEST);
     glHint( GL_LINE_SMOOTH_HINT, GL_FASTEST);
     glHint( GL_LINE_SMOOTH_HINT, GL_FASTEST);
     glHint( GL_PERSPECTIVE_CORRECTION_HINT, GL_FASTEST);
     glHint( GL_POINT_SMOOTH_HINT , GL_FASTEST);
     glHint( GL_POLYGON_SMOOTH_HINT, GL_FASTEST);


     glShadeModel(GL_SMOOTH);  // GL_FLAT

   end;


//glHint( GL_LINE_SMOOTH_HINT, g4g_rendering_quality );     //<---- super wolno bo   GL_NICEST  !!!!!!!!!!!!!!!!!
//glHint( GL_POLYGON_SMOOTH_HINT, g4g_rendering_quality );  //<---- super wolno bo   GL_NICEST  !!!!!!!!!!!!!!!!1

glutInitDisplayMode(GLUT_DEPTH and GLUT_DOUBLE and GLUT_RGBA and GLUT_ALPHA and GLUT_MULTISAMPLE and GLUT_ACCUM );
glEnable(GL_MULTISAMPLE_ARB);
glEnable(GL_MULTISAMPLE);

      glGetString(GL_RENDERER);

glEnable (GL_BLEND);
glBlendFunc (GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);


//  FUNKCJE SWIATLA I MATERIALOW

    Lights(0);  // swiatla  << swiatlo stale w miejscu

    Materials(Settings.ComboBox2.ItemIndex); // materialy dla calej sceny

// PRZEKSZTALCENIA //
if g4g_center = True then   // wycentrowanie
       begin
         glTranslatef(0,0,0); g4g_TranslateX:=0; g4g_TranslateY:=0; // wyzerowanie przesuniecia
       end else begin glTranslatef(g4g_TranslateX, g4g_TranslateY,0);  end;

    // Rotation
    glRotatef(g4g_rotationy, 0, 1, 0); // obrót    // os Z znalesc przelicznik !!!!
    glRotatef(g4g_rotationx, 1, 0, 0);             //glRotatef(g4g_rotationx, 0, 0, 1)

    // skalowanie zoom
    glScalef(g4g_scale, g4g_scale, g4g_scale); // skalowanie zoom

 // WLASCIWE FUNKCJE RYSOWANIA
 if Start3dDraw then
    begin                          // << gdzies sie pierdolnolem bo nie widac krawedzi !!!!!
     try      // wszytskie funkcje rysujace
      begin
// ------------ Loop for project tables to assign correct fuction by object type
  For ProjectNumber:=1 to Project_Table_Form.StringGrid1.RowCount -1 do
    begin
     if (Project_Table_Form.StringGrid1.Cells[NrColProj_Inc,ProjectNumber] = '1') then
      begin

        // ---------------------------------------------------------- Assign Plane - PLA     //<--------------- TODO: funkacja listująca z odnoscnikiem numerycznym do odp funkcji

        if (Project_Table_Form.StringGrid1.Cells[NrColProj_Type,ProjectNumber] = Type_Plane) then
          begin
             Draw3dPlanes(ProjectNumber-1);
          end;

        // ---------------------------------------------------------- Assign Plane - PLA

          //  tu

       end;
     end;

       // Draw3dChart();

       Draw3dSelect;



       Draw3dAnalisisBox();


// show bonds and atoms
if g4g_visualisation_type = 'Bounds_and_Balls' then
      begin
       Draw3dAtoms(); // rysuj atomy

       glColorMaterial(GL_FRONT, GL_AMBIENT_AND_DIFFUSE);
       Draw3dBonds(); //<- wzaleznosci od ikonki kliknietej i renderowania
     end;

// show bonds only
if g4g_visualisation_type = 'Bounds' then
      begin
       glColorMaterial(GL_FRONT, GL_AMBIENT_AND_DIFFUSE);
       Draw3dBonds(); //<- wzaleznosci od ikonki kliknietej i renderowania
      end;

// show atoms only
if g4g_visualisation_type = 'Balls' then
      begin
       Draw3dAtoms(); // rysuj atomy
      end;

      end
       except
         Start3dDraw:=false;
         Console.AddCommunicate(Com133+'[1]',true);
         Result:=false;
        end;

  // Linie

       glColorMaterial(GL_FRONT, GL_AMBIENT_AND_DIFFUSE);
       Draw3dAxes(); // rysuj osie wspolzednych


     IVM.OpenGLControl1.SwapBuffers;
     Result:=True;
    end;

Result:=False;
end;

Function  Materials(kind:integer):boolean;
var
     no_mat: array[0..3] of GLfloat = (0, 0, 0, 1); // pastelowe a jak 0 to pelna barwa
     mat_ambient : array[0..3] of GLfloat = ( 1, 1, 1, 0.7);
     mat_ambient_color : array[0..3] of GLfloat = (0, 0, 0, 0.2);
     mat_diffuse : array[0..3] of GLfloat = ( 1, 1, 1, 1); // brak zmianay
     mat_specular : array[0..3] of GLfloat = (1, 1, 1, 1);
     no_shininess: GLfloat = 0.0;
     low_shininess : GLfloat =  20;
     high_shininess : GLfloat = 120.0;
     mat_emission : array[0..3] of GLfloat = (1, 1, 1, 1);
begin

 if kind = 0 then // default    1,1,160 // 1,1,0 //
    begin
       glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT, no_mat);
       glMaterialfv(GL_FRONT_AND_BACK, GL_DIFFUSE, mat_diffuse);
       glMaterialfv(GL_FRONT_AND_BACK, GL_SPECULAR, mat_specular);
       glMaterialf(GL_FRONT_AND_BACK, GL_SHININESS, no_shininess);
      // glMaterialfv(GL_FRONT, GL_EMISSION, mat_emission);
    end;

    // draw sphere in first row, first column
    // diffuse reflection only; no ambient or specular

if kind = 1 then
   begin
     glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT, no_mat);
     glMaterialfv(GL_FRONT_AND_BACK, GL_DIFFUSE, mat_diffuse);
  //   glMaterialfv(GL_FRONT_AND_BACK, GL_SPECULAR, no_mat);
  //   glMaterialf(GL.GL_FRONT, GL.GL_SHININESS, no_shininess);
  //   glMaterialfv(GL.GL_FRONT, GL.GL_EMISSION, no_mat);
   end;

if kind = 2 then // default    1,1,160 // 1,1,0 //
   begin
      glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT, no_mat);
      glMaterialfv(GL_FRONT_AND_BACK, GL_DIFFUSE, mat_diffuse);
      glMaterialfv(GL_FRONT_AND_BACK, GL_SPECULAR, mat_specular);
      glMaterialf(GL_FRONT_AND_BACK, GL_SHININESS, no_shininess);
  //    glMaterialfv(GL_FRONT, GL_EMISSION, mat_emission);
   end;

Result:=true;
end;

Function  Lights(LightNumber:integer):boolean;
var
  //light properties
    ambient: array[0..3] of GLfloat = (1, 1, 1, 1); // WHITE 100%
    diffuse: array[0..3] of GLfloat = (1, 1, 1, 1);
    specular: array[0..3] of GLfloat= (0.4, 0.4, 0.4, 1);
    position: array[0..3] of GLfloat= (1, 1, 0, 0);
    position_2: array[0..3] of GLfloat= (-1, -1, 0, 0);
    position_3: array[0..3] of GLfloat= (-1, -1, 0, 0);

begin
    glEnable(GL_COLOR_MATERIAL);
    glEnable(GL_LIGHTING);
    glEnable(GL_NORMALIZE);

 if LightNumber = 0 then
  begin
   glDisable(GL_LIGHT0);

   // SET AMBIENT LIGHT

       glLightfv(GL_LIGHT0, GL_AMBIENT, ambient); // WHITE 100%

   //->

   // SET DIFFUSE LIGHT
       diffuse[0]:= Red(settings.ColorButton6.ButtonColor) / 225;
       diffuse[1]:= Green(settings.ColorButton6.ButtonColor) / 225;
       diffuse[2]:= Blue(settings.ColorButton6.ButtonColor) / 225;

       glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse);

   // SET SPECULAR LIGHT

       glLightfv(GL_LIGHT0, GL_SPECULAR, specular);

   // LIGHT POSITION

       position[0]:= Settings.FloatSpinEdit1.Value;
       position[1]:= Settings.FloatSpinEdit2.Value;
       position[2]:= Settings.FloatSpinEdit3.Value;
       position[3]:= 0;  // 0 - swiatlo polozone nieskonczenie dlaeko, 1 - od zrodla do obiektu

       glLightfv(GL_LIGHT0, GL_POSITION, position);

   //->

   // COLOR DEPENDENCY
       glColorMaterial(GL_FRONT_AND_BACK, GL_DIFFUSE);

   // SWITCH ON LIGHTING

    glEnable(GL_LIGHT0);

  end;

Result:=true;

end;
//<-------------------- FUNKCJE SELEKCJI ATOMOW ----------------------------->

Function  Draw3dSelect():boolean;
Var
 row:integer;
 color:string;
begin

 for Row:=0 to Length(Selected)-1 do
   begin
     glPushMatrix();
        glTranslatef(StrToFloat(Selected[Row,NrColX]),  //X
                     StrToFloat(Selected[Row,NrColY]),  //Y
                     StrToFloat(Selected[Row,NrColZ])); //Z

        color:= '$90EE90'; // jasny !!!

        glColor4ub(Red(StringToColor(color)),   // Kolory atomow
                   Green(StringToColor(color)), // glColor4ub(red, green, blue, alpha)
                   Blue(StringToColor((color))),g4g_AN1_color_alpha);

        glutWireSphere((StrToFloat(Selected[Row,NrColRadius])+0.15) * strtofloat(settings.LabeledEdit1.Text), 10, 10);

        glPopMatrix();
   end;

end;

//<-------------------- FUNKCJE RYSOWANIA ----------------------------------->

Function  Draw3dAnalisisBox():boolean;
Var                             //   0       1 2 3   4     5
  a,b:integer;
  color:string;
  radius:float;
begin

Try
{
 for a:=1 to Project_table_form.StringGrid1.RowCount-1 do
       begin
         if Project_table_form.StringGrid1.Cells[2,a] = '1' then
           begin
            if (Uppercase(Trim(TstringGrid(Mainform.PageControl.Pages[a].Controls[0]).Cells[NrColSection,1])) = 'BOX') then
             begin
              for b:=1 to TstringGrid(Mainform.PageControl.Pages[a].Controls[0]).RowCount -1 do
               begin
                if TstringGrid(Mainform.PageControl.Pages[a].Controls[0]).Cells[NrColInc,b] = '1' then
                 begin

                  glPushMatrix();

                  // ustal wspolrzedne
                  glTranslatef(StrToFloat(TstringGrid(Mainform.PageControl.Pages[a].Controls[0]).Cells[NrColX,b]),  //X
                               StrToFloat(TstringGrid(Mainform.PageControl.Pages[a].Controls[0]).Cells[NrColY,b]),  //Y
                               StrToFloat(TstringGrid(Mainform.PageControl.Pages[a].Controls[0]).Cells[NrColZ,b])); //Z

                  // Label
                  if g4g_Labels_A > 0 then
                   begin
                    Draw3dLabel(PChar(TstringGrid(Mainform.PageControl.Pages[a].Controls[0]).Cells[g4g_Labels_A,b]));
                   end;

                  // pobierz kolor atomu , w kolumnie NrColTemperatureFactor !!!
                  color:= TstringGrid(MainForm.PageControl.Page[a].Controls[0]).Cells[NrColTemperatureFactor,b];

                  glColor4ub(Red(StringToColor(color)),   // Kolory atomow
                            Green(StringToColor(color)), // glColor4ub(red, green, blue, alpha)
                            Blue(StringToColor((color))),g4g_AN1_color_alpha);

                  // rodzaj Cuba / Boxa
                            // factor multiply
                  radius:= g4g_AN1_scale_factor * StrToFloat(TstringGrid(MainForm.PageControl.Page[a].Controls[0]).Cells[NrColOccupancy,b]);

                  if settings.CheckBox22.Checked then
                      begin
                         glutWireSphere(radius, 25, 25); // radius z kolumny Occupancy
                      end;

                  if settings.CheckBox21.Checked then
                      begin
                        // glutSolidCube(radius); // radius z kolumny Occupancy
                       glutSolidSphere(radius, 25, 25); // radius, ilosc kresek, ilosc kresek
                      end;

                  glPopMatrix();
                 end;
               end;
             end;
            end;
           end;
                }
    Result:=true;
  except
    Result:=False;
  end;
end;

Function  Draw3dPlanes(ProjectNumber:integer):boolean;  // prepare list for plane
Var
  i,a:integer;
  Lista:TstringList;
  PlaneColor,Transparency,VisFrame,ColorFrame,FrameSize,x1,y1,z1,x2,y2,z2,x3,y3,z3:string;
begin

// settings
  PlaneColor:= 'clLime';  // Plane Color  // kolor z kontainera
  Transparency:= '70';  // Transparency
  VisFrame:= '1';  // vis frame ?
  ColorFrame:= 'clWhite';  // frame color
  FrameSize:= '2';  // size

// ----------------------------------------------------------------- Coordinates
//if
//First atom
   x1:= Project[ProjectNumber,0,NrColX];
   y1:= Project[ProjectNumber,0,NrColY];
   z1:= Project[ProjectNumber,0,NrColZ];
//Second atom
   x2:= Project[ProjectNumber,1,NrColX];
   y2:= Project[ProjectNumber,1,NrColY];
   z2:= Project[ProjectNumber,1,NrColZ];
//Third atom
   x3:= Project[ProjectNumber,2,NrColX];
   y3:= Project[ProjectNumber,2,NrColY];
   z3:= Project[ProjectNumber,2,NrColZ];

// ---------------------------------------------------------------------- Labels
// First atom label
if Project[ProjectNumber,0,NrColVis] = '1' then
 begin
   glPushMatrix();

   glTranslatef(StrToFloat(x1),  //X
                StrToFloat(y1),  //Y
                StrToFloat(z1)); //Z

   Draw3dLabel(Project[ProjectNumber,0,NrColAtomName]+' angle:'+
   '');

   glPopMatrix();
 end;

// First - Second distance
if (Project[ProjectNumber,0,NrColVis] = '1') and (Project[ProjectNumber,1,NrColVis] = '1') then
 begin
   glPushMatrix();

   glTranslatef((StrToFloat(x1)+StrToFloat(x2))/2,  //X
                (StrToFloat(y1)+StrToFloat(y2))/2,  //Y
                (StrToFloat(z1)+StrToFloat(z2))/2); //Z

   Draw3dLabel('Distance:'+'');

   glPopMatrix();
 end;
// -------------------------------------------------------- DRAW PLASES FUNCTION
try

  glPushMatrix();

  glBegin(GL_TRIANGLES);
       glColor4f(Red(StringToColor(PlaneColor)),
                 Green(StringToColor(PlaneColor)),
                 Blue(StringToColor(PlaneColor)),
                 StrToCurr(Transparency)/100); // color
         glVertex3f(StrToCurr(x1),StrToCurr(y1),StrToCurr(z1)); //x1,y1,z1
         glVertex3f(StrToCurr(x2),StrToCurr(y2),StrToCurr(z2)); //x2,y2,z2
         glVertex3f(StrToCurr(x3),StrToCurr(y3),StrToCurr(z3)); //x3,y3,z3
  glEnd();

  glPopMatrix();


 if VisFrame = '1' then
   begin
     glPushMatrix();

     glLineWidth(StrToCurrDef(FrameSize,0)); // zmiana szerokosci lini

     glBegin(GL_LINES);  // line 1
        glColor3f(Red(StringToColor(ColorFrame)),
                 Green(StringToColor(ColorFrame)),
                 Blue(StringToColor(ColorFrame))); // color
          glVertex3f(StrToCurrDef(x1,0),StrToCurrDef(y1,0),StrToCurrDef(z1,0)) ;
          glVertex3f(StrToCurrDef(x2,0),StrToCurrDef(y2,0),StrToCurrDef(z2,0)) ;
     glEnd();

      glBegin(GL_LINES);  // line 2
        glColor3f(Red(StringToColor(ColorFrame)),
                 Green(StringToColor(ColorFrame)),
                 Blue(StringToColor((ColorFrame)))); // color
          glVertex3f(StrToCurrDef(x2,0),StrToCurrDef(y2,0),StrToCurrDef(z2,0)) ;
          glVertex3f(StrToCurrDef(x3,0),StrToCurrDef(y3,0),StrToCurrDef(z3,0)) ;
     glEnd();

      glBegin(GL_LINES);  // line 3
        glColor3f(Red(StringToColor(ColorFrame)),
                 Green(StringToColor(ColorFrame)),
                 Blue(StringToColor((ColorFrame)))); // color
          glVertex3f(StrToCurrDef(x3,0),StrToCurrDef(y3,0),StrToCurrDef(z3,0)) ;
          glVertex3f(StrToCurrDef(x1,0),StrToCurrDef(y1,0),StrToCurrDef(z1,0)) ;
      glEnd();

    end;

 except
  Result:= False;
 end;

   glPopMatrix();


end;

Function  Refresh3Ddraw():boolean; // odswież listy rysownaia
  begin
  Start3dDraw:=false;
    Try
      Start3dDraw:=True;
    except
      Start3dDraw:=false;
    end;

    Result:= Main_3Ddraw();

  end;

Function  Draw3dAxes():boolean;
begin

 if g4g_showAxes then
   begin

glPushMatrix();

// showAxisX

if settings.CheckBox12.Checked then
  begin
    glLineWidth(settings.FloatSpinEdit7.Value); // zmiana szerokosci lini
    glBegin(GL_LINES);
       glColor4ub(red(settings.ColorButton1.ButtonColor),
                 green(settings.ColorButton1.ButtonColor),
                 blue(settings.ColorButton1.ButtonColor),255); // alpha
       glVertex3f(settings.FloatSpinEdit9.Value,0,0); // +X
       glVertex3f(settings.FloatSpinEdit8.Value,0,0) ; // -X
    glEnd();

    if settings.CheckBox17.Checked then
      begin
        // pokazuj skale
      end;

  end;

//showAxisY
     if settings.CheckBox13.Checked then
       begin
         glLineWidth(settings.FloatSpinEdit5.Value); // zmiana szerokosci lini
         glBegin(GL_LINES);
            glColor4ub(red(settings.ColorButton2.ButtonColor),
                      green(settings.ColorButton2.ButtonColor),
                      blue(settings.ColorButton2.ButtonColor),255);
            glVertex3f(0,settings.FloatSpinEdit12.Value,0); // +Y
            glVertex3f(0,settings.FloatSpinEdit11.Value,0) ; // -Y

       glEnd();

         if settings.CheckBox16.Checked then
           begin
             // pokazuj skale
           end;

       end;


//showAxisZ
if settings.CheckBox14.Checked then
       begin
         glLineWidth(settings.FloatSpinEdit6.Value); // zmiana szerokosci lini
         glBegin(GL_LINES);
            glColor4ub(red(settings.ColorButton3.ButtonColor),
                      green(settings.ColorButton3.ButtonColor),
                      blue(settings.ColorButton3.ButtonColor),255);
            glVertex3f(0,0,settings.FloatSpinEdit14.Value); // +Z
            glVertex3f(0,0,settings.FloatSpinEdit13.Value) ; // -Z

         glEnd();

       if settings.CheckBox15.Checked then
           begin
             // pokazuj skale
           end;

       end;

glPopMatrix();

end;
end;

Function  Draw3dAtoms():boolean; // atom type,x,y,z,color,radius
Var                             //   0       1 2 3   4     5
  a,b:integer;
  color:string;
begin

Try

 for a:=1 to Project_table_form.StringGrid1.RowCount-1 do
       begin
         if Project_table_form.StringGrid1.Cells[NrColProj_Inc,a] = '1' then
           begin
             if (Project_table_form.StringGrid1.Cells[NrColProj_Type,a] = type_Protein) // typy lepiej bo mozna specyzowac ktore co ma jak rywsowac
              or (Project_table_form.StringGrid1.Cells[NrColProj_Type,a] = type_DNA)
              or (Project_table_form.StringGrid1.Cells[NrColProj_Type,a] = type_Ligand)
              then begin

             for b:=0 to ProjectArrayFunctions('RowCount',a-1) -1 do
               begin
                if Project[a-1,b,NrColInc] = '1' then
                 begin

                  glPushMatrix();

     //-------------------------------------------<
                   // ustal wspolrzedne
                  glTranslatef(StrToFloat(Project[a-1,b,NrColX]),  //X      // tutaj dodać przesuniecia + np.0.5
                               StrToFloat(Project[a-1,b,NrColY]),  //Y
                               StrToFloat(Project[a-1,b,NrColZ])); //Z


                  // Label Protein
                  if (g4g_Labels_P > 0) and (Project_table_form.StringGrid1.Cells[NrColProj_Type,a] = type_Protein) then
                   begin
                     Draw3dLabel(Project[a-1,b,g4g_Labels_P]);
                   end;

                  // Label Ligand
                  if (g4g_Labels_L > 0) and (Project_table_form.StringGrid1.Cells[NrColProj_Type,a] = type_Ligand) then
                   begin
                    Draw3dLabel(Project[a-1,b,g4g_Labels_L]);
                   end;
               glPopMatrix();
     //-------------------------------------------<
               glPushMatrix();

                  // ustal wspolrzedne
                  glTranslatef(StrToFloat(Project[a-1,b,NrColX]),  //X
                               StrToFloat(Project[a-1,b,NrColY]),  //Y
                               StrToFloat(Project[a-1,b,NrColZ])); //Z
                                                                                // USUNAC LABELE STĄD I PRZENIESC DO ARRAY LABELS
                  // pobierz kolor atomu
                  color:= Project[a-1,b,NrColColor]; // KOLORY USTALONE W GRIDZIE

                  glColor4ub(Red(StringToColor(color)),   // Kolory atomow  glColor3f
                            Green(StringToColor(color)), // glColor4ub(red, green, blue, alpha)
                            Blue(StringToColor((color))),g4g_AN1_color_alpha);

                  // rodzaj kuli
                  if settings.CheckBox1.Checked then
                      begin
                         glutWireSphere(StrToFloat(Project[a-1,b,NrColRadius])*StrToFloat(settings.LabeledEdit1.Text), 25, 25); // radius, ilosc kresek, ilosc kresek
                      end;
                  if settings.CheckBox2.Checked then
                      begin
                         glutSolidSphere(StrToFloat(Project[a-1,b,NrColRadius])*StrToFloat(settings.LabeledEdit1.Text), 25, 25); // radius, ilosc kresek, ilosc kresek
                      end;

                  glPopMatrix();
                 end;
               end;
             end;
            end;
           end;

    Result:=true;
  except
    Result:=False;
  end;
end;

Function  Draw3dBonds():boolean;

var
  a,i:integer;
  color1,color2:Tcolor;
  centerX,centerY,centerZ,shift_D_bond,shift_T_bond,x1,x2,y1,y2,z1,z2:currency;
begin

 shift_D_bond:= 0.07;
 shift_T_bond:= 0.1;

 glLineWidth(Settings.FloatSpinEdit10.Value); // zmiana szerokosci lini
try

// line
for a:=0 to Length(Bonds) -1 do
  begin
   if Bonds[a,NrColBonds_Inc] = '1' then
    begin
     x1:= strtocurr(Bonds[a,NrColBonds_FirstX]);
     y1:= strtocurr(Bonds[a,NrColBonds_FirstY]);
     z1:= strtocurr(Bonds[a,NrColBonds_FirstZ]);
     x2:= strtocurr(Bonds[a,NrColBonds_SecondX]);
     y2:= strtocurr(Bonds[a,NrColBonds_SecondY]);
     z2:= strtocurr(Bonds[a,NrColBonds_SecondZ]);

     centerX:= (x1 + x2) / 2; // bo odejmuje polowe odleglosci
     centerY:= (y1 + y2) / 2;
     centerZ:= (z1 + z2) / 2;

 if  g4g_visualisation_type ='Bounds_and_Balls' then
  begin
     color1:= StringToColor('clWhite');
     color2:= StringToColor('clWhite');
  end else
   begin
     color1:= StringToColor(Bonds[a,NrColBonds_FirstAtomColor]); // KOLORY
     color2:= StringToColor(Bonds[a,NrColBonds_SecondAtomColor]); // KOLORY
  end;


 if Bonds[a,NrColBonds_BondType] = 'S' then
   begin
     glPushMatrix();
     // 1
      glBegin(GL_LINES);
        glColor4ub(Red(color1), Green(color1), Blue(color1),g4g_AN1_color_alpha);
           glVertex3f(x1,y1,z1);
           glVertex3f(centerX,centerY,centerZ);
       glEnd();
     // 2
       glBegin(GL_LINES);
       glColor4ub(Red(color2), Green(color2), Blue(color2),g4g_AN1_color_alpha);
           glVertex3f(centerX,centerY,centerZ);
           glVertex3f(x2,y2,z2);
       glEnd();
     glPopMatrix();
   end;

 if Bonds[a,NrColBonds_BondType] = 'D' then
   begin
    glPushMatrix();
   // 1
     glBegin(GL_LINES);
        glColor4ub(Red(color1), Green(color1), Blue(color1),g4g_AN1_color_alpha);
          glVertex3f(x1+shift_D_bond,y1,z1);
          glVertex3f(centerX+shift_D_bond,centerY,centerZ);

          glVertex3f(x1-shift_D_bond,y1,z1);
          glVertex3f(centerX-shift_D_bond,centerY,centerZ);
      glEnd();
   // 2
      glBegin(GL_LINES);
        glColor4ub(Red(color2), Green(color2), Blue(color2),g4g_AN1_color_alpha);
          glVertex3f(centerX+shift_D_bond,centerY,centerZ);
          glVertex3f(x2+shift_D_bond,y2,z2);

          glVertex3f(centerX-shift_D_bond,centerY,centerZ);
          glVertex3f(x2-shift_D_bond,y2,z2);
      glEnd();

     glPopMatrix();
   end;

  if Bonds[a,NrColBonds_BondType] = 'T' then
   begin
    glPushMatrix();
  // 1
    glBegin(GL_LINES);
        glColor4ub(Red(color1), Green(color1), Blue(color1),g4g_AN1_color_alpha);
          glVertex3f(x1+shift_T_bond,y1,z1);
          glVertex3f(centerX+shift_T_bond,centerY,centerZ);

          glVertex3f(x1,y1,z1);
          glVertex3f(centerX,centerY,centerZ);

          glVertex3f(x1-shift_T_bond,y1,z1);
          glVertex3f(centerX-shift_T_bond,centerY,centerZ);
    glEnd();
  // 2
    glBegin(GL_LINES);
        glColor4ub(Red(color2), Green(color2), Blue(color2),g4g_AN1_color_alpha);
          glVertex3f(centerX+shift_T_bond,centerY,centerZ);
          glVertex3f(x2+shift_T_bond,y2,z2);

          glVertex3f(centerX,centerY,centerZ);
          glVertex3f(x2,y2,z2);

          glVertex3f(centerX-shift_T_bond,centerY,centerZ);
          glVertex3f(x2-shift_T_bond,y2,z2);
      glEnd();

     glPopMatrix();
   end;

     if (Bonds[a,NrColBonds_BondType] = 'AR') or (Bonds[a,NrColBonds_BondType] = 'DE') then
      begin
      glPushMatrix();
         glBegin(GL_LINES);
           glColor4ub(Red(color1), Green(color1), Blue(color1),g4g_AN1_color_alpha);
             glVertex3f(x1-shift_D_bond,y1,z1);
             glVertex3f(centerX-shift_D_bond,centerY,centerZ);
         glEnd();

         glBegin(GL_LINES);
           glColor4ub(Red(color2), Green(color2), Blue(color2),g4g_AN1_color_alpha);
             glVertex3f(centerX-shift_D_bond,centerY,centerZ);
             glVertex3f(x2-shift_D_bond,y2,z2);
         glEnd();


       glPopMatrix();

         glColor4ub(Red(color1), Green(color1), Blue(color1),g4g_AN1_color_alpha);
         StripedLine(x1+shift_D_bond,y1,z1,centerX+shift_D_bond,centerY,centerZ,10);

         glColor4ub(Red(color2), Green(color2), Blue(color2),g4g_AN1_color_alpha);
         StripedLine(centerX+shift_D_bond,centerY,centerZ,x2+shift_D_bond,y2,z2,10);

      end;

   end;
  end;

    Result:=True;
  except
    Result:=False;
  end;
end;

procedure Draw3dLabel(text: string);
var
  i: word;
begin
if text > '' then
 begin

glPushMatrix();

  glColor4ub(255,255,255,255);
  glLineWidth(2);

  glScalef(g4g_Labels_size,g4g_Labels_size,g4g_Labels_size);

  // jakosc

    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glEnable(GL_BLEND);
    glEnable(GL_LINE_SMOOTH);

  glRotatef(180 - g4g_rotationx,1,0,0);
  glRotatef(180 + g4g_rotationy,0,1,0);

  for i := 0 to Length(text) do
    begin
      glutStrokeCharacter(GLUT_STROKE_ROMAN, smallint(text[i])); // GLUT_STROKE_ROMAN
    end;
  glPopMatrix();

 end;
end;

Function  Draw3dChart():boolean;
Var
  a,b:integer;
  color:string;
begin

Try
 for a:=0 to Length(Bonds) -1 do  // nie bond tylko
   begin
     glPushMatrix();

      // ustal wspolrzedne
      glTranslatef(StrToFloat(Bonds[a,15]),  //X
                   StrToFloat(Bonds[a,16]),  //Y
                   StrToFloat(Bonds[a,17])); //Z


      // pobierz kolor atomu
      color:= 'clBlue'; // KOLORY USTALONE W GRIDZIE

      glColor4ub(Red(StringToColor(color)),   // Kolory atomow  glColor3f
                Green(StringToColor(color)), // glColor4ub(red, green, blue, alpha)
                Blue(StringToColor((color))),g4g_AN1_color_alpha);


      glutWireSphere(1.5, 25, 25); // radius, ilosc kresek, ilosc kresek

      glPopMatrix();

     end;
    Result:=true;
  except
    Result:=False;
  end;
end;

//<-------------------- FUNKCJE DODATKOWE ----------------------------------->
Function ClearAtomName(AtomName:string):string; // https://www.cgl.ucsf.edu/chimera/docs/UsersGuide/tutorials/pdbintro.html
Var
  i:integer;
  ElementName:string='';
  temp:string='';
begin

// bez liczb, clear numbers

for i:=1 to length(AtomName) do
   begin
    temp:= AtomName[i];
     if czy_liczba(temp) = false then
       begin
         ElementName:= ElementName + temp;
       end;
   end;
    ElementName := UpperCase(ElementName);

  // usuwaj primy

  ElementName:= StringReplace(Copy(ElementName,0,length(ElementName)),#39,'', [rfReplaceAll]);

  Result:=ElementName;

end;

Function AtomNameToElement(AtomName:string):string; // https://www.cgl.ucsf.edu/chimera/docs/UsersGuide/tutorials/pdbintro.html
Var
  i:integer;
  ElementName:string='';
  temp:string='';
begin

// bez liczb, clear numbers

for i:=1 to length(AtomName) do
   begin
    temp:= AtomName[i];
     if czy_liczba(temp) = false then
       begin
         ElementName:= ElementName + temp;
       end;
   end;
    ElementName := UpperCase(ElementName);

    ElementName:= StringReplace(ElementName,'A','', [rfReplaceAll]);
    ElementName:= StringReplace(ElementName,'B','', [rfReplaceAll]);
    ElementName:= StringReplace(ElementName,'G','', [rfReplaceAll]);
    ElementName:= StringReplace(ElementName,'D','', [rfReplaceAll]);
    ElementName:= StringReplace(ElementName,'E','', [rfReplaceAll]);
    ElementName:= StringReplace(ElementName,'Z','', [rfReplaceAll]);

  if Pos('H',ElementName) = 1 then  // pomijaj wodory !!!
    begin
      ElementName:='H';
    end
  else
    begin
      ElementName:= StringReplace(Copy(ElementName,0,length(ElementName)),'H','', [rfReplaceAll]);
    end;

   if Pos('P',ElementName) = 1 then  // pomijaj phosphorum!!!
    begin
      ElementName:='P';
    end
  else
    begin
      ElementName:= StringReplace(Copy(ElementName,0,length(ElementName)),'P','', [rfReplaceAll]);
    end;

  // usuwaj primy

  ElementName:= StringReplace(Copy(ElementName,0,length(ElementName)),#39,'', [rfReplaceAll]);


  if (ElementName = 'OXT') or (ElementName = 'O5T ') or (ElementName = 'O3T ') then
    begin
      ElementName:= 'O';
    end;

  Result:=ElementName;

end;

Function  AtomSymbolTo(ValueType,Symbol:string):string; // ValueType = N - Name, C- Color, R - Radius
Var         // uses array: Atoms_def
  i:integer;
  found:integer=-1;
begin

  For i:=0 to Length(Atoms_def)-1 do
   begin
    if Uppercase(Atoms_def[i,2]) = Uppercase(Symbol) then
     begin
       found:=i;
     end;
   end;

  if found > -1 then
   begin
     Case ValueType of
      'N': Result:= Atoms_def[found,1];
      'C': Result:= ColorToString(RGB(Round(255 * StrtoCurr(Atoms_def[found,3])),Round(255 * StrtoCurr(Atoms_def[found,4])),Round(255 * StrtoCurr(Atoms_def[found,5]))));
      'R': Result:= Atoms_def[found,6];
      end;
   end
    else
   begin
     Case ValueType of
      'N': Result:= 'Undefined';
      'C': Result:= ColorToString(clFuchsia);
      'R': Result:= '1';
      end;
   end;

end;

Function  StripedLine(x1,y1,z1,x2,y2,z2:currency;steps:integer):boolean;
Var
  i:integer;
  shift_D_bond:currency;
begin
  glPushMatrix();
  glBegin(GL_LINES);

  shift_D_bond:= 0.07;

   for i:=0 to steps -1 do // kreskowana
     begin
       glVertex3f(x1+((abs(x1-x2)/steps)*i)+shift_D_bond,y1+((abs(y1-y2)/steps)*i),z1+((abs(z1-z2)/steps)*i));
       glVertex3f(x1+((abs(x1-x2)/steps)*(i+0.5))+shift_D_bond,y1+(abs(y1-y2)/steps)*(i+0.5),z1+(abs(z1-z2)/steps)*(i+0.5));
     end;

  glEnd();
  glPopMatrix();
end;

Function  IsOpenGLonMaschine():boolean;
begin
  if FileExists(ExtractFilePath(Application.ExeName) +'\glut32.dll') then
    begin
      Showmessage(com58);
      if MessageDlg(com22, com149, mtConfirmation,[mbYes, mbNo],0) = mrYes then
        begin
          OpenDefaultBrowser(GLUT_Url);
        end;
      Result:=True;
    end else begin Result:=False; end;
end;

Procedure GetOGL_BMP(c:TOpenGLControl; savedir:string);
var
  data,rdata: pbyte;
  w,h,s: integer;
  bitMap: TBitmap;
  BM:TBitmap;
  dest,src:trect;
   x, y: Integer;
   r,g,b,current:Tcolor;
begin

  glFinish;
  glPixelStorei(GL_PACK_ALIGNMENT, 4);
  glPixelStorei(GL_PACK_ROW_LENGTH, 0);
  glPixelStorei(GL_PACK_SKIP_ROWS, 0);
  glPixelStorei(GL_PACK_SKIP_PIXELS, 0);


  w := c.Width;
  h := c.Height;
  s := w*h*4;
  bitMap := TBitmap.Create;
 try

    bitMap.SetSize(w,h);
    bitMap.PixelFormat:=pf32bit;
    getMem(data,s);


    try

      glReadPixels(0, 0, w, h, GL_RGBA, GL_UNSIGNED_BYTE, data);

      rdata := bitMap.RawImage.Data;
      Move(data^,rdata^,bitMap.RawImage.DataSize);

  bm:=TBitmap.Create;
  bm.PixelFormat:=pf24bit;
  bm.SetSize(w, h);
  bm.Canvas.Draw(0, 0, bitmap);


// ROTATE BITMAP

       dest:=bounds(0, 0, w, h);

       src:=rect(0, h-1, w-1, 0); // Vertical flip

       //  src:=rect(w-1, h-1, 0, 0); // Both flip
       // src:=rect(w-1, 0, 0, h-1); // Horizontal flip

       Bitmap.Canvas.CopyRect(dest, bm.Canvas, src);

// Convert colors zamiana
//Copy and remap the pixels from RGB Array to the Bitmap Scanlines

    for y:=0 to bitmap.Height-1 do begin
       for x:=0 to bitmap.Width-1 do begin

          current:= bitmap.Canvas.Pixels[x,y];

          bitmap.Canvas.Pixels[x,y]:= RGBToColor(Blue(current), Green(current), Red(current));

       end;
     end;

    finally

      bitMap.SaveToFile(UTF8encode(savedir));

      freemem(data);
    end;
  except
    bitMap.free;
  end;
end;


end.


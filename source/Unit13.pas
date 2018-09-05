(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit13;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  EditBtn, ExtCtrls, Grids, StdCtrls, Buttons, Menus, PairSplitter,
  Biblioteka_Grow_4;

type

  { TForm12 }

  TForm12 = class(TForm)
    FileNameEdit1: TFileNameEdit;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PairSplitter1: TPairSplitter;
    PairSplitterSide1: TPairSplitterSide;
    PairSplitterSide2: TPairSplitterSide;
    Panel1: TPanel;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    StaticText1: TStaticText;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure calculate_matrix();
    Procedure show_hide(visib:boolean;atom:string);
    procedure StringGrid1HeaderClick(Sender: TObject; IsColumn: Boolean;
      Index: Integer);


  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form12: TForm12; 
  matrix_count:integer=0;

implementation

uses
  Unit1,Unit8,Unit10,Unit12,unit2,Unit22;
{ TForm12 }

Procedure Tform12.show_hide(visib:boolean;atom:string);
var
 i:integer;
 n:string;
begin
  for i:=1 to  stringgrid1.RowCount-1 do
   begin
    n:= stringgrid1.Cells[0,i];
    if Pos(atom,Copy(n,pos('(',n)+1,pos(')',n)-pos('(',n))) > 0 then // copy(stringgrid1.Cells[0,i],pos('(',stringgrid1.Cells[0,i])+1,length(atom)) = atom
     begin
        if visib = True then
          begin
            stringgrid1.RowHeights[i]:= stringgrid1.DefaultRowHeight;  //show row
            //stringgrid1.ColWidths[i]:= stringgrid1.DefaultColWidth; // show col
          end
           else
          begin
             stringgrid1.RowHeights[i]:= 0;  // hide row
            //stringgrid1.ColWidths[i]:= 0; // hide col
          end;
     end;
   end;
end;

procedure TForm12.StringGrid1HeaderClick(Sender: TObject; IsColumn: Boolean;
  Index: Integer);
begin
if (index <= matrix_count) and (index > 0) then
begin
  if (isColumn = False) then
    begin
     if copy(StringGrid1.Cells[0,index],0,2) = 'A_' then
      begin
        StringGrid1.Cells[0,index]:= copy(StringGrid1.Cells[0,index],3,length(StringGrid1.Cells[0,index]));
      end
       else begin StringGrid1.Cells[0,index]:='A_'+StringGrid1.Cells[0,index]; end;
    end
     else
    begin
      if copy(StringGrid1.Cells[index,0],0,2) = 'A_' then
      begin
        StringGrid1.Cells[index,0]:= copy(StringGrid1.Cells[index,0],3,length(StringGrid1.Cells[index,0]));
      end
       else begin StringGrid1.Cells[index,0]:='A_'+StringGrid1.Cells[index,0]; end;
    end;
end;
end;

procedure Tform12.calculate_matrix();
var
  col,row:integer;
  x1,x2,y1,y2,z1,z2:currency;
  wiersz,kolumna:string;
begin

for col:=1 to Stringgrid1.ColCount-2 do
 begin
   for row:=1 to stringgrid1.RowCount-2 do
   begin
     // wiersz x,y,z
       wiersz:= Stringgrid1.Cells[0,row];
       wiersz:= copy(wiersz,pos('[',wiersz)+1,pos(']',wiersz)-1-pos('[',wiersz));

       x1:= strtocurr(copy(wiersz,0,pos(';',wiersz)-1));
       wiersz:= copy(wiersz,pos(';',wiersz)+1,length(wiersz));

       y1:= strtocurr(copy(wiersz,0,pos(';',wiersz)-1));
       wiersz:= copy(wiersz,pos(';',wiersz)+1,length(wiersz));

       z1:= strtocurr(copy(wiersz,pos(';',wiersz)+1,length(wiersz)));


    // kolumna x,y,z
       kolumna:= stringgrid1.Cells[col,0];
       Kolumna:= copy(Kolumna,pos('[',Kolumna)+1,pos(']',Kolumna)-1-pos('[',Kolumna));

       x2:= strtocurr(copy(Kolumna,0,pos(';',Kolumna)-1));
       Kolumna:= copy(Kolumna,pos(';',Kolumna)+1,length(Kolumna));

       y2:= strtocurr(copy(Kolumna,0,pos(';',Kolumna)-1));
       Kolumna:= copy(Kolumna,pos(';',Kolumna)+1,length(Kolumna));

       z2:= strtocurr(copy(Kolumna,pos(';',Kolumna)+1,length(Kolumna)));

     // dlugosc wektora dla kazdego porowania

       Stringgrid1.Cells[col,row]:= currtostr(Form7.dlugosc_wektora(x1,y1,z1,x2,y2,z2,0));

   end;
 end;
end;

procedure TForm12.SpeedButton1Click(Sender: TObject);
var
  plik:TstringList;
  x,row,blad,dl:integer;
  new,pierwszy:boolean;
  model_name,nazwa:string;
begin
  screen.Cursor:= crHourglass;
  Console.AddCommunicate(Com91+DateToStr(now),true);

   // przygotowanie stringgrida
   stringgrid1.ColCount:=2;
   stringgrid1.RowCount:=2;
   stringgrid1.clean;

   // zaladowanie pliku i utwrzeenie list danych
   new:=False;
   blad:=0;
   dl:=length(ExtractFileName(FileNameedit1.FileName))-length(ExtractFileExt(FileNameedit1.FileName));
   if (ExtractFileExt(FileNameedit1.FileName) = '.pdb') or (ExtractFileExt(FileNameedit1.FileName) = '.ent') then
        begin
   if FileExists(UTF8Decode(FileNameedit1.FileName)) then
        begin
          plik:= TstringList.Create;
          plik.LoadFromFile(UTF8Decode(FilenameEdit1.FileName));

          Stringgrid1.Cells[0,0]:='PHM '+ExtractFileName(FileNameedit1.FileName);  // nazwa pliku w 0,0


          for x:=1 to plik.Count-1 do
            begin
              If copy(plik[x],1,5) = 'MODEL' then
                begin
                  model_name:= copy(plik[x],1,length(plik[x]));
                end else begin model_name:='NoName' end;

              If (copy(plik[x],1,6) = 'HETATM') then
                begin


               // genrowanie nazwy
                nazwa:=inttostr(x)+'_'+model_name+'('+Trim(copy(plik[x],13,4))+')' // nazwa atomu
                       +'['+Trim(copy(plik[x],31,8))+';' //x
                       +Trim(copy(plik[x],39,8))+';' //y
                       +Trim(copy(plik[x],47,8))+']'; //z

                  Stringgrid1.Cells[0,Stringgrid1.RowCount-1]:= nazwa;
                  Stringgrid1.Cells[stringgrid1.ColCount-1,0]:= nazwa;

                  Stringgrid1.RowCount:=stringgrid1.RowCount+1;
                  stringgrid1.ColCount:=stringgrid1.ColCount+1;

                nazwa:='';
                end;
            end;

           calculate_matrix(); // calculate matrix function
           plik.Free;

        end else begin Console.AddCommunicate(com12+' - '+com7,true); end;
        end else begin Console.AddCommunicate(com18,true); end;

matrix_count:= Stringgrid1.RowCount-2;

Console.AddCommunicate(Com90,true);
Screen.Cursor := crDefault;
end;

procedure TForm12.MenuItem1Click(Sender: TObject);
begin
  Mainform.SaveDialog1.FileName:= ExtractFileName(FileNameedit1.FileName) + '.xml';
  Mainform.Savedialog1.Filter:= 'XML (*.xml)|*.xml';
  if Mainform.SaveDialog1.Execute then
   begin
     if Mainform.Savedialog1.FileName > '' then
      begin
       If Copy(Mainform.Savedialog1.FileName,Pos('.',Mainform.Savedialog1.FileName),Length(Mainform.Savedialog1.FileName)-Pos('.',Mainform.Savedialog1.FileName)+1) <> '.xml' Then Mainform.Savedialog1.FileName := Mainform.Savedialog1.FileName + '.xml';
       try stringgrid1.SaveToFile(UTF8decode(Mainform.Savedialog1.FileName));
       except
         Console.AddCommunicate(com7,true);
       end;
      end;
   end;
end;

procedure TForm12.MenuItem20Click(Sender: TObject);
begin
  show_hide(true,'CL');
  show_hide(true,'Cl');
end;

procedure TForm12.MenuItem21Click(Sender: TObject);
begin
  show_hide(false,'CL');
  show_hide(false,'Cl');
end;

procedure TForm12.MenuItem11Click(Sender: TObject);
begin
  show_hide(false,'H');
  show_hide(false,'h');
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
   FileNameEdit1.InitialDir:= settings.DirectoryEdit1.Text;
end;

procedure TForm12.MenuItem12Click(Sender: TObject);
begin
  show_hide(false,'O');
  show_hide(false,'o');
end;

procedure TForm12.MenuItem13Click(Sender: TObject);
begin
  show_hide(false,'S');
  show_hide(false,'s');
end;

procedure TForm12.MenuItem14Click(Sender: TObject);
begin
  show_hide(true,'C');
  show_hide(true,'c');
end;

procedure TForm12.MenuItem15Click(Sender: TObject);
begin
  show_hide(true,'S');
  show_hide(true,'s');
end;

procedure TForm12.MenuItem16Click(Sender: TObject);
begin
  show_hide(true,'O');
  show_hide(true,'o');
end;

procedure TForm12.MenuItem17Click(Sender: TObject);
begin
  show_hide(false,'C');
  show_hide(false,'c');
end;

procedure TForm12.MenuItem18Click(Sender: TObject);
begin
  show_hide(true,'N');
  show_hide(true,'n');
end;

procedure TForm12.MenuItem19Click(Sender: TObject);
begin
  show_hide(false,'N');
  show_hide(false,'n');
end;

procedure TForm12.MenuItem2Click(Sender: TObject);
begin
{try
  nowy_grid(StringGrid1.Cells[0,0],true);



 if Mainform.PageControl.PageCount > 0 then  // delete form z maina
    begin
      mainform.PageControl.ActivePage.Free;
    end;

except
  Console.AddCommunicate(com7+'[PhMA-02PDB]');
end;   }
end;

procedure TForm12.MenuItem5Click(Sender: TObject);
var
  row,stara_ilosc_wierszy,po_kolei:integer;
  wiersz:string;
begin
Screen.Cursor := crHourglass;

 AddRecordToPtojectTable('1','1',StringGrid1.Cells[0,0],
        'PMA',StringGrid1.Cells[0,0],'','','');

 // utworz nowa tabele
 {nowy_grid(StringGrid1.Cells[0,0],true);

Try

 for row:=1 to stringgrid1.RowCount-2 do  // dodaj tylko te co sa widoczne
   begin
    if Stringgrid1.RowHeights[row] > 1 then
     begin
      TstringGrid(activeGrid).RowCount:= TstringGrid(activeGrid).RowCount + 1; // dojad rekord ktor bedzie pisywany

      { wiersz:= Stringgrid1.Cells[0,row];
       Mainform.StringGrid.Cells[NrColAtomId,TstringGrid(activeGrid).RowCount - 1]:= copy(wiersz,0,pos('_',wiersz)-1); // numer rekordu jako unikalna nazwa atomu w PDB
       }

   // wiersze x,y,z
       wiersz:= Stringgrid1.Cells[0,row];
       wiersz:= copy(wiersz,pos('[',wiersz)+1,pos(']',wiersz)-1-pos('[',wiersz));

       TstringGrid(activeGrid).Cells[NrColx,TstringGrid(activeGrid).RowCount - 1] := copy(wiersz,0,pos(';',wiersz)-1);   // x1
       wiersz:= copy(wiersz,pos(';',wiersz)+1,length(wiersz));

       TstringGrid(activeGrid).Cells[NrColY,TstringGrid(activeGrid).RowCount - 1]:= copy(wiersz,0,pos(';',wiersz)-1);   //y1
       wiersz:= copy(wiersz,pos(';',wiersz)+1,length(wiersz));

       TstringGrid(activeGrid).Cells[NrColz,TstringGrid(activeGrid).RowCount - 1]:= copy(wiersz,pos(';',wiersz)+1,length(wiersz));  //z1

   // kolumna z rodzajem atomu

       wiersz:= Stringgrid1.Cells[0,row];
       TstringGrid(activeGrid).Cells[NrColAtomName,TstringGrid(activeGrid).RowCount - 1]:= copy(wiersz,pos('(',wiersz)+1,pos(')',wiersz)-1-pos('(',wiersz));
       TstringGrid(activeGrid).Cells[NrColElementSymbol,TstringGrid(activeGrid).RowCount - 1]:= copy(wiersz,pos('(',wiersz)+1,pos(')',wiersz)-1-pos('(',wiersz));

   end;
   end;

except
   Console.AddCommunicate(com7+'[PhMA-01]');
   exit;
end;

  Screen.Cursor := crDefault;
 end;

procedure TForm12.MenuItem6Click(Sender: TObject);
begin
     try
       begin
           Screen.Cursor := crHourglass;
           Stringgrid1.SaveToFile('grid.temp');
           nowy_Grid('PhM_'+ExtractFileName(filenameedit1.FileName),True); // nie laduje z tymczasowego
           TStringgrid(activeGrid).ColCount:=stringgrid1.ColCount+1;
           TStringgrid(activeGrid).RowCount:=stringgrid1.RowCount+1;
           TStringgrid(activeGrid).LoadFromFile('grid.temp');
           Screen.Cursor := crDefault;
       end
         except
           Console.AddCommunicate(com13);
           exit;
         end;     }
end;

procedure TForm12.MenuItem8Click(Sender: TObject);
begin

end;

procedure TForm12.MenuItem9Click(Sender: TObject);
begin
  show_hide(true,'H');
  show_hide(true,'h');
end;

procedure TForm12.Panel1Click(Sender: TObject);
begin

end;

procedure TForm12.Panel2Click(Sender: TObject);
begin

end;

procedure TForm12.SpeedButton10Click(Sender: TObject);
begin

end;

procedure TForm12.SpeedButton3Click(Sender: TObject);
var
  row:integer;
begin
  for row:=1 to stringgrid1.RowCount-2 do
   begin
      if (strtoint(Stringgrid1.cells[stringgrid1.ColCount-1,row]) >= strtoint(labelededit2.Text) )
        and (strtoint(Stringgrid1.cells[stringgrid1.ColCount-1,row]) <= strtoint(labelededit3.Text))  then
       begin
         stringgrid1.RowHeights[row]:= stringgrid1.DefaultRowHeight;
        //  stringgrid1.ColWidths[row]:= stringgrid1.DefaultColWidth;
       end else
         begin
           stringgrid1.RowHeights[row]:= 0;
         // stringgrid1.ColWidths[row]:= 0;
         end;
   end;

end;

procedure TForm12.SpeedButton4Click(Sender: TObject);
var
 col,row:integer;
 dystans_gl,dystans_gl_max,dystans_sasiada:currency;
 ilosc:integer ;
begin

dystans_gl:=0;

Stringgrid1.cells[matrix_count+1,0]:= com54+'<'+LabeledEdit1.text
                                              +';'+LabeledEdit4.text+'>';

  for row:=1 to matrix_count do
   begin

    dystans_gl:= strtocurrDef(LabeledEdit1.text,0);
    dystans_gl_max:= strtocurrDef(LabeledEdit4.text,0);

    dystans_sasiada:=0;
    ilosc:=0;

     for col:=1 to matrix_count do
       begin
         dystans_sasiada:= strtocurr(Stringgrid1.cells[col,row]);
         if (dystans_sasiada > dystans_gl) and (dystans_sasiada <> 0) and (dystans_sasiada < dystans_gl_max) then
           begin
              inc(ilosc);      begin
           end;
      end;
end;

  Stringgrid1.cells[matrix_count+1,row]:=inttostr(ilosc);

   end;
 labelededit2.Text:= currtostr(MinMax(Stringgrid1.Cols[matrix_count+1],false)); //min
 labelededit3.Text:= currtostr(MinMax(Stringgrid1.Cols[matrix_count+1],true)); //max
end;

procedure TForm12.SpeedButton5Click(Sender: TObject);
begin
  popupmenu1.PopUp();
end;

procedure TForm12.SpeedButton6Click(Sender: TObject);
var
  i:integer;
  cols,rows:Tstringlist;
  x1,x2,y1,y2,z1,z2,wiersz,kolumna:string;
begin
  Screen.Cursor := crHourglass;
  Form9.GroupBox3.Enabled:=false;
  Form9.GroupBox4.Enabled:=false;

  cols:= Tstringlist.Create;
  rows:= Tstringlist.Create;

  for i:=1 to matrix_count do
   begin
    if (copy(StringGrid1.Cells[0,i],0,2) = 'A_') then
      begin
         cols.Add(StringGrid1.Cells[0,i]);
      end;

    if (copy(StringGrid1.Cells[i,0],0,2) = 'A_') then
      begin
        rows.Add(StringGrid1.Cells[i,0]);
      end;
   end;

   if (cols.Count = 3) and (rows.Count = 3) then
    begin
      for i:=0 to 2 do
       begin
         // wiersz x,y,z
            wiersz:= rows[i];
            wiersz:= copy(wiersz,pos('[',wiersz)+1,pos(']',wiersz)-1-pos('[',wiersz));

            x1:= copy(wiersz,0,pos(';',wiersz)-1);
            wiersz:= copy(wiersz,pos(';',wiersz)+1,length(wiersz));

            y1:= copy(wiersz,0,pos(';',wiersz)-1);
            wiersz:= copy(wiersz,pos(';',wiersz)+1,length(wiersz));

            z1:= copy(wiersz,pos(';',wiersz)+1,length(wiersz));


    // kolumna x,y,z
            kolumna:= cols[i];
            Kolumna:= copy(Kolumna,pos('[',Kolumna)+1,pos(']',Kolumna)-1-pos('[',Kolumna));

            x2:= copy(Kolumna,0,pos(';',Kolumna)-1);
            Kolumna:= copy(Kolumna,pos(';',Kolumna)+1,length(Kolumna));

            y2:= copy(Kolumna,0,pos(';',Kolumna)-1);
            Kolumna:= copy(Kolumna,pos(';',Kolumna)+1,length(Kolumna));

            z2:= copy(Kolumna,pos(';',Kolumna)+1,length(Kolumna));

    if i = 0 then
             begin
               Form9.labelededit1.Text := x1;
               Form9.labelededit2.Text := y1;
               Form9.labelededit3.Text := z1;

               Form9.labelededit10.Text := x2;
               Form9.labelededit11.Text := y2;
               Form9.labelededit12.Text := z2;
             end;

    if i = 1 then
             begin
             Form9.labelededit4.Text := x1;
             Form9.labelededit5.Text := y1;
             Form9.labelededit6.Text := z1;

             Form9.labelededit13.Text := x2;
             Form9.labelededit14.Text := y2;
             Form9.labelededit15.Text := z2;
             end;

    if i=2 then
            begin
             Form9.labelededit7.Text := x1;
             Form9.labelededit8.Text := y1;
             Form9.labelededit9.Text := z1;

             Form9.labelededit16.Text := x2;
             Form9.labelededit17.Text := y2;
             Form9.labelededit18.Text := z2;
           end;
       end;

      Form9.Show;
    end else begin Console.AddCommunicate(com55,true) end;

  Screen.Cursor := crDefault;
end;

procedure TForm12.SpeedButton7Click(Sender: TObject);
begin
  PopupMenu2.PopUp();
end;

procedure TForm12.SpeedButton8Click(Sender: TObject);
Var
 i:integer;
begin
  for i:=1 to  stringgrid1.RowCount-1 do
   begin
      stringgrid1.RowHeights[i]:= stringgrid1.DefaultRowHeight;  //show all rows
   end;
end;

procedure TForm12.StringGrid1DblClick(Sender: TObject);
begin

end;

procedure TForm12.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
 i:integer;

begin
//TStringGrid(sender).Canvas.TextStyle.Alignment:=taCenter; // to do
  Tstringgrid(sender).SelectedColor:=$00DE8800;

  for i:=1 to matrix_count do
   begin
    if (copy(StringGrid1.Cells[0,i],0,2) = 'A_') then
    begin
       StringGrid1.Canvas.Brush.Color := clGradientActiveCaption;
       StringGrid1.Canvas.FillRect(stringgrid1.CellRect(0,i));
    end;

    if (copy(StringGrid1.Cells[i,0],0,2) = 'A_') then
    begin
       StringGrid1.Canvas.Brush.Color := clGradientActiveCaption;
       StringGrid1.Canvas.FillRect(stringgrid1.CellRect(i,0));
    end;

end;
end;


initialization
  {$I unit13.lrs}

end.


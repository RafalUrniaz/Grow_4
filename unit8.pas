(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Menus, grids, Math, Biblioteka_Grow_4;

type

  { TForm7 }

  TForm7 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    LabeledEdit15: TLabeledEdit;
    LabeledEdit16: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    ListBox1: TListBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox11Change(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Change(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox13Change(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox14Change(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
    procedure CheckBox7Change(Sender: TObject);
    procedure CheckBox8Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GroupBox2Click(Sender: TObject);
    procedure GroupBox4Click(Sender: TObject);
    procedure GroupBox5Click(Sender: TObject);
    procedure LabeledEdit10KeyPress(Sender: TObject; var Key: char);
    procedure LabeledEdit11KeyPress(Sender: TObject; var Key: char);
    procedure LabeledEdit12KeyPress(Sender: TObject; var Key: char);
    procedure LabeledEdit13KeyPress(Sender: TObject; var Key: char);
    procedure LabeledEdit14KeyPress(Sender: TObject; var Key: char);
    procedure LabeledEdit15KeyPress(Sender: TObject; var Key: char);
    procedure LabeledEdit16Change(Sender: TObject);
    procedure LabeledEdit8KeyPress(Sender: TObject; var Key: char);
    procedure LabeledEdit8KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit9KeyPress(Sender: TObject; var Key: char);
    procedure ListBox1DblClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure clear_list(lista:Tstrings);
    Function dlugosc_wektora(x1,y1,z1,x2,y2,z2,ranga:currency):Currency;
    Function RMSDRCACB(x1,y1,z1,x2,y2,z2:Tstrings;numer_chir:integer;ranga:currency):string ;
    Function RMSDR(x1,y1,z1,x2,y2,z2:Tstrings;numer_chir:integer;ranga:currency):currency;
    Function MAA(x1,y1,z1,x2,y2,z2:Tstrings;numer_chir:integer;ranga:currency):string;
    Function SVCA(x1,y1,z1,x2,y2,z2:Tstrings):currency;
    Function SVCA_all():currency;
    Function objetosc_max(x,y,z:Tstrings):currency;
    Function xyz_r(x1,y1,z1,x2,y2,z2:Tstrings;nr_chir:integer):string;
    Function znak_liczby(liczba:string):string;
    Function cz_wspolna_odcinka(x1,x2:Tstrings):currency;
    Function SVIA(x1,y1,z1,x2,y2,z2:Tstrings):currency;
    Procedure symbole_na_promienie(atomy:Tstrings);
    Function SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2:Tstrings;wspolczynnik:currency):currency;
    Function ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2:Tstrings;wspolczynnik:currency):currency;
    Function Kat_pomiedzy_wektorami(x1,y1,x2,y2:currency):currency;
    Function Max_kat_pomiedzy_wektorami(x1,y1,x2,y2:Tstrings):currency;

  private
    { private declarations }

  public
    { public declarations }
  end; 

var
  Form7: TForm7; 

implementation

uses
 Unit1,Unit9,unit22;

{ TForm7 }

Function TForm7.Max_kat_pomiedzy_wektorami(x1,y1,x2,y2:Tstrings):currency;
Var
 i:integer;
 kat:currency=0;
begin
  for i:=0 to x1.Count-1 do
    begin
      if Kat_pomiedzy_wektorami(strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(x2[i]),strtocurr(y2[i])) > kat then
        begin
          kat:= Kat_pomiedzy_wektorami(strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(x2[i]),strtocurr(y2[i]));
        end;
    end;
    Result:=kat;
end;

Function TForm7.Kat_pomiedzy_wektorami(x1,y1,x2,y2:currency):currency;
Var
 dl1,dl2,licznik,mianownik,temp:currency;
begin
  dl1:= power(x1,2) + power(y1,2);
  dl2:= power(x2,2) + power(y2,2);

  licznik:=  (x1*x2) + (y1*y2);
  mianownik:= dl1*dl2;

  temp:= licznik/mianownik ;
//  temp:= temp * 180 ;
//  temp:= temp / Pi ;

  result:= temp  ;
end;


 Function TForm7.ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2:Tstrings;wspolczynnik:currency):currency; // analiza z objetosci gdy promien jest wiekszy od odleglosci
 Var
  i:integer;
  procent_zakwalfikowanych,roznica,objetosc,suma:currency;
 begin

 clear_list(x1);   // czyszczenie tylko currency
 clear_list(x2);
 clear_list(y1);
 clear_list(y2);
 clear_list(z1);
 clear_list(z2);
 clear_list(promienie_atomow);

 procent_zakwalfikowanych:=0;

 if wspolczynnik = 0 then   // gdy nie ma wspolczynnika jest standard 2
  begin wspolczynnik:=1; end;

 objetosc:=0;
 suma:=0;
 if (x1.Count = x1.Count) and (y1.Count = y2.Count) and (z1.Count = z2.Count) and (x1.Count=promienie_atomow.Count) then
  begin
   for i:=0 to x1.Count-1 do
    begin
      if dlugosc_wektora(strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(z1[i]),strtocurr(x2[i]),strtocurr(y2[i]),strtocurr(z2[i]),0) > wspolczynnik {* strtocurr(promienie_atomow[i])} then
       begin
         roznica:= dlugosc_wektora(strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(z1[i]),strtocurr(x2[i]),strtocurr(y2[i]),strtocurr(z2[i]),0) - (wspolczynnik {* strtocurr(promienie_atomow[i])});
         objetosc:= 1.3333 * Pi * Power(roznica,3); // objetosc kuli o promieniu z roznicy
         suma:= suma +  objetosc;
         procent_zakwalfikowanych:=procent_zakwalfikowanych + 1;
       end;
    end;
  end else begin Console.AddCommunicate(com16+'in SSVIA',true); end;

  procent_zakwalfikowanych:= (procent_zakwalfikowanych*100)/(x1.Count);
  zasobnik_programu:= currtostr(procent_zakwalfikowanych);

  Result:= suma;

 end;

 Function TForm7.SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2:Tstrings;wspolczynnik:currency):currency; // analiza objętosci kuli o promieniu z roznicy promienia i odleglosci
 Var
  i:integer;
  procent_zakwalfikowanych,roznica,objetosc,suma:currency;
 begin

 clear_list(x1);   // czyszczenie tylko currency
 clear_list(x2);
 clear_list(y1);
 clear_list(y2);
 clear_list(z1);
 clear_list(z2);
 clear_list(promienie_atomow);

 procent_zakwalfikowanych:=0;

if wspolczynnik = 0 then    // gdy nie ma wspolczynnika jest standard 2
  begin wspolczynnik:=1; end;

 objetosc:=0;
 suma:=0;
 if (x1.Count = x1.Count) and (y1.Count = y2.Count) and (z1.Count = z2.Count) and (x1.Count=promienie_atomow.Count) then
  begin
   for i:=0 to x1.Count-1 do
    begin
      if dlugosc_wektora(strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(z1[i]),strtocurr(x2[i]),strtocurr(y2[i]),strtocurr(z2[i]),0) < wspolczynnik {* strtocurr(promienie_atomow[i])} then
       begin
         roznica:= (wspolczynnik {* strtocurr(promienie_atomow[i]}) - dlugosc_wektora(strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(z1[i]),strtocurr(x2[i]),strtocurr(y2[i]),strtocurr(z2[i]),0);
         objetosc:= 1.3333 * Pi * Power(roznica,3); // objetosc kuli o promieniu z roznicy
         suma:= suma +  objetosc;
         procent_zakwalfikowanych:=procent_zakwalfikowanych + 1;
       end;
    end;
  end else begin Console.AddCommunicate(com16+'in SSVIA',true); end;

  procent_zakwalfikowanych:= (procent_zakwalfikowanych*100)/(x1.Count);
  zasobnik_programu:=currtostr(procent_zakwalfikowanych);

  Result:= suma;

 end;

Procedure TForm7.symbole_na_promienie(atomy:Tstrings);
var
 i,a:integer;
 atom:string;
begin
  for i:=0 to atomy.Count-1 do
   begin
     atom:=Trim(UpperCase(atomy[i]));
     if atom = 'C' then    // WEGIEL
       begin
         atomy[i]:='1.7' ; // dlugosc promienia atomu
       end;
     if atom = 'H' then   // WODOR
       begin
         atomy[i]:='1.2' ; // dlugosc promienia atomu
       end;
     if atom = 'O' then // TLEN
       begin
         atomy[i]:='1.52' ; // dlugosc promienia atomu
       end;
     if atom = 'N' then  // AZOT
       begin
         atomy[i]:='1.55' ; // dlugosc promienia atomu
       end;
     if atom = 'P' then  // FOSFOR
       begin
         atomy[i]:='1.8' ; // dlugosc promienia atomu
       end;
     if atom = 'CL' then  // CHLOR
       begin
         atomy[i]:='1.75' ; // dlugosc promienia atomu
       end;
     if atom = 'F' then  // FLUOR
       begin
         atomy[i]:='1.47' ; // dlugosc promienia atomu
       end;
     if atom = 'S' then  // SIARKA
       begin
         atomy[i]:='1.8' ; // dlugosc promienia atomu
       end;
     if atom = 'CU' then  // MIEDZ
       begin
         atomy[i]:='1.8' ; // dlugosc promienia atomu
       end;
   end;
  clear_list(atomy);
 {for i:=0 to atomy.Count-1 do
    begin
       if Pos('.',atomy[i])= 0 then
        begin
          Console.AddCommunicate(atomy[i]);
          atom:= atomy[i];
          atomy[i]:= inputBox('Value not found !','Radius for value '+atom+' ,was not found. Enter radius (in angstrom) manualy :','');
          if Pos('.',atomy[i])= 0 then
           begin
           Console.AddCommunicate('Invalid value use "."(dot) as a decimal separator !');
           atomy[i]:= inputBox('Value not found !','Radius for value '+atom+' ,was not found. Enter radius (in angstrom) manualy :','');
           end
            else
           begin
              // pętal zeby zmienialo wsyztskie pozostale
           end;
        end;
    end; }
end;

 Function TForm7.SVIA(x1,y1,z1,x2,y2,z2:Tstrings):currency;
 Var
   a,b,h:currency;
 begin
   a:= cz_wspolna_odcinka(x1,x2);
   b:= cz_wspolna_odcinka(y1,y2);
   h:= cz_wspolna_odcinka(z1,z2);

   Result:= a*b*h ;

 end;

Function TForm7.cz_wspolna_odcinka(x1,x2:Tstrings):currency;
var
  min1,max1,min2,max2,a,b,AB:currency;

begin

clear_list(x1);   // czyszczenie tylko currency
clear_list(x2);

min1:= MinMax(x1,False);       // oblicza częsc wspolna dla wspolrzednych np. dla x z
max1:= MinMax(x1,True);        // jednj molek i z drugiej i patrzy jaki odcinek jest wspolny dla obu osi
min2:= MinMax(x2,False);
max2:= MinMax(x2,True);

// szukanie minimum lokalnego
if min1 = min2 then
 begin
   a:= min1;  //jesli wartosci są równa zwróc jedna z nich
 end
   else  if min1 > min2 then
 begin
   a:= min1;  // jesli nim1 jest wiesze on min2 wzróc wartosc WIEKSZA
 end
  else if min1 < min2 then
 begin
   a:= min2;  // jesli min1 jest mniejsza od min2 wzroc WIEKSZA
 end else begin a:=0; end; // jesli nie posiadaja czesci wspolnej zwroc 0

 Form8.memo1.Lines.Add('Mimimum lokalne '+ currtostr(a));

// szukanie maximum lokalnego
if max1 = max2 then
 begin
   b:= max1;  //jesli wartosci są równa zwróc jedna z nich
 end
   else  if max1 > max2 then
 begin
   b:= max1;  // jesli nim1 jest wiesze on min2 wzróc wartosc WIEKSZA
 end
  else if max1 < max2 then
 begin
   b:= max1;  // jesli min1 jest mniejsza od min2 wzroc WIEKSZA
 end else begin b:=0; end; // jesli nie posiadaja czesci wspolnej zwroc 0

 Form8.memo1.Lines.Add('Maximum lokalne '+ currtostr(b));
 AB:= a-b ;
 AB:= Power(AB,2);
 AB:= Sqrt(AB);
 Form8.memo1.Lines.Add('|AB|= '+ currtostr(AB));

 Result:=AB;

end;

// funkcja zwaraca znak liczby ujemny dodatni albo 0
Function Tform7.znak_liczby(liczba:string):string;
begin
  if strtocurr(liczba) <= 0 then   // sparwdzenie znaku
   begin
      if strtocurr(liczba) = 0 then
        begin
          Result:= '0' ;
        end
         else
        begin
          Result:= '-' ;
        end;
   end else
      begin Result:= '+' end;
end;

// SVIA
Function TForm7.xyz_r(x1,y1,z1,x2,y2,z2:Tstrings;nr_chir:integer):string;
Var
  wektor:string;
begin
clear_list(x1);   // czyszczenie tylko currency
clear_list(x2);
clear_list(y1);
clear_list(y2);
clear_list(z1);
clear_list(z2);

  wektor:= znak_liczby(x2[nr_chir]);
  wektor:= wektor + znak_liczby(y2[nr_chir]);
  wektor:= wektor + znak_liczby(z2[nr_chir]);

  wektor:= wektor +'  '+ currtostr(dlugosc_wektora(strtocurr(x1[nr_chir]),strtocurr(y1[nr_chir]),strtocurr(z1[nr_chir]),strtocurr(x2[nr_chir]),strtocurr(y2[nr_chir]),strtocurr(z2[nr_chir]),0));
  Result:=wektor;
end;
// SVCA
Function TForm7.SVCA(x1,y1,z1,x2,y2,z2:Tstrings):currency;
Var
  obj1,obj2:currency;
begin
   // objetosc 1
    obj1 := objetosc_max(x1,y1,z1);
    form8.memo1.Lines.Add('Objestosc '+combobox2.Text+': '+currtostr(obj1));

   // objetosc 2
    obj2 := objetosc_max(x2,y2,z2) ;
    form8.memo1.Lines.Add('Objestosc '+combobox3.text+': '+currtostr(obj2));

   // różnica objetosci
    form8.memo1.Lines.Add('Roznica w objetosci : '+currtostr(obj1-obj2)) ;

   // objetosci w zależnosci od grypy i rangi

  Result:=obj1-obj2;
end;

Function TForm7.SVCA_all():currency;
var
 i,a,tab1,tab2:integer;
 s,s2,ranga:string;
 lista_wegli,x1,x2,y1,y2,z1,z2:Tstrings;
 calosc:currency=0;
begin
 {
tab1:= combobox2.ItemIndex+1;
tab2:= combobox3.ItemIndex+1;

x1:= TstringList.Create;y1:= TstringList.Create;z1:= TstringList.Create;
x2:= TstringList.Create;y2:= TstringList.Create;z2:= TstringList.Create;

lista_wegli:=TstringList.Create;

for i:=1 to 4 do
    begin        // parametry w zaleznosci od numerow grup
      if  (i = 1) and (length(labelededit8.Text)>0) and (length(labelededit12.Text)>0) then
       begin
         s:=labelededit8.Text;
         ranga:= labelededit12.Text;
       end;
       if  (i = 2) and (length(labelededit9.Text)>0) and (length(labelededit13.Text)>0) then
       begin
         s:=labelededit9.Text;
         ranga:= labelededit13.Text;
       end;
       if  (i = 3) and (length(labelededit10.Text)>0) and (length(labelededit14.Text)>0) then
       begin
         s:=labelededit10.Text;
         ranga:= labelededit14.Text;
       end;
       if  (i = 4) and (length(labelededit11.Text)>0) and (length(labelededit15.Text)>0) then
       begin
         s:=labelededit11.Text;
         ranga:= labelededit15.Text;
       end;

      // wybiera potrzebne numery
      repeat
         If  (pos(';',s) = 0) and (length(s)>1) then
          begin
            lista_wegli.Add(s);
            s:='';
          end
            else
          begin
            lista_wegli.Add(Copy(s,0,pos(';',s)-1));
            s:= Copy(s,pos(';',s)+1,Length(s));
          end;
       until length(s) = 0;
       s2:='';
       // dodaje dane
    for a:=0 to lista_wegli.Count-1 do
      begin
       x1.Add(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cells[strtoint(labelededit1.text),strtoint(lista_wegli[a])]);
       y1.Add(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cells[strtoint(labelededit2.text),strtoint(lista_wegli[a])]);
       z1.Add(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cells[strtoint(labelededit3.text),strtoint(lista_wegli[a])]);
       x2.Add(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cells[strtoint(labelededit6.text),strtoint(lista_wegli[a])]);
       y2.Add(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cells[strtoint(labelededit4.text),strtoint(lista_wegli[a])]);
       z2.Add(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cells[strtoint(labelededit5.text),strtoint(lista_wegli[a])]);
       s2:= s2 + lista_wegli[a]+';';
      end;
        form8.memo1.Lines.Add(linia);
        form8.memo1.Lines.Add('Wynik dla grupy '+inttostr(i)+' Liczebnosc grupy:'+inttostr(lista_wegli.Count)+' Ranga: '+ranga);
        form8.memo1.Lines.Add('Pozycje : '+ s2);
        form8.memo1.Lines.Add(linia);
      if x1.count >= 3 then
        begin
          calosc:= calosc + SVCA(x1,y1,z1,x2,y2,z2);
        end else begin
           form8.memo1.Lines.Add('Wynik pominięto : licz.gr < 3');
        end;
        x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
        lista_wegli.Clear;
    end;
    form8.memo1.Lines.Add('Wynik calkowity z rangami :' + currtostr(calosc));
    lista_wegli.free;
    x1.free;x2.free;y1.free;y2.free;z1.free;z2.free;

Result:=0; }
end;

Function TForm7.objetosc_max(x,y,z:Tstrings):currency;
begin
   // objetosc z maksymalnych wartosci rozstepu
  Result :=  rozstep(x)  *  rozstep(y) * rozstep(z);
end;
//END SVCA->

// FUNKCJE RMSDR i Clear_List
procedure TForm7.clear_list(lista:Tstrings);
var
i:integer;
nowa_lista:TstringList;
begin
nowa_lista:= TstringList.Create;
  for i:=0 to lista.Count-1 do
   begin
   if (strtocurrDef(lista[i],-1)<>-1) or (strtocurrDef(lista[i],1)<>1) then
     begin
        nowa_lista.Add(lista[i]);
     end;
   end;
 lista.Clear;
 lista.AddStrings(nowa_lista);
 nowa_lista.Free;
end;

Function TForm7.dlugosc_wektora(x1,y1,z1,x2,y2,z2,ranga:currency):Currency; // zamienia wspolrzedne na dlugosc wektora
var
 xc,yc,zc,temp:currency;
begin
     xc:= x2 - x1;  // roznica wspolzednych
     xc:= Power(xc,2); //kwadrat wspolzednej

     yc:= y2 - y1;
     yc:= Power(yc,2);

     zc:= z2 - z1;
     zc:= Power(zc,2);

     temp:= xc+yc+zc;    // suma potegowanych
     temp:= sqrt(temp);  // pierwiastek z sumy, czyli odleglosc DLUGOSC WEKTORA

     if ranga > 0 then   // uwzglednienie rangi jesli jest wieksza od 0
       begin
         temp:= temp * ranga;
       end;

    if temp >= 0 then
     begin
      Result:=  temp;
     end else begin Result:= -1; end;

end;

Function TForm7.RMSDR(x1,y1,z1,x2,y2,z2:Tstrings;numer_chir:integer;ranga:currency):currency;  // numer_chir = 0 nie podaje przesunięcia, ranga = 0 liczy calkowity
var                                                                                      // wynik do rang => wynik bez dzielenia bez sqtr
  tresc_wyniku: string;
  iloscpom,i:integer;
  wynik_cal,temp,chiralny,wynik_cal_bezdz_bezsqtr,wynik_cal_bezsqtr:currency;
begin

wynik_cal:=0;
iloscpom:=0;

clear_list(x1);   // czyszczenie tylko currency
clear_list(x2);
clear_list(y1);
clear_list(y2);
clear_list(z1);
clear_list(z2);

if (x1.Count=x2.Count) and (y1.Count=y2.Count) and (z1.Count=z2.Count) then
  begin
    For i:=0 to x1.Count-1 do  // UWAGA ZACZYNA OD 0 A NIE OD 1    separator dziesietny "."
      begin

           temp:= dlugosc_wektora(strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(z1[i]),strtocurr(x2[i]),strtocurr(y2[i]),strtocurr(z2[i]),ranga); //odleglosc

           // RANGA DODANA W DLUGOSCI WEKTORA

           //temp:= Power(temp,2); // kwadrat odleglosci
           wynik_cal:=wynik_cal + temp;
	   iloscpom:=iloscpom + 1;

      end;

       if wynik_cal > 0 then
         begin
           wynik_cal := wynik_cal/iloscpom;  // sumę kwadratow odleglosci podzielic przez ilosc pomiarow
           //wynik_cal := sqrt(wynik_cal);  // pierwiastek 2 stopnia z sumy kwadratow odleglosci
         end;

end else Console.AddCommunicate(com16,true);

   Result:=wynik_cal ;

end;

Function TForm7.RMSDRCACB(x1,y1,z1,x2,y2,z2:Tstrings;numer_chir:integer;ranga:currency):string;
   // numer_chir = 0 nie podaje przesunięcia, ranga = 0 liczy calkowity
var
  tresc_wyniku: string;
  iloscpom,i:integer;
  wektorA,wektorB,wynik_cal,wynik_cal_bezdz,temp,wynik_cal_bezdz_bezsqtr,wynik_cal_bezsqtr:currency;
begin

wynik_cal:=0;
iloscpom:=0;

clear_list(x1);   // czyszczenie tylko currency
clear_list(x2);
clear_list(y1);
clear_list(y2);
clear_list(z1);
clear_list(z2);


if (x1.Count=x2.Count) and (y1.Count=y2.Count) and (z1.Count=z2.Count) then
  begin
    For i:=0 to x1.Count-1 do  // UWAGA ZACZYNA OD 0 A NIE OD 1    separator dziesietny "."
      begin
        if  i <> numer_chir then
        begin
           wektorA:= dlugosc_wektora(strtocurr(x1[numer_chir]),strtocurr(y1[numer_chir]),strtocurr(z1[numer_chir]),strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(z1[i]),0);  // wektor A
           wektorB:= dlugosc_wektora(strtocurr(x1[numer_chir]),strtocurr(y1[numer_chir]),strtocurr(z1[numer_chir]),strtocurr(x2[i]),strtocurr(y2[i]),strtocurr(z2[i]),0);  // wektor B
           temp:= wektorA - wektorB ; // roznica dlugosci wektorow
           temp:= temp * temp ; // kwadrat odleglosci
           wynik_cal:=wynik_cal + temp;
	   iloscpom:=iloscpom + 1;
         end;
      end;

     wynik_cal_bezdz := wynik_cal;

     if wynik_cal <> 0 then
      begin
       wynik_cal := wynik_cal/iloscpom;
      end;

     wynik_cal_bezsqtr := wynik_cal;
     wynik_cal := sqrt(wynik_cal);  			// pierwiastek po dzieleniu
     wynik_cal_bezdz_bezsqtr:= wynik_cal_bezdz;
     zasobnik_programu:= currtostr(wynik_cal_bezdz_bezsqtr);  // dodanie do zmienen tymczsowej globalnej
     wynik_cal_bezdz := sqrt(wynik_cal_bezdz);  // pierwiastek bez dzielenia
     tresc_wyniku:=('----------------------------'
                  +#13#10'[RMSD CA-CB z dzieleniem]: '+ currtostr(wynik_cal)
                  +#13#10'[RMSD CA-CB z dzieleniem bez sqtr]: '+ currtostr(wynik_cal_bezsqtr)
                  +#13#10'[RMSD CA-CB bez dzielenia]: '+ currtostr(wynik_cal_bezdz)
                  +#13#10'[RMSD CA-CB bez dzielenia bez sqrt]: '+ currtostr(wynik_cal_bezdz_bezsqtr)
                  +#13#10);
   end else begin Console.AddCommunicate(com16,true); end;

   Result:=tresc_wyniku;

end;

Function TForm7.MAA(x1,y1,z1,x2,y2,z2:Tstrings;numer_chir:integer;ranga:currency):string;
   // numer_chir = 0 nie podaje przesunięcia, ranga = 0 liczy calkowity
   // liczy sredni kat odchylenia Mean aberration angle
var
  tresc_wyniku: string;
  iloscpom,i,atom:integer;
  wektorA,wektorB,wektorC,wynik_cal_max,wynik_cal,wynik_cal_bezdz,temp,wynik_cal_bezdz_bezsqtr,wynik_cal_bezsqtr:currency;
begin

wynik_cal:=0;
iloscpom:=0;
wynik_cal_max:=0;

clear_list(x1);   // czyszczenie tylko currency
clear_list(x2);
clear_list(y1);
clear_list(y2);
clear_list(z1);
clear_list(z2);


if (x1.Count=x2.Count) and (y1.Count=y2.Count) and (z1.Count=z2.Count) then
  begin
    For i:=0 to x1.Count-1 do  // UWAGA ZACZYNA OD 0 A NIE OD 1    separator dziesietny "."
      begin
       if  i <> numer_chir then
        begin        // wykozystanie twierdenia cosinusów
           wektorA:= dlugosc_wektora(strtocurr(x1[numer_chir]),strtocurr(y1[numer_chir]),strtocurr(z1[numer_chir]),strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(z1[i]),0);  // wektor A
           wektorB:= dlugosc_wektora(strtocurr(x1[numer_chir]),strtocurr(y1[numer_chir]),strtocurr(z1[numer_chir]),strtocurr(x2[i]),strtocurr(y2[i]),strtocurr(z2[i]),0);  // wektor B
           wektorC:= dlugosc_wektora(strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(z1[i]),strtocurr(x2[i]),strtocurr(y2[i]),strtocurr(z2[i]),0);  // wektor C
           //
           temp:= (wektora * wektora + wektorc * wektorc - wektorb * wektorb) / (2 * wektora * wektorc);
           temp:= ArcCos(temp);
           temp:= temp * 180 ;
           temp:= temp / Pi ;
           //

           if temp > wynik_cal_max then    // wybiera największa wartosc
            begin
              wynik_cal_max:=temp;
              atom:=i;
            end;

           wynik_cal:=wynik_cal + temp;
	   iloscpom:=iloscpom + 1;
         end;
      end;

     wynik_cal_bezdz := wynik_cal;

     if wynik_cal <> 0 then
      begin
       wynik_cal := wynik_cal/iloscpom;
      end;

     wynik_cal_bezsqtr := wynik_cal;
     wynik_cal := sqrt(wynik_cal);  			// pierwiastek po dzieleniu
     wynik_cal_bezdz_bezsqtr:= wynik_cal_bezdz;
     zasobnik_programu:= currtostr(wynik_cal_bezdz_bezsqtr);  // dodanie do zmienen tymczsowej globalnej
     wynik_cal_bezdz := sqrt(wynik_cal_bezdz);  // pierwiastek bez dzielenia
     Form8.memo1.Lines.Add('----------------------------'
                  +#13#10'[MAA MAX 1]: '+ currtostr(Max_kat_pomiedzy_wektorami(x1,y1,x2,y2))
                  +#13#10'[MAA MAX 2]: '+ currtostr(wynik_cal_max)+' Atom: '+ inttostr(atom)
                  +#13#10'[MAA z dzieleniem]: '+ currtostr(wynik_cal)
                  +#13#10'[MAA z dzieleniem bez sqtr]: '+ currtostr(wynik_cal_bezsqtr)
                  +#13#10'[MAA bez dzielenia]: '+ currtostr(wynik_cal_bezdz)
                  +#13#10'[MAA bez dzielenia bez sqrt]: '+ currtostr(wynik_cal_bezdz_bezsqtr)
                  +#13#10);
   end else begin Console.AddCommunicate(com16,true); end;

   Result:=currtostr(wynik_cal_max);

end;

// -> END

procedure TForm7.ListBox1DblClick(Sender: TObject);
begin
  If labelededit1.Caption= '0' then
   begin labelededit1.Text:= inttostr(ListBox1.ItemIndex+1) end;
  If labelededit2.Caption= '0' then
   begin labelededit2.Text:= inttostr(ListBox1.ItemIndex+1) end;
  If labelededit3.Caption= '0' then
   begin labelededit3.Text:= inttostr(ListBox1.ItemIndex+1) end;
  If labelededit4.Caption= '0' then
   begin labelededit4.Text:= inttostr(ListBox1.ItemIndex+1) end;
  If labelededit5.Caption= '0' then
   begin labelededit5.Text:= inttostr(ListBox1.ItemIndex+1) end;
  If labelededit6.Caption= '0' then
   begin labelededit6.Text:= inttostr(ListBox1.ItemIndex+1) end;
  panel1.Hide;
end;

procedure TForm7.Panel1Click(Sender: TObject);
begin

end;

procedure TForm7.SpeedButton10Click(Sender: TObject);
begin
  groupbox4.Visible:=false;
end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
var
x,y:integer;
begin
{Listbox1.Clear;
y:= combobox2.ItemIndex+1;
 for x:=1 to Tstringgrid(Mainform.PageControl.Pages[y].Controls[0]).ColCount-1 do
   begin
     listbox1.Items.Add(inttostr(x)+'->'+Tstringgrid(Mainform.PageControl.Pages[y].Controls[0]).Cells[x,0]);
   end;
 panel1.Show;
 panel1.Top:= 65;   }
end;

procedure TForm7.SpeedButton1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Labelededit1.Caption:='0';
end;

procedure TForm7.SpeedButton2Click(Sender: TObject);
var
  promienie_atomow,x1,y1,z1,x2,y2,z2,lista_wegli,odleglosci:Tstrings;
  a,i,tab1,tab2:integer;
  s,ranga,s2:string;
  wspolczynnik,temp,temp2:currency;

begin
 {
  Screen.Cursor := crHourglass;

     tab1:= combobox2.ItemIndex+1;
     tab2:= combobox3.ItemIndex+1;

     x1:= TstringList.Create;y1:= TstringList.Create;z1:= TstringList.Create;
     x2:= TstringList.Create;y2:= TstringList.Create;z2:= TstringList.Create;

     form8.memo1.Lines.Add('Porównanie :'+combobox2.Text+' z '+combobox3.Text); //dodaj wynik
     form8.memo1.Lines.Add(linia); //dodaj wynik

if checkbox1.Checked = True then
begin
     x1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit1.text)]);
     y1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit2.text)]);
     z1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit3.text)]);
     x2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit6.text)]);
     y2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit4.text)]);
     z2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit5.text)]);
     Form8.memo1.Lines.Add(com25+' RMSD:' + currtostr(RMSDR(x1,y1,z1,x2,y2,z2,strtoint(labelededit7.Text),0))); //dodaj wynik
     //form8.memo1.Lines.Add(linia);
     x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
end;
if checkbox2.Checked = True then
 begin

   lista_wegli:=TstringList.Create;

for i:=1 to 4 do
   begin        // parametry w zaleznosci od numerow grup
    s:='';
      if  (i = 1) and (length(labelededit8.Text)>0) and (length(labelededit12.Text)>0) then
       begin
         s:=labelededit8.Text;
         ranga:= labelededit12.Text;
       end;
       if  (i = 2) and (length(labelededit9.Text)>0) and (length(labelededit13.Text)>0) then
       begin
         s:=labelededit9.Text;
         ranga:= labelededit13.Text;
       end;
       if  (i = 3) and (length(labelededit10.Text)>0) and (length(labelededit14.Text)>0) then
       begin
         s:=labelededit10.Text;
         ranga:= labelededit14.Text;
       end;
       if  (i = 4) and (length(labelededit11.Text)>0) and (length(labelededit15.Text)>0) then
       begin
         s:=labelededit11.Text;
         ranga:= labelededit15.Text;
       end;

// wybiera potrzebne numery

       repeat
         If  (pos(';',s) = 0) and (length(s)>1) then
          begin
            lista_wegli.Add(s);
            s:='';
          end
            else
          begin
            lista_wegli.Add(Copy(s,0,pos(';',s)-1));
            s:= Copy(s,pos(';',s)+1,Length(s));
          end;
       until length(s) = 0;
       s2:='';

// dodaje dane
    for a:=0 to lista_wegli.Count-1 do
      begin
       x1.Add(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cells[strtoint(labelededit1.text),strtoint(lista_wegli[a])]);
       y1.Add(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cells[strtoint(labelededit2.text),strtoint(lista_wegli[a])]);
       z1.Add(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cells[strtoint(labelededit3.text),strtoint(lista_wegli[a])]);
       x2.Add(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cells[strtoint(labelededit6.text),strtoint(lista_wegli[a])]);
       y2.Add(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cells[strtoint(labelededit4.text),strtoint(lista_wegli[a])]);
       z2.Add(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cells[strtoint(labelededit5.text),strtoint(lista_wegli[a])]);
       s2:= s2 + lista_wegli[a]+';';
      end;

        Form8.memo1.Lines.Add('Wynik dla grupy '+inttostr(i)+' Liczebnosc grupy:'+inttostr(lista_wegli.Count)+' Ranga: '+ranga);
        Form8.memo1.Lines.Add('Pozycje : '+ s2);

        Form8.memo1.Lines.Add('RMSD + Rangi:'+currtostr(RMSDR(x1,y1,z1,x2,y2,z2,0,strtoint(ranga))));

        x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
        lista_wegli.Clear;
    end;

   Form8.memo1.Lines.Add(linia);
   lista_wegli.Free;
 end;

if CheckBox3.Checked = True then
  begin
     x1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit1.text)]);
     y1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit2.text)]);
     z1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit3.text)]);
     x2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit6.text)]);
     y2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit4.text)]);
     z2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit5.text)]);
     form8.memo1.Lines.Add(com25+' RMSD CA-CB:'); //dodaj wynik
     form8.memo1.Lines.Add(RMSDRCACB(x1,y1,z1,x2,y2,z2,strtoint(labelededit7.Text),0));
     x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
  end;

if CheckBox5.Checked = True then
  begin
     x1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit1.text)]);
     y1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit2.text)]);
     z1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit3.text)]);
     x2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit6.text)]);
     y2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit4.text)]);
     z2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit5.text)]);
     form8.memo1.Lines.Add(com25+' MAA:'); //dodaj wynik
     form8.memo1.Lines.Add(MAA(x1,y1,z1,x2,y2,z2,strtoint(labelededit7.Text),0));
     x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
  end;

 if CheckBox7.Checked = True then
  begin
     x1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit1.text)]);
     y1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit2.text)]);
     z1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit3.text)]);
     x2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit6.text)]);
     y2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit4.text)]);
     z2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit5.text)]);
     form8.Show;
     form8.memo1.Lines.Add(com24+' SVCA  [ '+Datetostr(now)+'  '+Timetostr(Now)+' ]' ); //dodaj wynik
     form8.memo1.Lines.Add(linia);
     SVCA(x1,y1,z1,x2,y2,z2);  // liczy SVCA dla calego modelu
     SVCA_all();               // liczy SVCA + rangi dla poszcególnych
     form8.memo1.Lines.Add(linia);
     x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
  end;

  if CheckBox8.Checked = True then
  begin
     x1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit1.text)]);
     y1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit2.text)]);
     z1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit3.text)]);
     x2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit6.text)]);
     y2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit4.text)]);
     z2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit5.text)]);
     form8.Show;
  if Pos(';',labelededit7.Text) > 0 then
      begin
        lista_wegli:=TStringlist.Create;
        s:=labelededit7.Text;
        if s[length(s)] <> ';' then
         begin
           s:=s+';';
         end;
       repeat
        begin
         If  (pos(';',s) = 0) and (length(s)>1) then
          begin
            lista_wegli.Add(s);
            s:='';
          end
            else
          begin
            lista_wegli.Add(Copy(s,0,pos(';',s)-1));
            s:= Copy(s,pos(';',s)+1,Length(s));
          end;
        end;
       until length(s) = 0;

       for i:=0 to lista_wegli.Count-1 do
        begin
          form8.memo1.Lines.Add(com24+' +(-)ox;+(-)oy;+(-)oz |r| for '+lista_wegli[i]+' [ '+Datetostr(now)+'  '+Timetostr(Now)+' ]' ); //dodaj wynik
          form8.memo1.Lines.Add(linia);
          form8.memo1.Lines.Add(xyz_r(x1,y1,z1,x2,y2,z2,strtoint(trim(lista_wegli[i]))));
          form8.memo1.Lines.Add(linia);
        end;
        lista_wegli.Free;
      end
        else
      begin
          form8.memo1.Lines.Add(com24+' +(-)ox;+(-)oy;+(-)oz |r|  [ '+Datetostr(now)+'  '+Timetostr(Now)+' ]' ); //dodaj wynik
          form8.memo1.Lines.Add(linia);
          form8.memo1.Lines.Add(xyz_r(x1,y1,z1,x2,y2,z2,strtoint(trim(labelededit7.Text))));
          form8.memo1.Lines.Add(linia);
      end;
    x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
  end;

 if CheckBox9.Checked = True then
  begin
     x1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit1.text)]);
     y1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit2.text)]);
     z1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit3.text)]);
     x2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit6.text)]);
     y2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit4.text)]);
     z2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit5.text)]);
     form8.Show;
     form8.memo1.Lines.Add(com24+' SVIA [ '+Datetostr(now)+'  '+Timetostr(Now)+' ]' ); //dodaj wynik
     form8.memo1.Lines.Add(linia);
     form8.memo1.Lines.Add('SVIA '+currtostr(SVIA(x1,y1,z1,x2,y2,z2)));
     form8.memo1.Lines.Add(linia);
     x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
  end;

 if CheckBox11.Checked = True then
  begin

  Screen.Cursor := crHourGlass;

     x1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit1.text)]);
     y1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit2.text)]);
     z1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit3.text)]);
     x2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit6.text)]);
     y2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit4.text)]);
     z2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit5.text)]);
     form8.Show;
     form8.memo1.Lines.Add(com24+' SSVIA [ '+Datetostr(now)+'  '+Timetostr(Now)+' ]' ); //dodaj wynik
     form8.memo1.Lines.Add(linia);

     promienie_atomow:= TstringList.Create;
     promienie_atomow.AddStrings(Tstringgrid(Mainform.PageControl.Pages[combobox1.ItemIndex+1].Controls[0]).Cols[strtoint(labelededit16.Text)]);
     symbole_na_promienie(promienie_atomow);

     form8.memo1.Lines.Add('SSVIA '+currtostr(SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,0)));
     form8.memo1.Lines.Add('SSVIA ^-2 = '+currtostr(POWER(SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,0),1/2)));
     form8.memo1.Lines.Add('SSVIA ^-3 = '+currtostr(POWER(SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,0),1/3)));
     form8.memo1.Lines.Add(linia);

     // wspolczynnik rowny sredniej odleglosci

     form8.memo1.Lines.Add('SSVIA - wsp.rmsd '+currtostr(RMSDR(x1,y1,z1,x2,y2,z2,0,0))+'->'+currtostr(SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,RMSDR(x1,y1,z1,x2,y2,z2,0,0))));
     form8.memo1.Lines.Add('SSVIA ^-2 = '+currtostr(POWER(SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,RMSDR(x1,y1,z1,x2,y2,z2,0,0)),1/2)));
     form8.memo1.Lines.Add('SSVIA ^-3 = '+currtostr(POWER(SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,RMSDR(x1,y1,z1,x2,y2,z2,0,0)),1/3)));
     form8.memo1.Lines.Add(linia);

     // wspolczynnik rowny sredniej odleglosci razy kat

     form8.memo1.Lines.Add('SSVIA - wsp.rmsd: '+currtostr(RMSDR(x1,y1,z1,x2,y2,z2,0,0))+'->');
     temp:= strtocurr(MAA(x1,y1,z1,x2,y2,z2,strtoint(labelededit7.Text),0));
     temp:=temp*   POWER(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,RMSDR(x1,y1,z1,x2,y2,z2,0,0)),1/3);
     form8.memo1.Lines.Add('SSVIA ^-3 = '+ currtostr(temp));
     form8.memo1.Lines.Add(linia);

    if checkbox13.Checked = true then // SSVIA LOOP
       begin
         form8.memo1.Lines.Add(com24+' SSVIA - Loop [ '+Datetostr(now)+'  '+Timetostr(Now)+' ]' ); //dodaj wynik
         form8.memo1.Lines.Add(linia2);
         form8.memo1.Lines.Add('Coef. | SSVIA ^-3 |');
         form8.memo1.Lines.Add(linia2);

      if strtointDef(edit1.Text,-1) <> -1 then
        begin

          for i:=1 to strtoint(edit1.Text) do         //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            begin
              wspolczynnik:= i * 0.01 ;

              temp:= POWER(SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik),1/3);

              temp2:=strtocurr(zasobnik_programu);

              form8.memo1.Lines.Add('For '+currtostr(wspolczynnik)+' '+currtostr(temp2)+' % population clasified, SSVIA:'+currtostr(temp));

             { if  (strtocurr(zasobnik_programu) = 25)  then
               begin
                 form8.memo1.Lines.Add('For '+currtostr(wspolczynnik)+' '+currtostr(temp2)+' % population clasified, SSVIA:'+currtostr(temp));
               end;

              if  (strtocurr(zasobnik_programu) = 50)  then
               begin
                 form8.memo1.Lines.Add('For '+currtostr(wspolczynnik)+' '+currtostr(temp2)+' % population clasified, SSVIA:'+currtostr(temp));
               end;

              if  (strtocurr(zasobnik_programu) = 100) then
               begin
                 form8.memo1.Lines.Add('For '+currtostr(wspolczynnik)+' '+currtostr(temp2)+' % population clasified, SSVIA:'+currtostr(temp));
               end; }

            end;
         end
          else
          begin  Console.AddCommunicate(com10); end;


       odleglosci:=Tstringlist.Create;
       for i:=1 to x1.Count-1 do
         begin
           odleglosci.Add(currtostr(dlugosc_wektora(strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(z1[i]),strtocurr(x2[i]),strtocurr(y2[i]),strtocurr(z2[i]),0)));
         end;

            wspolczynnik:= MinMax(odleglosci,true) - MinMax(odleglosci,false);

            form8.memo1.Lines.Add('Wsp. rozstepu '+currtostr(wspolczynnik)
                                    +' | '+currtostr(POWER(SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik),1/3))+' | ');

            wspolczynnik:= (MinMax(odleglosci,true) - MinMax(odleglosci,false))/2;

            form8.memo1.Lines.Add('Wsp. rozstepu/2 '+currtostr(wspolczynnik)
                                    +' | '+currtostr(POWER(SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik),1/3))+' | ');

            wspolczynnik:= (MinMax(odleglosci,true) - MinMax(odleglosci,false))/3;

            form8.memo1.Lines.Add('Wsp. rozstepu/3 '+currtostr(wspolczynnik)
                                    +' | '+currtostr(POWER(SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik),1/3))+' | ');


         odleglosci.Free;

       end;
     x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
  end;

if CheckBox12.Checked = True then
  begin
     x1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit1.text)]);
     y1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit2.text)]);
     z1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit3.text)]);
     x2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit6.text)]);
     y2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit4.text)]);
     z2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit5.text)]);
     form8.Show;
     form8.memo1.Lines.Add(com24+' ISSVIA [ '+Datetostr(now)+'  '+Timetostr(Now)+' ]' ); //dodaj wynik
     form8.memo1.Lines.Add(linia);

     promienie_atomow:= TstringList.Create;
     promienie_atomow.AddStrings(Tstringgrid(Mainform.PageControl.Pages[combobox1.ItemIndex+1].Controls[0]).Cols[strtoint(labelededit16.Text)]);
     symbole_na_promienie(promienie_atomow);

     form8.memo1.Lines.Add('ISSVIA '+currtostr(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,0)));
     form8.memo1.Lines.Add('ISSVIA ^-2 = '+currtostr(POWER(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,0),1/2)));
     form8.memo1.Lines.Add('ISSVIA ^-3 = '+currtostr(POWER(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,0),1/3)));
     form8.memo1.Lines.Add(linia);

     // wspolczynnik rowny sredniej odleglosci

     form8.memo1.Lines.Add('ISSVIA - wsp.rmsd: '+currtostr(RMSDR(x1,y1,z1,x2,y2,z2,0,0))+'->'+currtostr(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,RMSDR(x1,y1,z1,x2,y2,z2,0,0))));
     form8.memo1.Lines.Add('ISSVIA ^-2 = '+currtostr(POWER(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,RMSDR(x1,y1,z1,x2,y2,z2,0,0)),1/2)));
     form8.memo1.Lines.Add('ISSVIA ^-3 = '+currtostr(POWER(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,RMSDR(x1,y1,z1,x2,y2,z2,0,0)),1/3)));
     form8.memo1.Lines.Add(linia);

     // wspolczynnik rowny sredniej odleglosci razy kat

     form8.memo1.Lines.Add('ISSVIA - wsp.rmsd: '+currtostr(RMSDR(x1,y1,z1,x2,y2,z2,0,0))+'->');
     temp:= strtocurr(MAA(x1,y1,z1,x2,y2,z2,strtoint(labelededit7.Text),0));
     temp:=temp* POWER(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,RMSDR(x1,y1,z1,x2,y2,z2,0,0)),1/3);
     form8.memo1.Lines.Add('ISSVIA ^-3 = '+ currtostr(temp));
     form8.memo1.Lines.Add(linia);

  if checkbox14.Checked = true then // ISSVIA LOOP
       begin
         form8.memo1.Lines.Add(com24+' ISSVIA - Loop [ '+Datetostr(now)+'  '+Timetostr(Now)+' ]' ); //dodaj wynik
         form8.memo1.Lines.Add(linia2);
         form8.memo1.Lines.Add('Coef. | ISSVIA ^-3 |');
         form8.memo1.Lines.Add(linia2);

       if strtointDef(edit2.Text,-1) <> -1 then
        begin

           for i:=1 to strtoint(edit2.Text) do      //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            begin
              wspolczynnik:= i * 0.01 ;

              temp:= POWER(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik),1/3);

              temp2:=strtocurr(zasobnik_programu);

              form8.memo1.Lines.Add('For '+currtostr(wspolczynnik)+' '+currtostr(temp2)+' % population clasified, ISSVIA:'+currtostr(temp));

            {if  (Trunc(strtocurr((zasobnik_programu))) = 25)  then
               begin
                 form8.memo1.Lines.Add('For '+currtostr(wspolczynnik)+' '+currtostr(temp2)+' % population clasified, ISSVIA:'+currtostr(temp));
               end;

              if  (Trunc(strtocurr((zasobnik_programu))) = 50)  then
               begin
                 form8.memo1.Lines.Add('For '+currtostr(wspolczynnik)+' '+currtostr(temp2)+' % population clasified, ISSVIA:'+currtostr(temp));
               end;

              if  (Trunc(strtocurr((zasobnik_programu))) = 100) then
               begin
                 form8.memo1.Lines.Add('For '+currtostr(wspolczynnik)+' '+currtostr(temp2)+' % population clasified, ISSVIA:'+currtostr(temp));
               end;  }

            end;
         end
          else begin  Console.AddCommunicate(com10); end;

       odleglosci:=Tstringlist.Create;

       for i:=1 to x1.Count-1 do
         begin
           odleglosci.Add(currtostr(dlugosc_wektora(strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(z1[i]),strtocurr(x2[i]),strtocurr(y2[i]),strtocurr(z2[i]),0)));
         end;

            wspolczynnik:= MinMax(odleglosci,true) - MinMax(odleglosci,false);

            form8.memo1.Lines.Add('Wsp. rozstepu '+currtostr(wspolczynnik)
                                    +' | '+currtostr(POWER(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik),1/3))+' | ');

            wspolczynnik:= (MinMax(odleglosci,true) - MinMax(odleglosci,false))/2;

            form8.memo1.Lines.Add('Wsp. rozstepu/2 '+currtostr(wspolczynnik)
                                    +' | '+currtostr(POWER(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik),1/3))+' | ');

            wspolczynnik:= (MinMax(odleglosci,true) - MinMax(odleglosci,false))/3;

            form8.memo1.Lines.Add('Wsp. rozstepu/3 '+currtostr(wspolczynnik)
                                    +' | '+currtostr(POWER(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik),1/3))+' | ');

         odleglosci.Free;
       end;

     x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
  end;

if CheckBox15.Checked = True then
  begin
     x1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit1.text)]);
     y1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit2.text)]);
     z1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit3.text)]);
     x2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit6.text)]);
     y2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit4.text)]);
     z2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit5.text)]);
     clear_list(x1);   // czyszczenie tylko currency
     clear_list(x2);
     clear_list(y1);
     clear_list(y2);
     clear_list(z1);
     clear_list(z2);

      temp:=0;

       for i:=1 to x1.Count-1 do
         begin
           temp:=temp+ dlugosc_wektora(strtocurr(x1[i]),strtocurr(y1[i]),strtocurr(z1[i]),strtocurr(x2[i]),strtocurr(y2[i]),strtocurr(z2[i]),0);
         end;

      temp:= temp/x1.Count-1; // srednia odleglosc jako wspolczynnik analizy
      wspolczynnik:=temp;

      promienie_atomow:= TstringList.Create;
      promienie_atomow.AddStrings(Tstringgrid(Mainform.PageControl.Pages[combobox1.ItemIndex+1].Controls[0]).Cols[strtoint(labelededit16.Text)]);
      symbole_na_promienie(promienie_atomow);

      temp:= SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik*0.5);  // obliczeie ssvia
      form8.memo1.Lines.Add('SSVIA - wspol : '+currtostr(wspolczynnik*0.5)+'=>'+currtostr(temp));

   //   temp:=temp * strtocurr(MAA(x1,y1,z1,x2,y2,z2,strtoint(labelededit7.Text),0)); // przemnozenie przez maksymalny kat

      temp:= POWER(temp,1/3);
      form8.memo1.Lines.Add('SSVIA: ' + currtostr(temp));

      // ISSVIA

      temp:= ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik*0.5);  // obliczeie issvia
      form8.memo1.Lines.Add('ISSVIA - wspol : '+currtostr(wspolczynnik*0.5)+'=>'+currtostr(temp));

     // temp:= temp * strtocurr(MAA(x1,y1,z1,x2,y2,z2,strtoint(labelededit7.Text),0)); // przemnozenie przez maksymalny kat

      temp:= POWER(temp,1/3);
      form8.memo1.Lines.Add('ISSVIA: ' + currtostr(temp));


      form8.memo1.Lines.Add('ISSVIA - SSVIA: ' + currtostr(power(ISSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik*0.5) - SSVIA(promienie_atomow,x1,y1,z1,x2,y2,z2,wspolczynnik*0.5),1/3)));

     x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
     promienie_atomow.Free;
  end;

  if CheckBox16.Checked = True then
  begin
     x1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit1.text)]);
     y1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit2.text)]);
     z1.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab1].Controls[0]).Cols[strtoint(labelededit3.text)]);
     x2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit6.text)]);
     y2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit4.text)]);
     z2.AddStrings(Tstringgrid(Mainform.PageControl.Pages[tab2].Controls[0]).Cols[strtoint(labelededit5.text)]);
     clear_list(x1);   // czyszczenie tylko currency
     clear_list(x2);
     clear_list(y1);
     clear_list(y2);
     clear_list(z1);
     clear_list(z2);



     x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;
  end;


 //form8.memo1.Lines.AddStrings(tresc_wyniku);
 x1.free;x2.free;y1.free;y2.free;z1.free;z2.free;

 form7.Hide;
 form8.PageControl1.ActivePageIndex:=0;
 form8.Show;
 Screen.Cursor := crDefault;  }
end;

procedure TForm7.SpeedButton3Click(Sender: TObject);
begin
  Labelededit2.Caption:='0';
  SpeedButton1.Click;
end;

procedure TForm7.SpeedButton4Click(Sender: TObject);
begin
    Labelededit3.Caption:='0';
    SpeedButton1.Click;
end;

procedure TForm7.SpeedButton5Click(Sender: TObject);
begin
    Labelededit5.Caption:='0';
    SpeedButton7.Click;
end;

procedure TForm7.SpeedButton6Click(Sender: TObject);
begin
  Labelededit4.Caption:='0';
  SpeedButton7.Click;
end;

procedure TForm7.SpeedButton7Click(Sender: TObject);
var
x,y:integer;
begin
{Listbox1.Clear;
y:=combobox3.ItemIndex+1;
 for x:=1 to Tstringgrid(Mainform.PageControl.Pages[y].Controls[0]).ColCount-1 do
   begin
     listbox1.Items.Add(inttostr(x)+'->'+Tstringgrid(Mainform.PageControl.Pages[y].Controls[0]).Cells[x,0]);
   end;
 panel1.Show;
 panel1.Top:= 65;     }
end;

procedure TForm7.SpeedButton7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Labelededit6.Caption:='0';
end;

procedure TForm7.SpeedButton8Click(Sender: TObject);
var
 plik:TstringList;
begin
  mainform.OpenDialog1.Filter:='All files (*.*) | *.*';
  if mainform.OpenDialog1.Execute then
   begin
     plik:= Tstringlist.Create;
     plik.LoadFromFile(UTF8Decode(mainform.OpenDialog1.FileName));
     labelededit12.Text:=plik[0];
     labelededit13.Text:=plik[1];
     labelededit14.Text:=plik[2];
     labelededit15.Text:=plik[3];
     labelededit8.Text:=plik[4];
     labelededit9.Text:=plik[5];
     labelededit10.Text:=plik[6];
     labelededit11.Text:=plik[7];
     plik.Free;
   end;
end;

procedure TForm7.SpeedButton9Click(Sender: TObject);
var
 plik:TstringList;
begin
  mainform.OpenDialog1.Filter:='All files (*.*) | *.*';
  if mainform.SaveDialog1.Execute then
   begin
    if FileExists(UTF8Decode(mainform.SaveDialog1.FileName)) then
      begin
      if MessageDlg(com22,com23, mtConfirmation,
         [mbYes, mbNo],0) = mrYes then
        begin
         plik:= Tstringlist.Create;
         plik.Add(labelededit12.Text);
         plik.Add(labelededit13.Text);
         plik.Add(labelededit14.Text);
         plik.Add(labelededit15.Text);
         plik.Add(labelededit8.Text);
         plik.Add(labelededit9.Text);
         plik.Add(labelededit10.Text);
         plik.Add(labelededit11.Text);
         plik.SaveToFile(UTF8Decode(mainform.SaveDialog1.FileName));
         plik.Free;
      end;
   end;
end;
end;

procedure TForm7.FormShow(Sender: TObject);
var
 x:integer;
begin
  {
     Combobox4.Items.Clear;
     Combobox2.Items.Clear;
     Combobox3.Items.Clear;
     combobox1.Items.Clear;
  for x:=1 to Mainform.PageControl.PageCount-1 do
   begin
     Combobox1.Items.Add(Mainform.PageControl.Pages[x].Caption);
     Combobox4.Items.Add(Mainform.PageControl.Pages[x].Caption);
     Combobox2.Items.Add(Mainform.PageControl.Pages[x].Caption);
     Combobox3.Items.Add(Mainform.PageControl.Pages[x].Caption);
   end;
     Combobox1.ItemIndex:=0;
     Combobox4.ItemIndex:=0;

     Combobox2.ItemIndex:=Mainform.PageControl.ActivePageIndex-1;
     Combobox3.ItemIndex:=Mainform.PageControl.ActivePageIndex;
       }
end;

procedure TForm7.GroupBox2Click(Sender: TObject);
begin

end;

procedure TForm7.GroupBox4Click(Sender: TObject);
begin

end;

procedure TForm7.GroupBox5Click(Sender: TObject);
begin

end;

procedure TForm7.LabeledEdit10KeyPress(Sender: TObject; var Key: char);
begin
   tylko_liczby(Sender,Key);
end;

procedure TForm7.LabeledEdit11KeyPress(Sender: TObject; var Key: char);
begin
   tylko_liczby(Sender,Key);
end;

procedure TForm7.LabeledEdit12KeyPress(Sender: TObject; var Key: char);
begin
   tylko_liczby(Sender,Key);
end;

procedure TForm7.LabeledEdit13KeyPress(Sender: TObject; var Key: char);
begin
   tylko_liczby(Sender,Key);
end;

procedure TForm7.LabeledEdit14KeyPress(Sender: TObject; var Key: char);
begin
   tylko_liczby(Sender,Key);
end;

procedure TForm7.LabeledEdit15KeyPress(Sender: TObject; var Key: char);
begin
   tylko_liczby(Sender,Key);
end;

procedure TForm7.LabeledEdit16Change(Sender: TObject);
begin

end;

procedure TForm7.LabeledEdit8KeyPress(Sender: TObject; var Key: char);
begin
  tylko_liczby(Sender,Key);
end;

procedure TForm7.LabeledEdit8KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

end;

procedure TForm7.LabeledEdit9KeyPress(Sender: TObject; var Key: char);
begin
tylko_liczby(Sender,Key);
end;

procedure TForm7.ComboBox2Change(Sender: TObject);
begin
  combobox3.ItemIndex:=combobox2.ItemIndex+1;
  combobox1.ItemIndex:=combobox2.ItemIndex;
  combobox4.ItemIndex:=combobox2.ItemIndex;
end;

procedure TForm7.ComboBox3Change(Sender: TObject);
begin

end;

procedure TForm7.ComboBox4Change(Sender: TObject);
var
 x,y:integer;
 w:string;
begin
 {
if sender <> Combobox2 then
begin
w:='';
y:= combobox4.ItemIndex + 1;
  for x:=1 to Tstringgrid(Mainform.PageControl.Pages[y].Controls[0]).RowCount -1 do
   begin
     if (strtointDef(Tstringgrid(Mainform.PageControl.Pages[y].Controls[0]).Cells[1,x],-1)> 0 )
       and
        (strtointDef(Tstringgrid(Mainform.PageControl.Pages[y].Controls[0]).Cells[2,x],-1)> 0 )
       and
        (strtointDef(Tstringgrid(Mainform.PageControl.Pages[y].Controls[0]).Cells[3,x],-1)> 0 )
       and
        (strtointDef(Tstringgrid(Mainform.PageControl.Pages[y].Controls[0]).Cells[4,x],-1)> 0 )
       and
        (strtointDef(Tstringgrid(Mainform.PageControl.Pages[y].Controls[0]).Cells[5,x],-1)> 0 )
       then
        begin
          w:= w + inttostr(x)+ ',';
        end;
   end;
   Console.AddCommunicate(com19+w);
end; }
end;

procedure TForm7.FormCreate(Sender: TObject);
begin

end;

procedure TForm7.Button1Click(Sender: TObject);
begin
  panel1.Hide;
end;

procedure TForm7.CheckBox11Change(Sender: TObject);
begin
  if checkbox11.Checked = False then
  begin
    checkbox13.Checked:= False;
  end
end;

procedure TForm7.CheckBox11Click(Sender: TObject);
begin
  if checkbox11.Checked = False then
  begin
    checkbox13.Checked:= False;
  end
end;

procedure TForm7.CheckBox12Change(Sender: TObject);
begin
   if checkbox12.Checked = False then
  begin
    checkbox14.Checked:= False;
  end
end;

procedure TForm7.CheckBox12Click(Sender: TObject);
begin
    if checkbox12.Checked = False then
  begin
    checkbox14.Checked:= False;
  end
end;

procedure TForm7.CheckBox13Change(Sender: TObject);
begin
   if checkbox13.Checked = true then
  begin
    checkbox11.Checked:= true;
  end
end;

procedure TForm7.CheckBox13Click(Sender: TObject);
begin
   if checkbox13.Checked = true then
  begin
    checkbox11.Checked:= true;
  end
end;

procedure TForm7.CheckBox14Change(Sender: TObject);
begin
   if checkbox14.Checked = True then
  begin
    checkbox12.Checked:= True;
  end
end;

procedure TForm7.CheckBox14Click(Sender: TObject);
begin
if checkbox14.Checked = True then
  begin
    checkbox12.Checked:= True;
  end
end;

procedure TForm7.CheckBox2Change(Sender: TObject);
begin
  if checkbox2.Checked = TRUE then
  begin
    groupbox4.Visible:=true;
    groupbox4.BringToFront;
  end
   else
    begin groupbox4.Visible:=false; end;
end;

procedure TForm7.CheckBox3Change(Sender: TObject);
begin

end;

procedure TForm7.CheckBox4Change(Sender: TObject);
begin
   if checkbox4.Checked = TRUE then
  begin
    groupbox4.Visible:=true;
    groupbox4.BringToFront;
  end
   else
    begin groupbox4.Visible:=false; end;
end;

procedure TForm7.CheckBox6Change(Sender: TObject);
begin
   if checkbox6.Checked = TRUE then
  begin
    groupbox4.Visible:=true;
    groupbox4.BringToFront;
  end
   else
    begin groupbox4.Visible:=false; end;
end;

procedure TForm7.CheckBox7Change(Sender: TObject);
begin
  if checkbox7.Checked = TRUE then
  begin
    groupbox4.Visible:=true;
    groupbox4.BringToFront;
  end
   else
    begin groupbox4.Visible:=false; end;
end;

procedure TForm7.CheckBox8Change(Sender: TObject);
begin

end;

procedure TForm7.BitBtn3Click(Sender: TObject);
begin
  Console.AddCommunicate(com61,true);
end;


initialization
  {$I unit8.lrs}
end.


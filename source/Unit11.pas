(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit11;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, Biblioteka_Grow_4;

type

  { TForm10 }

  TForm10 = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox5: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Change(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    Procedure AlignBy_GC(nr_molek_to_align:integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    Procedure AlignBy_XYZPlane(nr_molek_to_align:integer);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form10: TForm10; 

implementation

uses
  Unit1,Unit8,Unit9,unit2,Unit14,Unit12;

{ TForm10 }
Procedure TForm10.AlignBy_XYZPlane(nr_molek_to_align:integer);
var
 zero,zero_temp,i,col,a,range:integer;
 aktualne, temp : array of currency;
 min,max:currency;
begin
{ // pobierz numer kolumny
 col:=0;
if checkbox1.Checked = true then
 begin
   col:= NrColX;
 end;
if checkbox6.Checked = true then
 begin
   col:= NrColY;
 end;
 if checkbox7.Checked = true then
 begin
   col:= NrColZ;
 end;
if col <> 0 then
 begin
zero_temp:=0;
 // ustal wymiary tablic
  SetLength(aktualne,TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).RowCount -1);
  SetLength(temp,TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).RowCount -1);

for i:= 1 to TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).RowCount -1 do
   begin
     aktualne[i-1]:= StrToCurr(TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[col,i]);
     if aktualne[i-1] = 0 then
      begin
        zero_temp:= zero_temp + 1;
      end;
   end;

min:=0;
max:=0;

for i:=0 to length(aktualne)-1 do
  begin
    if aktualne[i] > max then
     begin
       max:= aktualne[i];
     end;

    if aktualne[i] < min then
     begin
       min:= aktualne[i];
     end;
  end;

// oblicz ilosc powtozen w zakresie
 range:= Round(Abs(max)+ Abs(min)) + 1;
 range:= Round(range / 0.001);

 For i:=0 to 1000000 do
  begin
  zero:=0;
    for a:=0 to Length(aktualne) do   // odejmij i zlicz zera
     begin
       aktualne[a]:= aktualne[a] - 0.001;
       if aktualne[a] = 0 then
        begin
          zero:= zero+1;
        end;
     end;

  if zero > zero_temp then  // jak po zmianie wiecej to zapisz aktulany stan
    begin
    zero_temp:= zero;
    for a:=0 to Length(aktualne) do
      begin
        temp[a]:= aktualne[a];
      end;
    end;
 end;

 for i:=1 to Length(temp) do
  begin
    if checkbox1.Checked = true then  // x
         begin
           TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColTempX,i]:= CurrToStr(temp[i-1]);
           TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColTempY,i]
             := TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColY,i];
           TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColTempZ,i]
             := TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColZ,i];
         end;
    if checkbox6.Checked = true then // y
        begin
          TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColTempY,i]:= CurrToStr(temp[i-1]);
          TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColTempX,i]
             := TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColX,i];
           TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColTempZ,i]
             := TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColZ,i];
        end;
    if checkbox7.Checked = true then // z
        begin
         TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColTempZ,i]:= CurrToStr(temp[i-1]);
         TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColTempY,i]
             := TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColY,i];
           TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColTempX,i]
             := TstringGrid(MainForm.PageControl.Page[nr_molek_to_align].Controls[0]).Cells[NrColX,i];
        end;
  end;

  // wyczysc tablice
  SetLength(aktualne,0);
  SetLength(temp,0);

 end else begin Form1.ShowCommunicate(com110); end; }
end;

Procedure TForm10.AlignBy_GC(nr_molek_to_align:integer);
var
 i,b,molecule,ilosc_elelemnow_ref:integer;
 Ref_X,Ref_Y,Ref_Z:currency;
 Molek_X,Molek_Y,Molek_Z:currency;
 Wektor_X,Wektor_Y,Wektor_Z:currency;
begin
{// 1. wyznacz srodek molekuly referencyjnej
Ref_X:=0;
Ref_Y:=0;
Ref_Z:=0;

ilosc_elelemnow_ref:=0;

molecule:=ComboBox2.ItemIndex+1; // index molek ref ok

if  ComboBox2.ItemIndex > -1 then
 begin                             // dla molekuly item indrx jako ref
   For i:=1 to TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).RowCount -1 do
      begin
        Ref_X:= Ref_X + StrToCurr(TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColx,i]);
        Ref_Y:= Ref_Y + StrToCurr(TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColy,i]);
        Ref_Z:= Ref_Z + StrToCurr(TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColz,i]);
        inc(ilosc_elelemnow_ref)
      end;
 // suma ok

Ref_X:= Ref_X / ilosc_elelemnow_ref;  // podziel przez
Ref_Y:= Ref_Y / ilosc_elelemnow_ref;  // ilosc elementow
Ref_Z:= Ref_Z / ilosc_elelemnow_ref;

//Showmessage(CurrToStr(Ref_X)+'/'+CurrToStr(Ref_y)+'/'+CurrToStr(Ref_z));

// 2. policz srodek dla molekuly nr_molek_to_align
Molek_X:=0;
Molek_Y:=0;
Molek_Z:=0;

ilosc_elelemnow_ref:=0;

molecule:= nr_molek_to_align; // index molekuly nr_molek_to_align

   For i:=1 to TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).RowCount -1 do
      begin
        Molek_X:= Molek_X + StrToCurr(TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColx,i]);
        Molek_Y:= Molek_Y + StrToCurr(TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColy,i]);
        Molek_Z:= Molek_Z + StrToCurr(TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColz,i]);
        inc(ilosc_elelemnow_ref)
      end;

Molek_X:= Molek_X / ilosc_elelemnow_ref;  // podziel przez
Molek_Y:= Molek_Y / ilosc_elelemnow_ref;  // ilosc elementow
Molek_Z:= Molek_Z / ilosc_elelemnow_ref;  // bez pierwszego bo naglowke

//Showmessage(CurrToStr(Molek_X)+'/'+CurrToStr(Molek_y)+'/'+CurrToStr(Molek_z));
// 3. wyznacz wektor

if ((Molek_X > 0) and (Ref_X > 0)) then
   begin
     Wektor_X:= Molek_X - Ref_X;
   end;

if ((Molek_X < 0) and (Ref_X < 0)) then
   begin
     Wektor_X:= Molek_X - Ref_X;
   end;

 if ((Molek_X > 0) and (Ref_X < 0)) then
   begin
     Wektor_X:= Molek_X - Ref_X;
   end;

 if ((Molek_X < 0) and (Ref_X > 0)) then
   begin
     Wektor_X:= Ref_X - Molek_X;
   end;

 if ((Molek_Y > 0) and (Ref_Y > 0)) then
   begin
     Wektor_Y:= Molek_Y - Ref_Y;
   end;

if ((Molek_Y < 0) and (Ref_Y < 0)) then
   begin
     Wektor_Y:= Molek_Y - Ref_Y;
   end;

 if ((Molek_Y > 0) and (Ref_Y < 0)) then
   begin
     Wektor_Y:= Molek_Y - Ref_Y;
   end;

 if ((Molek_Y < 0) and (Ref_Y > 0)) then
   begin
     Wektor_Y:= Ref_Y - Molek_Y;
   end;

   if ((Molek_Z > 0) and (Ref_Z > 0)) then
   begin
     Wektor_Z:= Molek_Z - Ref_Z;
   end;

if ((Molek_Z < 0) and (Ref_Z < 0)) then
   begin
     Wektor_Z:= Molek_Z - Ref_Z;
   end;

 if ((Molek_Z > 0) and (Ref_Z < 0)) then
   begin
     Wektor_Z:= Molek_Z - Ref_Z;
   end;

 if ((Molek_Z < 0) and (Ref_Z > 0)) then
   begin
     Wektor_Z:= Ref_Z - Molek_Z;
   end;

{Form8.memo1.Lines.Add(CurrToStr(Wektor_X));
 Form8.memo1.Lines.Add(CurrToStr(Wektor_Y));
 Form8.memo1.Lines.Add(CurrToStr(Wektor_Z));}


// 4. przesun atomy
 For i:=1 to TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).RowCount -1 do
      begin
   {
        TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColTempX,i]
          :=CurrToStr(StrToCurr(TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColX,i]) - Wektor_X);

        TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColTempY,i]
          :=CurrToStr(StrToCurr(TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColY,i]) - Wektor_Y);

        TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColTempZ,i]
          :=CurrToStr(StrToCurr(TstringGrid(MainForm.PageControl.Page[Molecule].Controls[0]).Cells[NrColZ,i]) - Wektor_Z);
    }
      end;
end; }
end;

procedure TForm10.SpeedButton2Click(Sender: TObject);
begin

end;

procedure TForm10.SpeedButton3Click(Sender: TObject);
var
 i,a:integer;
begin
for i:=1 to Project_table_form.StringGrid1.RowCount-1 do  // wykonaj dla każdej molekuly
   begin
     if Project_table_form.StringGrid1.Cells[2,i] = '1' then // jelis includowane
      begin
    {   RewriteColumn(NrColTempX,NrColx,TstringGrid(MainForm.PageControl.Page[i].Controls[0]));
        RewriteColumn(NrColTempY,NrColY,TstringGrid(MainForm.PageControl.Page[i].Controls[0]));
        RewriteColumn(NrColTempZ,NrColZ,TstringGrid(MainForm.PageControl.Page[i].Controls[0]));
     } end;
   end;
end;

procedure TForm10.SpeedButton4Click(Sender: TObject);
var
  modele:TstringList;
  i:integer;
begin

modele := Tstringlist.Create;

if project_table_form.StringGrid1.RowCount > 1 then
   begin
    for i:=1 to project_table_form.StringGrid1.RowCount-1 do
      begin
        if (project_table_form.StringGrid1.Cells[2,i] = '1') // Included to 2
          then
        begin
           modele.Add(inttostr(i));
        end;
      end;
   end;

MainForm.SaveDialog1.FilterIndex:=0;
if MainForm.SaveDialog1.Execute then
 begin
   If MainForm.SaveDialog1.FileName > '' then
    begin
      Save_as_PDB(modele,Utf8decode(MainForm.SaveDialog1.FileName),true);
    end;
 end;
  modele.Free;
end;


procedure TForm10.CheckBox1Change(Sender: TObject);
begin

end;

procedure TForm10.CheckBox1Click(Sender: TObject);
begin

end;

procedure TForm10.CheckBox3Change(Sender: TObject);
begin
  CheckBox4.Checked:=false;
end;

procedure TForm10.CheckBox4Change(Sender: TObject);
begin
    CheckBox3.Checked:=false;
end;

procedure TForm10.FormShow(Sender: TObject);
Var
 i:integer;
begin
 Combobox2.Items.Clear;
  For i:=1 to project_table_form.StringGrid1.RowCount -1 do
   begin
     ComboBox2.Items.Add(project_table_form.StringGrid1.Cells[3,i]);
   end;
   ComboBox2.ItemIndex:= 0;
end;

procedure TForm10.CheckBox2Change(Sender: TObject);
begin

end;

procedure TForm10.CheckBox6Change(Sender: TObject);
begin

end;

procedure TForm10.CheckBox6Click(Sender: TObject);
begin

end;

procedure TForm10.CheckBox7Change(Sender: TObject);
begin

end;

procedure TForm10.CheckBox7Click(Sender: TObject);
begin

end;


procedure TForm10.SpeedButton1Click(Sender: TObject);
var
 i,a:integer;
begin

for i:=1 to Project_table_form.StringGrid1.RowCount-1 do  // wykonaj dla każdej molekuly
   begin
     if Project_table_form.StringGrid1.Cells[2,i] = '1' then // jelis includowane
      begin
        if CheckBox3.Checked = true then
         begin
         // AlhorithmType = 1 -> Wyznaczanie srodka geometrycznego
          AlignBy_GC(i);
         end;
        if CheckBox5.Checked = true then
         begin
         // AlhorithmType = 3 -> przesuwaj wartosci o 0.00001 az ktoruas sie wyzeruje w danej plaszyznie - uluz na plaszyznie
          AlignBy_XYZPlane(i);
         end;
      end;
   end;
end;

initialization
  {$I unit11.lrs}

end.


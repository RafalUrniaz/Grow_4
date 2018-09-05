(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit18;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ComCtrls, Grids, StdCtrls, Unit14, Biblioteka_Grow_4;

type

  { TForm16 }

  TForm16 = class(TForm)
    StringGrid1: TStringGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form16: TForm16;
  ColorAlignment:Boolean=False; // color alignment
  TypeColorAlignment:string='C';
  Selected:array of array of string;
  Sequences:array of array of string;

implementation
uses
  Unit1;
{ TForm16 }

procedure TForm16.ToolButton1Click(Sender: TObject);
begin
  ToolButton4.Click; // zrob sewencje na jedna litere
  TypeColorAlignment:='C';  // rodzaj kolorowania
  ColorAlignment:= true;
end;

procedure TForm16.ToolButton2Click(Sender: TObject);
begin
  ColorAlignment:= false;
  stringgrid1.Repaint;
end;

procedure TForm16.ToolButton3Click(Sender: TObject);
Var
  a,b:integer;
  res:string;
begin

ColorAlignment := False; // wylacz kolorowanie

  for a:=0 to Stringgrid1.RowCount -1 do
    begin
      for b:=1 to Stringgrid1.ColCount -1 do
        begin
        res:=AminoacidToFeature(Stringgrid1.Cells[b,a],'T');  // Input or Output type : T - ThreeLettersCode, O - OneLetterCode, N - Name
         if res > '' then
          begin
            Stringgrid1.Cells[b,a]:= res;
          end else
           begin
             res:=NucleotideToFeature(Stringgrid1.Cells[b,a],'T');
             if res > '' then
              begin
                Stringgrid1.Cells[b,a]:= res;// Input or Output type : T - ThreeLettersCode, O - OneLetterCode, N - Name
              end else begin Stringgrid1.Cells[b,a]:='' end;
           end;
        end;
    end;

 stringgrid1.AutoSizeColumns; // wyrowan kolumny

end;

procedure TForm16.ToolButton4Click(Sender: TObject);
Var
  a,b:integer;
  res:string;
begin

 ColorAlignment := False; // wylacz kolorowanie

  for a:=0 to Stringgrid1.RowCount -1 do
    begin
      for b:=1 to Stringgrid1.ColCount -1 do
        begin
         res:=AminoacidToFeature(Stringgrid1.Cells[b,a],'O');  // Input or Output type : T - ThreeLettersCode, O - OneLetterCode, N - Name
         if res > '' then
          begin
            Stringgrid1.Cells[b,a]:= res;
          end else
           begin
             res:=NucleotideToFeature(Stringgrid1.Cells[b,a],'T');
             if res > '' then
              begin
                Stringgrid1.Cells[b,a]:= res;// Input or Output type : T - ThreeLettersCode, O - OneLetterCode, N - Name
              end else begin Stringgrid1.Cells[b,a]:='' end;
           end;
        end;
    end;

stringgrid1.AutoSizeColumns; // wyrowan kolumny

end;

procedure TForm16.ToolButton5Click(Sender: TObject);
Var
  a,b:integer;
  res:string;
begin

ColorAlignment := False; // wylacz kolorowanie

  for a:=0 to Stringgrid1.RowCount -1 do
    begin
      for b:=1 to Stringgrid1.ColCount -1 do
        begin
           res:=AminoacidToFeature(Stringgrid1.Cells[b,a],'N');  // Input or Output type : T - ThreeLettersCode, O - OneLetterCode, N - Name
         if res > '' then
          begin
            Stringgrid1.Cells[b,a]:= res;
          end else
           begin
             res:=NucleotideToFeature(Stringgrid1.Cells[b,a],'N');
             if res > '' then
              begin
                Stringgrid1.Cells[b,a]:= res;// Input or Output type : T - ThreeLettersCode, O - OneLetterCode, N - Name
              end else begin Stringgrid1.Cells[b,a]:='' end;
           end;
        end;
    end;

stringgrid1.AutoSizeColumns; // wyrowan kolumny

end;

procedure TForm16.ToolButton6Click(Sender: TObject);
begin
  ToolButton4.Click; // zamien na jednolitwrowe kody
  ExportFastaFormat(0,0,Stringgrid1);
end;

procedure TForm16.ToolButton7Click(Sender: TObject);
begin

end;

procedure TForm16.ToolButton8Click(Sender: TObject);
begin
   ToolButton4.Click; // zrob sewencje na jedna litere
   TypeColorAlignment:='M';  // rodzaj kolorowania
   ColorAlignment:= true;
end;

procedure TForm16.ToolButton9Click(Sender: TObject);
Var
  a,b:integer;
  res:string;
begin

ColorAlignment := False; // wylacz kolorowanie

  for a:=0 to Stringgrid1.RowCount -1 do
    begin
      for b:=1 to Stringgrid1.ColCount -1 do
        begin
        res:=AminoacidToFeature(Stringgrid1.Cells[b,a],'F');  // Input or Output type : T - ThreeLettersCode, O - OneLetterCode, N - Name
         if res > '' then
          begin
            Stringgrid1.Cells[b,a]:= res;
          end else
           begin
             res:=NucleotideToFeature(Stringgrid1.Cells[b,a],'F');
             if res > '' then
              begin
                Stringgrid1.Cells[b,a]:= res;// Input or Output type : T - ThreeLettersCode, O - OneLetterCode, N - Name
              end else begin Stringgrid1.Cells[b,a]:='' end;
           end;
        end;
    end;

  stringgrid1.AutoSizeColumns; // wyrowan kolumny

end;

procedure TForm16.Memo1Change(Sender: TObject);
begin

end;

procedure TForm16.StringGrid1Click(Sender: TObject);
begin

end;

procedure TForm16.FormShow(Sender: TObject);
Var
  i,b,przegroda:integer;
  seq:Tstringlist;
begin

SetLength(Selected,0,0); // wyzeruj selected
SetLength(Sequences,0,0);

DeselectAllVisInc();  // odznacz wszystko

stringgrid1.RowCount:=0;
stringgrid1.ColCount:=0; // wyszysci, ale zaczyna od przegroda uzupielnianie

  seq:=TstringList.Create;

  for i:=1 to Project_table_form.StringGrid1.RowCount-1 do
   begin
     if Project_table_form.StringGrid1.Cells[NrColProj_Type,i] = type_Protein then
      begin
        Stringgrid1.RowCount:=Stringgrid1.RowCount + 1; // dodaj rowsa

        StringGrid1.Cells[0,stringgrid1.RowCount-1]:= Project_table_form.StringGrid1.Cells[NrColProj_Name,i];

        ArrayToSequence(i-1,Seq,true);   // zrob sekwencje z grida

        for b:=1 to Seq.Count do
          begin

             // jesli potrzeba dodoaj kolumne
           if Stringgrid1.Colcount <= b then
            begin
               Stringgrid1.Colcount:=Stringgrid1.ColCount+1;
            end;

           Stringgrid1.Cells[b,Stringgrid1.RowCount-1]:=seq[b-1];
          end;

       seq.Clear;
      end;
   end;

                   //row                        col  - tworzy opie z ilosci col row jak stringgrid
  SetLength(Selected,Stringgrid1.RowCount,Stringgrid1.ColCount);
  SetLength(Sequences,Stringgrid1.RowCount,Stringgrid1.ColCount);

  for i:=1 to Stringgrid1.ColCount - 1 do //col
   begin
     for b:=0 to stringgrid1.RowCount -1 do // row
      begin
        Sequences[b,i]:= Stringgrid1.Cells[i,b];
        Stringgrid1.Cells[i,b]:= copy(Stringgrid1.Cells[i,b],0,Pos(' ',Stringgrid1.Cells[i,b]));
      end;
   end;


  Stringgrid1.AutoSizeColumns;
  Stringgrid1.Visible:=true;


seq.Free;
end;

procedure TForm16.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
Var
  a,b:integer;
  s:string;
  res:string;
begin
  if  aCol <> 0 then  // TypeColorAlignment C - Clustal;  M  - MAEditor see function
   begin
     if ColorAlignment then
       begin   // kolor aminokwasu wedlug klasyfikacji Clustal, zwracanej prze funkcje !

          StringGrid1.Canvas.Brush.Color := clWhite; // jak nic to biale

          if AminoacidToColor(StringGrid1.Cells[aCol,aRow],TypeColorAlignment) = clNone then
            begin
             //  StringGrid1.Canvas.Brush.Color := StringToColor(NucleotideToFeature(StringGrid1.Cells[aCol,aRow],'C'));
            end else
              begin
               StringGrid1.Canvas.Brush.Color := AminoacidToColor(StringGrid1.Cells[aCol,aRow],TypeColorAlignment);
              end;

             // wypelnij kolorem
            StringGrid1.Canvas.FillRect(Stringgrid1.CellRect(aCol,aRow));
             // dodaj text komorki
            S := StringGrid1.Cells[aCol, aRow];

            StringGrid1.Canvas.TextRect(aRect,aRect.Left + (aRect.Right - aRect.Left) div 2 - 2, aRect.Top + 2, S);
         end;

         // jesli zaznaczone to obwodka

         if Selected[ARow,ACol] = 'X' then
           begin
             StringGrid1.Canvas.Pen.Width:=5;
             Stringgrid1.Canvas.Pen.Color:=clBlack;
             Stringgrid1.Canvas.Frame(StringGrid1.CellRect(ACol,ARow));
           end;

  end;
end;

procedure TForm16.StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var
  col,row:integer;
  found:boolean;
  ColNrFrazy,Frazy:TstringList;
  ResName,ResNumber,checked:string;
begin
    ColNrFrazy:=TstringList.Create;
    Frazy:=TstringList.Create;

  StringGrid1.MouseToCell(X,Y,Col,Row);


  if (Col > 0) and (StringGrid1.Cells[Col,Row] > '') then
   begin

     if Selected[Row,Col] > '' then
      begin
        Selected[Row,Col]:= '';
        checked:='0';
      end else
      begin
        Selected[Row,Col]:= 'X';
        checked:='1'
      end;


        ResName:=Copy(Sequences[Row,Col],0,Pos(' ',Sequences[Row,Col])-1); // pierwsze do spacji
        ResNumber:= Copy(Sequences[Row,Col],Pos(' ',Sequences[Row,Col])+1,Length(Sequences[Row,Col])); // od spacji do konca

        ColNrFrazy.Add(inttostr(NrColResidueName));  Frazy.Add(ResName);
        ColNrFrazy.Add(inttostr(NrColSequenceNr));  Frazy.Add(ResNumber);

              CheckProjectColumnIf(Row,ColNrFrazy,Frazy,true,NrColInc,checked);

        ColNrFrazy.Clear;
        Frazy.Clear;


        ColNrFrazy.Add(inttostr(NrColBonds_FirstResidueName));  Frazy.Add(ResName);
        ColNrFrazy.Add(inttostr(NrColBonds_FirstResidueNumber));  Frazy.Add(ResNumber);

        ColNrFrazy.Add(inttostr(NrColBonds_SecondResidueName));  Frazy.Add(ResName);
        ColNrFrazy.Add(inttostr(NrColBonds_SecondResidueNumber));  Frazy.Add(ResNumber);

              CheckBondsColumnIf(Row,ColNrFrazy,Frazy,true,NrColInc,checked);

   end;

  For Row:= 0 to Length(Selected)-1 do
    begin
      found:=false;
      For Col:= 0 to Length(Selected[0])-1 do
        begin
          if Selected[Row,Col] = 'X' then
           begin
             found:=true;
           end;
        end;
      if found then
       begin
         Project_table_form.StringGrid1.Cells[NrColProj_Vis,Row+1]:='1';
         Project_table_form.StringGrid1.Cells[NrColProj_Inc,Row+1]:='1';
       end else
       begin
         Project_table_form.StringGrid1.Cells[NrColProj_Vis,Row+1]:='0';
         Project_table_form.StringGrid1.Cells[NrColProj_Inc,Row+1]:='0';
       end;
    end;

  Stringgrid1.Repaint;
  WhatVisInc();

  ColNrFrazy.Free;
  Frazy.Free;
end;

procedure TForm16.ToolButton10Click(Sender: TObject);
Var
  a,b:integer;
  res:string;
begin

ColorAlignment := False; // wylacz kolorowanie

  for a:=0 to Stringgrid1.RowCount -1 do
    begin
      for b:=1 to Stringgrid1.ColCount -1 do
        begin
           res:=AminoacidToFeature(Stringgrid1.Cells[b,a],'M');  // Input or Output type : T - ThreeLettersCode, O - OneLetterCode, N - Name
         if res > '' then
          begin
            Stringgrid1.Cells[b,a]:= res;
          end else
           begin
             res:=NucleotideToFeature(Stringgrid1.Cells[b,a],'M');
             if res > '' then
              begin
                Stringgrid1.Cells[b,a]:= res;// Input or Output type : T - ThreeLettersCode, O - OneLetterCode, N - Name
              end else begin Stringgrid1.Cells[b,a]:='' end;
           end;
        end;
    end;

  stringgrid1.AutoSizeColumns; // wyrowan kolumny

end;

procedure TForm16.ToolButton11Click(Sender: TObject);
Var
  a,b:integer;
begin

ColorAlignment := False; // wylacz kolorowanie

  for a:=0 to Stringgrid1.RowCount -1 do
    begin
      for b:=1 to Stringgrid1.ColCount -1 do
        begin
         Stringgrid1.Cells[b,a]:=AminoacidToFeature(Stringgrid1.Cells[b,a],'S'); // S - Surface
        end;
    end;

  stringgrid1.AutoSizeColumns; // wyrowan kolumny

end;

procedure TForm16.ToolButton12Click(Sender: TObject);
Var
  a,b:integer;
begin

ColorAlignment := False; // wylacz kolorowanie

  for a:=0 to Stringgrid1.RowCount -1 do
    begin
      for b:=1 to Stringgrid1.ColCount -1 do
        begin
         Stringgrid1.Cells[b,a]:=AminoacidToFeature(Stringgrid1.Cells[b,a],'V'); // V - Volume
        end;
    end;

  stringgrid1.AutoSizeColumns; // wyrowan kolumny

end;

procedure TForm16.ToolButton13Click(Sender: TObject);
Var
  save:TsaveDialog;
begin
  save:= TsaveDialog.Create(self);
  Save.Options:= Save.Options + [ofOverwritePrompt];
  Save.Filter:=IndexFilter_4;
  if save.Execute then
   begin
     if save.FileName <> '' then
      begin
         stringgrid1.SaveToCSVFile(save.FileName,';',true);
      end;
   end;
  save.Free;
end;

initialization
  {$I unit18.lrs}

end.


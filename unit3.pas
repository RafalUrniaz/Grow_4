(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, Grids, SysUtils, FileUtil, LResources, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, Buttons, CheckLst, EditBtn, StdCtrls, Clipbrd,
  Biblioteka_Grow_4 ;

type

  { TForm3 }

  TForm3 = class(TForm)
    CalcEdit1: TCalcEdit;
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure StringGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);

  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form3: TForm3; 

implementation

uses
  Unit1,unit22;

{ TForm3 }

procedure TForm3.SpeedButton2Click(Sender: TObject);
var
  lista:TstringList;
  naz:TstringList;
  war:TstringList;
  i:integer;
begin
  lista:=Tstringlist.Create;
  naz:= Tstringlist.Create;
  war:= Tstringlist.Create;

     ZaznaczenieNaListe(labelededit1.Caption,lista);
     ListaNaTylkoLiczby(lista);

stringgrid1.RowCount:= 1;

if lista.Count > 0 then
begin
      naz.Add(com79);
      war.Add(Currtostr(lista.Count));

      naz.Add(com65);
      war.Add(Currtostr(suma(lista)));

      naz.Add(com66);
      war.Add(srednia_arytmetyczna(lista));

      naz.Add(com67);
      war.Add(srednia_geometryczna(lista));

      naz.Add(com68);
      war.Add(mediana(lista));

      naz.Add(com69);
      war.Add(moda(lista));

      naz.Add(com70);
      war.Add(odchylenie_standardowe(lista));

      naz.Add(com71);
      war.Add(Currtostr(rozstep(lista)));

      naz.Add(com72);
      war.Add(wariancja(lista));

      naz.Add(com73);
      war.Add(Currtostr(MinMax(lista,True)));

      naz.Add(com74);
      war.Add(Currtostr(MinMax(lista,False)));

      naz.Add(com75);
      war.Add(wspolczynnik_zmiennosci(lista));

      naz.Add(com76);
      war.Add(wspolczynnik_skosnosci(lista));

      naz.Add(com77);
      war.Add(kurtoza(lista));

      naz.Add(com78);
      war.Add(moment4rzedu(lista));

  for i:=1 to naz.Count do
    begin
       stringgrid1.RowCount:=stringgrid1.RowCount+1;
       stringgrid1.Cells[0,i]:='1';
       stringgrid1.Cells[1,i]:=naz[i-1];
       stringgrid1.Cells[2,i]:=war[i-1];
    end;
end else begin Console.AddCommunicate(com16+'[4] '+com79+': 0',true); end;

 war.free;
 naz.Free;
 lista.Free;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin

end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
  //nowy_grid('STAT_'+inttostr(newGrid+1),True);
  newGrid:=newGrid+1;
end;

procedure TForm3.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  Tstringgrid(sender).SelectedColor:=$00DE8800;
end;

procedure TForm3.StringGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin
  if (Arow > 0) and (Acol > 1) then
   begin
     calcedit1.Caption:=stringgrid1.Cells[2,Arow];
   end;
end;


procedure TForm3.FormCreate(Sender: TObject);
begin

end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  labelededit1.Text:=ClipBoard.AsText;
end;




initialization
  {$I unit3.lrs}

end.


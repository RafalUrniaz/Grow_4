(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, Grids,SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, EditBtn, Buttons, ComCtrls, Biblioteka_Grow_4;

type

  { TForm2 }

  TForm2 = class(TForm)
    StringGrid: TStringGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGridClick(Sender: TObject);
    procedure StringGridDblClick(Sender: TObject);
    procedure StringGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form2: TForm2;

  XCell:integer=1; // <  col aktuatalne polozenie !
  YCell:integer=1; // <  row

implementation
 uses
  Unit1,Unit9,Unit14,unit2;
{ TForm1 }

{ TForm2 }


procedure TForm2.ToolButton1Click(Sender: TObject);
begin

end;

procedure TForm2.StringGridClick(Sender: TObject);
begin

end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.FormShow(Sender: TObject);
begin
 if Length(Bonds) > 0 then
  begin
    ArrayToGrid('Bonds',Form2.StringGrid);
  end;
end;

procedure TForm2.StringGridDblClick(Sender: TObject);
begin
 if XCell = NrColBonds_BondType then
   begin
    case stringgrid.Cells[XCell,Ycell] of
     'S': begin stringgrid.Cells[XCell,Ycell]:=  'D';   Bonds[Ycell-1,Xcell]:= 'D';  end;
     'D': begin stringgrid.Cells[XCell,Ycell]:=  'T';   Bonds[Ycell-1,Xcell]:= 'T';  end;
     'T': begin stringgrid.Cells[XCell,Ycell]:=  'AR';  Bonds[Ycell-1,Xcell]:= 'AR'; end;
     'AR': begin stringgrid.Cells[XCell,Ycell]:= 'DE'; Bonds[Ycell-1,Xcell]:= 'DE'; end;
     'DE': begin stringgrid.Cells[XCell,Ycell]:= 'S';  Bonds[Ycell-1,Xcell]:= 'S';  end;
    end;
   end;
end;

procedure TForm2.StringGridMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   StringGrid.MouseToCell(X,Y,Xcell,Ycell); // ustaw aktualne wspolzedzre
end;

procedure TForm2.StringGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
 i,col,row:integer;
begin
  // spawdzanie czy ktorys atom jest zaznaczony i zmiana vis i inc

 Stringgrid.MouseToCell(X,Y,Col,Row);

If (Col = 1) or (Col = 2) then
begin

// checked or not chceked
 if Stringgrid.Cells[Col,Row] = '1' then
  begin
    Bonds[Row-1,Col]:='0'; // array  activepage i row - 1, bo numerowanie od 1
  end else
    begin
      Bonds[Row-1,Col]:='1'; // array
    end;

end;
end;

procedure TForm2.ToolButton2Click(Sender: TObject);
begin
 if (Ycell > 0) and (Ycell <= StringGrid.RowCount -1) then
  begin
    Tstringgrid(StringGrid).DeleteColRow(false,Ycell);
  end;
end;

procedure TForm2.ToolButton3Click(Sender: TObject);
var
  separator:string;
begin
  separator:= inputbox(com22,com94,';') ;
  Grid_as_CSV(StringGrid,separator);
end;

procedure TForm2.ToolButton4Click(Sender: TObject);

begin

end;

procedure TForm2.ToolButton5Click(Sender: TObject);
begin
  stringgrid.RowCount:=1;
end;

procedure TForm2.ToolButton6Click(Sender: TObject);
var
  i:integer;
begin
  for i:=0 to stringgrid.ColCount -1 do
  begin
    stringgrid.Columns.Items[i].Visible:=true;
    stringgrid.ColWidths[i]:=100;
  end;
end;

initialization
  {$I unit4.lrs}

end.


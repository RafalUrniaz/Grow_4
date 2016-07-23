(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  Buttons, ExtCtrls, EditBtn, StdCtrls, Grids, ComCtrls, Process, Biblioteka_Grow_4;

ResourceString
{$I stale.inc} // dolacz stale

type

  { TPDBEditor }

  TPDBEditor = class(TForm)
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    ImageList1: TImageList;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton5: TSpeedButton;
    StringGrid: TStringGrid;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton17: TToolButton;
    ToolButton19: TToolButton;
    ToolButton2: TToolButton;
    ToolButton22: TToolButton;
    ToolButton27: TToolButton;
    ToolButton34: TToolButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure StringGridClick(Sender: TObject);
    procedure StringGridDblClick(Sender: TObject);
    procedure StringGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure ToolButton34Click(Sender: TObject);

  private
    { private declarations }
  public

    { public declarations }
  end; 

var
  PDBEditor: TPDBEditor;
  xGrid:integer=0;
  yGrid:integer=0;

implementation

uses
  Unit1, Unit14, Unit22;

procedure TPDBEditor.SpeedButton26Click(Sender: TObject);
begin

end;

procedure TPDBEditor.StringGridClick(Sender: TObject);
begin

end;

procedure TPDBEditor.StringGridDblClick(Sender: TObject);
Var
  input:string;
begin

  input:=  InputBox('Editing,...','Edit:',Stringgrid.Cells[xGrid,yGrid]);

  try
    if input > '' then
     begin
       Project[Combobox1.ItemIndex,yGrid-1,xGrid]:= input;
       Stringgrid.Cells[xGrid,yGrid]:=input;
     end;
  except
  end;

end;

procedure TPDBEditor.StringGridMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  col,row:integer;
begin

  Stringgrid.MouseToCell(X,Y,col,row);

  xGrid:= Col;
  yGrid:= Row;

  Console.AddCommunicate('xGrid:'+inttostr(xGrid)+'yGrid:'+inttostr(yGrid),true);

 if Button= mbLeft then
   begin

   end;

{if Button= mbRight then
begin

     Panel3.Top:= Y - pagecontrol.Top + 50;
     Panel3.Left:= X - pagecontrol.Left - 5;
     Panel3.Visible:=true;
end; }
end;

procedure TPDBEditor.StringGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TPDBEditor.ToolButton1Click(Sender: TObject);
begin
  GridtoArray('Project'+inttostr(Combobox1.ItemIndex),Stringgrid);
end;

procedure TPDBEditor.ToolButton2Click(Sender: TObject);
begin
  Stringgrid.AutoSizeColumns;
end;

procedure TPDBEditor.ToolButton33Click(Sender: TObject);
begin

end;

procedure TPDBEditor.ToolButton34Click(Sender: TObject);
begin

end;

procedure TPDBEditor.ComboBox1Change(Sender: TObject);
begin
  ArrayToGrid('Project'+inttostr(Combobox1.ItemIndex),Stringgrid);
end;

procedure TPDBEditor.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Stringgrid.RowCount:=1;
end;

procedure TPDBEditor.FormShow(Sender: TObject);
Var
  i:integer;
begin
  Combobox1.Items.Clear;
  For i:=1 to Project_table_form.StringGrid1.RowCount -1 do
   begin
     Combobox1.Items.Add(Project_table_form.StringGrid1.Cells[NrColProj_Name,i]);
   end;
end;

procedure TPDBEditor.SpeedButton24Click(Sender: TObject);
begin
  //Stringgrid.DeleteRow(yGrid);
end;

procedure TPDBEditor.SpeedButton25Click(Sender: TObject);
begin

end;

{ TPDBEditor }




initialization
  {$I unit2.lrs}

end.


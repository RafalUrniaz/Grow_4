(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit23;

{$mode objfpc}

interface

uses
  Classes, SysUtils, FileUtil, SynEdit, SynMemo, LResources, Forms, Controls,
  Graphics, Dialogs, Grids, ComCtrls, Buttons, Menus, StdCtrls,
  Biblioteka_Grow_4;

type

  { TScriptEditor }

  TScriptEditor = class(TForm)
    SynEdit1: TSynEdit;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure StringGrid1SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure ToolButton1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  ScriptEditor: TScriptEditor;
  GridX:integer;
  GridY:integer;

implementation

Uses
  Unit1;

{ TScriptEditor }


procedure TScriptEditor.FormActivate(Sender: TObject);
begin

end;

procedure TScriptEditor.Button1Click(Sender: TObject);
begin

end;

procedure TScriptEditor.BitBtn1Click(Sender: TObject);
begin

end;

procedure TScriptEditor.FormCreate(Sender: TObject);
begin


end;

procedure TScriptEditor.FormResize(Sender: TObject);
begin

end;

procedure TScriptEditor.MenuItem1Click(Sender: TObject);
begin

end;

procedure TScriptEditor.StringGrid1DblClick(Sender: TObject);
begin

end;

procedure TScriptEditor.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin

end;

procedure TScriptEditor.StringGrid1SelectCell(Sender: TObject; aCol,
  aRow: Integer; var CanSelect: Boolean);
begin

end;

procedure TScriptEditor.ToolButton1Click(Sender: TObject);
begin

end;

initialization
  {$I unit23.lrs}

end.


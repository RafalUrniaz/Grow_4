(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit22;

{$mode objfpc}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Biblioteka_Grow_4_grafika, Biblioteka_Grow_4, Windows,
  Biblioteka_Grow_4_konsola;

type

  { TConsole }

  TConsole = class(TForm)
    Memo1: TMemo;
    Timer1: TTimer;
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1KeyPress(Sender: TObject; var Key: char);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

    Function AddFunction(command:string):string;
    Function AddCommunicate(communicate:string;ShowConsole:boolean):boolean;
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Console: TConsole;
  CommandList:TstringList;
  CurrentPosCommandList:integer=0;

implementation
 Uses
   Unit1, Unit20;

{ TConsole }

Function TConsole.AddFunction(command:string):string;
Begin
  Mainform.PairSplitter1.Position:=Mainform.PairSplitter1.Height-200;
  Memo1.Lines[memo1.Lines.Count]:=command;
  Parse_Function();

end;

Function TConsole.AddCommunicate(communicate:string;ShowConsole:boolean):boolean;
begin
 if ShowConsole then
   begin
      Mainform.PairSplitter1.Position:=Mainform.PairSplitter1.Height-200;
   end;

   Memo1.Lines.add(DateTimeToStr(now)+'>'+communicate);
   Memo1.SelStart:= Length(Memo1.Text)+1;
   result:=true;
end;

procedure TConsole.Timer1Timer(Sender: TObject);
begin
  CommandResult();
end;

procedure TConsole.SpeedButton2Click(Sender: TObject);
begin
  // add
// fukcja parse
//i tak penstla przez caly plik
end;

procedure TConsole.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin

end;

procedure TConsole.FormCreate(Sender: TObject);
begin
  Console.ParentWindow:= Mainform.PairSplitterSide2.Handle;  // przypisanie do okna MainForm
  Console.Top:=0;
  CommandList:=TstringList.Create;
end;

procedure TConsole.FormKeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TConsole.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

end;

procedure TConsole.FormShow(Sender: TObject);
begin

end;

procedure TConsole.Memo1Change(Sender: TObject);
begin

end;

procedure TConsole.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

end;

procedure TConsole.Memo1KeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TConsole.Memo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
  );
var
  line:string;
begin

Memo1.SelStart:= Length(Memo1.Text);
Memo1.SetFocus;

 if (Key = 13) and (trim(Console.Memo1.Lines[Console.Memo1.Lines.Count-1]) > '') then
   begin

     CommandList.Add(Console.Memo1.Lines[Console.Memo1.Lines.Count-1]);

     CurrentPosCommandList:=CommandList.Count-1; // aktulany index

      if Parse_Function() = False  then
        begin
          Memo1.Lines.Add(com135);
        end;

   end;

end;

procedure TConsole.Memo1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

    Memo1.CopyToClipboard;

    Memo1.SelStart:= Length(Memo1.Text);
    Memo1.SetFocus;

end;

procedure TConsole.ComboBox1Change(Sender: TObject);
begin

end;

procedure TConsole.SpeedButton1Click(Sender: TObject);
begin

end;

initialization
  {$I unit22.lrs}

end.


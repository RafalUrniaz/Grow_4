(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit unit9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls;

type

  { TForm8 }

  TForm8 = class(TForm)
    memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    PageControl1: TPageControl;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form8: TForm8; 

implementation

uses
  Unit1,unit22;
{ TForm8 }


procedure TForm8.SpeedButton1Click(Sender: TObject);
begin
  Mainform.SaveDialog1.Filter:='Text file (*.txt)|*.txt';
  Mainform.SaveDialog1.FilterIndex:=1;
  Mainform.SaveDialog1.FileName:=pagecontrol1.Pages[pagecontrol1.ActivePageIndex].Caption+'.txt';
  if Mainform.SaveDialog1.Execute then
   begin
     if Mainform.SaveDialog1.FileName > '' then
      begin
      if pagecontrol1.Pages[pagecontrol1.ActivePageIndex].Controls[0] is Tmemo then
        begin
           try Tmemo(pagecontrol1.Pages[pagecontrol1.ActivePageIndex].Controls[0]).Lines.SaveToFile(UTF8Decode(Mainform.SaveDialog1.FileName));
            except
              Console.AddCommunicate(com7,true);
            end;
        end;
      end;
   end;
end;

procedure TForm8.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg (com26,com27+' [ '+Pagecontrol1.ActivePage.Caption+' ]', mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      if Pagecontrol1.ActivePage.Controls[0] is Tmemo then
       begin
         Tmemo(Pagecontrol1.ActivePage.Controls[0]).lines.clear;
       end;
    end;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
   memo1.VertScrollBar.Position:=0;
end;

initialization
  {$I unit9.lrs}

end.


(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit21;

{$mode objfpc}

interface

uses

  Classes, SysUtils, FileUtil, DividerBevel, LResources, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Biblioteka_Grow_4,
  Biblioteka_Grow_4_grafika;


 Type
  { TProgressBox }

  TProgressBox = class(TForm)
    Image1: TImage;
    ImageList1: TImageList;
    StaticText1: TStaticText;
    ShowTimer: TTimer;
    HideTimer: TTimer;
    AnimationTimer: TTimer;
    procedure AnimationTimerTimer(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HideTimerTimer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ShowTimerTimer(Sender: TObject);
    Procedure ShowProgressBox();
    Procedure HideProgressBox();

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  ProgressBox: TProgressBox;
  HideShowSpeed:integer=8;
  Frame:integer=0;
  WatekLoadera : TThread;

implementation
Uses
  Unit1;
{ TProgressBox }

Procedure TProgressBox.ShowProgressBox();
begin
   Progressbox.StaticText1.Caption:= pleasewait;
   ProgressBox.Visible:=true;
   AnimationTimer.Enabled:=true;
   Progressbox.AlphaBlendValue:=0;
   ShowTimer.Enabled:= true;
end;

Procedure TProgressBox.HideProgressBox();
begin
  ShowTimer.Enabled:=false;
  ProgressBox.AlphaBlendValue:=224;
  HideTimer.Enabled:=True;
end;

procedure TProgressBox.ShowTimerTimer(Sender: TObject);
begin

  HideTimer.Enabled:=false;

  if ProgressBox.AlphaBlendValue < 225 then
   begin
     ProgressBox.AlphaBlendValue := ProgressBox.AlphaBlendValue + HideShowSpeed;
   end;
end;

procedure TProgressBox.FormShow(Sender: TObject);
begin
  ProgressBox.Visible:=true;
  AnimationTimer.Enabled:=true;
  Progressbox.AlphaBlendValue:=0;
  ShowTimer.Enabled:= true;
end;

procedure TProgressBox.HideTimerTimer(Sender: TObject);
begin

  ShowTimer.Enabled:=false;

  if ProgressBox.AlphaBlendValue > 0 then
   begin
     ProgressBox.AlphaBlendValue := ProgressBox.AlphaBlendValue - HideShowSpeed;
   end;

end;

procedure TProgressBox.Image1Click(Sender: TObject);
begin

end;

procedure TProgressBox.FormHide(Sender: TObject);
begin
  ProgressBox.Visible:=true;
  ShowTimer.Enabled:=false;
  HideTimer.Enabled:=True;
end;

procedure TProgressBox.AnimationTimerTimer(Sender: TObject);
begin
  if frame < ImageList1.Count then
   begin
     Imagelist1.GetBitmap(frame,Image1.Picture.Bitmap);
     inc(frame)
   end else begin
          frame:=0;
        end;
end;

procedure TProgressBox.FormClick(Sender: TObject);
begin

end;

initialization
  {$I unit21.lrs}

end.


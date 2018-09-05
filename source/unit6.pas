(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Biblioteka_Grow_4;

type

  { TForm5 }

  TForm5 = class(TForm)
    Image1: TImage;
    ProgressBar: TProgressBar;
    SpeedButton1: TSpeedButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form5: TForm5; 

implementation

{ TForm5 }

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
  OpenDefaultBrowser('http://www.grow4.eu');
end;


initialization
  {$I unit6.lrs}

end.


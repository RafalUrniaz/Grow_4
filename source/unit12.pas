(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit12;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DividerBevel, ExtendedNotebook, OpenGLContext,
  LResources, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids, EditBtn,
  Buttons, ComCtrls, ExtCtrls, Spin, XMLPropStorage, ValEdit, Menus, registry,
  Biblioteka_Grow_4, Biblioteka_Grow_4_grafika, types;

type

  { TSettings }

  TSettings = class(TForm)
    BackgroundColor: TColorButton;
    CheckBox1: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    ColorButton1: TColorButton;
    ColorButton2: TColorButton;
    ColorButton3: TColorButton;
    ColorButton6: TColorButton;
    ColorDialog1: TColorDialog;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    DirectoryEdit1: TDirectoryEdit;
    FloatSpinEdit1: TFloatSpinEdit;
    FloatSpinEdit10: TFloatSpinEdit;
    FloatSpinEdit11: TFloatSpinEdit;
    FloatSpinEdit12: TFloatSpinEdit;
    FloatSpinEdit13: TFloatSpinEdit;
    FloatSpinEdit14: TFloatSpinEdit;
    FloatSpinEdit2: TFloatSpinEdit;
    FloatSpinEdit3: TFloatSpinEdit;
    FloatSpinEdit5: TFloatSpinEdit;
    FloatSpinEdit6: TFloatSpinEdit;
    FloatSpinEdit7: TFloatSpinEdit;
    FloatSpinEdit8: TFloatSpinEdit;
    FloatSpinEdit9: TFloatSpinEdit;
    GroupBox12: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpinEdit1: TSpinEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StringGrid1: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    procedure AtomsButtonClick(Sender: TObject; aCol, aRow: Integer);
    procedure CheckBox18Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ControlBar1Click(Sender: TObject);
    Procedure HideShowRows(Grid:TstringGrid;value:string;ColNr:integer);
    procedure LabeledEdit5Change(Sender: TObject);
    procedure LabeledEdit5DblClick(Sender: TObject);
    procedure LabeledEdit6DblClick(Sender: TObject);
    Function  SettingsIndexToValue(Grid:TstringGrid;index:string):string;
    procedure CheckBox10Change(Sender: TObject);
    procedure CheckBox11Change(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox1EditingDone(Sender: TObject);
    procedure CheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure CheckBox21MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox22MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox2EditingDone(Sender: TObject);
    procedure CheckBox2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox3EditingDone(Sender: TObject);
    procedure CheckBox4EditingDone(Sender: TObject);
    procedure CheckBox5EditingDone(Sender: TObject);
    procedure ColorButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FileNameEdit3Change(Sender: TObject);
    procedure FloatSpinEdit1Change(Sender: TObject);
    procedure FloatSpinEdit1Click(Sender: TObject);
    procedure FloatSpinEdit1EditingDone(Sender: TObject);
    procedure FloatSpinEdit2Change(Sender: TObject);
    procedure FloatSpinEdit3Change(Sender: TObject);
    procedure FloatSpinEdit8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniPropStorage1RestoreProperties(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Notebook3ChangeBounds(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure AtomsClick(Sender: TObject);
    procedure AtomsDblClick(Sender: TObject);
    procedure AtomsDrawCell(Sender: TObject; aCol, aRow: integer;
      aRect: TRect; aState: TGridDrawState);
    procedure AtomsSelection(Sender: TObject; aCol, aRow: integer);
    procedure PlanesClick(Sender: TObject);
    procedure PlanesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure PlanesSelection(Sender: TObject; aCol, aRow: integer);
    procedure StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TabSheet6Enter(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure XMLPropStorage1RestoreProperties(Sender: TObject);
    Procedure TakeADir(sender:Tobject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Settings: TSettings;
  GridX:    integer = 0;
  GridY:    integer = 0;
  acctualRow:integer = 0;
  acctualCol:integer = 0;

implementation

uses
  Unit1, unit2;

{ TSettings }

Procedure Tsettings.TakeADir(sender:Tobject);
begin
if opendialog1.Execute then
 begin
    if Opendialog1.FileName > '' then
     begin
       TLabeledEdit(sender).text:= SysToUTF8(Opendialog1.FileName);
     end;
 end;
end;

Procedure Tsettings.HideShowRows(Grid:TstringGrid;value:string;ColNr:integer);
Var
  i:integer;
begin
  For i:= Grid.FixedRows to Grid.RowCount-Grid.FixedRows do
   begin

     if (Grid.Cells[ColNr,i] = value) and (Grid.RowHeights[i] > 0) then
      begin
        Grid.RowHeights[i]:= 0;
      end
       else
      begin
         if (Grid.Cells[ColNr,i] = value) and (Grid.RowHeights[i] = 0) then
          begin
            Grid.RowHeights[i]:= Grid.DefaultRowHeight;
          end;
      end;
   end;
end;

procedure TSettings.LabeledEdit5Change(Sender: TObject);
begin

end;

procedure TSettings.LabeledEdit5DblClick(Sender: TObject);
begin
   TakeADir(sender);
end;

procedure TSettings.LabeledEdit6DblClick(Sender: TObject);
begin
  TakeADir(sender);
end;


procedure TSettings.AtomsButtonClick(Sender: TObject; aCol, aRow: Integer);
begin

end;

procedure TSettings.CheckBox18Change(Sender: TObject);
begin
  if CheckBox18.Checked = true then
   begin
     MainForm.ToolBar1.ShowCaptions:=true;
   end else
     begin
       MainForm.ToolBar1.ShowCaptions:=False;
     end;
end;

procedure TSettings.ComboBox3Change(Sender: TObject);
begin
  FloatSpinEdit1.Value:=1;
  FloatSpinEdit2.Value:=1;
  FloatSpinEdit3.Value:=-10;
end;

procedure TSettings.ControlBar1Click(Sender: TObject);
begin

end;

Function  Tsettings.SettingsIndexToValue(Grid:TstringGrid;index:string):string;
Var
  i:integer;
begin
  for i:= Grid.FixedRows to Grid.RowCount-Grid.FixedRows-1 do
   begin
     if Grid.Cells[0,i] = index then
      begin
        Result:=Grid.Cells[5,i];
      end;
   end;
end;

procedure TSettings.Label2Click(Sender: TObject);
begin

end;

procedure TSettings.LabeledEdit1Change(Sender: TObject);
begin

end;

procedure TSettings.Memo1Change(Sender: TObject);
begin

end;

procedure TSettings.Notebook3ChangeBounds(Sender: TObject);
begin

end;

procedure TSettings.SpeedButton11Click(Sender: TObject);
begin
 if Memo1.Visible = false then
  begin
     SpeedButton11.Caption:='Content';
     Memo1.Visible:= true;
  end else begin Memo1.Visible:= false; SpeedButton11.Caption:='Header';  end;
end;

procedure TSettings.SpeedButton12Click(Sender: TObject);
var
  ExtMyFile: string;
  Reg: TRegistry;
begin

  ExtMyFile := 'proj4g';  //rozszerzenie  pliku


  //Teraz definiujemy to rozszerzenie w rejestrze
  try
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CLASSES_ROOT;
    Reg.OpenKey('.' + ExtMyFile, True); //tworzy klucz w rejestrze o nazwie
    Reg.WriteString('', AnsiUpperCase(ExtMyFile) + 'file'); //tworzy wartość zawierajaca
    //nazwe klucza w rejestrze gdzie bedą
    //znajdowały się dane na
    //temat naszego pliku dla nas "XYZfile"
    Reg.CloseKey();  //zamykamy ten klucz i idziemy dalej


    Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file', True); //tworze powyższy klucz

    //teraz podaje opis naszego pliku
    Reg.WriteString('', 'Grow_4.exe'); //w miejsce kropek podajesz nazwę swojego programu
    Reg.CloseKey();  //zamykamy ten klucz i idziemy dalej

    //teraz przypisujemy plikowi ikonę
    Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\DefaultIcon', True);
    Reg.WriteString('', Application.ExeName + ',0'); //gdzie Application.ExeName to scieżka
    //do pliku zawierającego ikonę w tym
    //przypadku w tym przypadku jest to
    //nazwa i ścieżka do Twojego
    //programu ale może być to równie
    //dobrze ścieżka do innego programu,
    //ścieżka do ikony czy ścieżka
    //do jakiejś biblioteki zarówno DLLki
    //jak i ICLki a 0 to nr ikony, jeżeli
    //plik ma więcej ikon nr może być inny
    Reg.CloseKey();  //zamykamy ten klucz i idziemy dalej

    //teraz tworzymy możliwość otwierania pliku w naszym programie
    Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\open', True);
    Reg.WriteString('', '&Open in Grow_4'); //etykieta pozycji w menu kontekstowym
    Reg.CloseKey();
    Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\open\command', True);
    Reg.WriteString('', Application.ExeName + ' "%1"');
    Reg.CloseKey();

  {//lub ewentualnie  pozycje EDYTUJ w menu kontekstowym naszego pliku
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\edit', True);
  Reg.WriteString('','&Edytuj');
  Reg.CloseKey();
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\edit\command', True);
  Reg.WriteString('',Application.ExeName + ' "%1"');
  Reg.CloseKey();

  //lub jeżeli chcemy otwierać nasze pliki typu np XYZ w jeszcze innym programie
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\Open2', True);
  Reg.WriteString('','Otwórz &używając ...'); //w miejsce kropek nazwa innego programu
  Reg.CloseKey();
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\Open2\command', True);
  Reg.WriteString('',........ + ' "%1"'); //w miejsce kropek ścieżka do innego programu
  Reg.CloseKey();

  //na tej podstawie można dodawać wiele pozycji do menu kontekstowego
  //naszego pliku

  //może tam być również DRUKUJ
  //przykład dla dowolnego programu
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\printin, True);
  Reg.WriteString('',&Drukuj w ...'); //pozycja w menu kontekstowym
                                      //a w miejsce kropek nazwa programu
  Reg.CloseKey();
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\printin\command', True);
  Reg.WriteString('',........ + ' /p "%1"'); //w miejsce kropek ścieżka do programu
                                             //drukującego przy czym program wywoływany
                                             //jest z parametrem /p - oznaczającym
                                             //drukowanie więc program musi obsługiwać
                                             //taki parametr
  Reg.CloseKey();



  //przykład dla drukowania w NOTATNIKU
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\printin, True);
  Reg.WriteString('',&Drukuj w Notatniku'); //pozycja w menu kontekstowym
                                      //a w miejsce kropek nazwa programu
  Reg.CloseKey();
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\printin\command', True);
  Reg.WriteString('','%SystemRoot%\system32\NOTEPAD.EXE /p %1');
  //powyższa linia zawiera ścieżkę dostępu do Notatnika, jest ona poprawna
  //dla Win NT (2000 i XP). Dla Win 9x i Me powinno być
  //Reg.WriteString('','C:\Windows\NOTEPAD.EXE /p %1');
  Reg.CloseKey();
  }
  finally
    Reg.Free;
    ShowMessage(Com141);
  end;

end;

procedure TSettings.SpeedButton1Click(Sender: TObject);
begin

end;

procedure TSettings.SpeedButton3Click(Sender: TObject);
Var
  Plik:TStringList;
  i:integer;
begin
    if MessageDlg(com26, com164, mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        Plik:= TstringList.Create;
         // Headers
           Plik.AddStrings(Memo1.Lines);
         // Parameters
           Plik.Add('Col = <'+inttostr(StringGrid1.ColCount)+'>');
           Plik.Add('Row = <'+inttostr(StringGrid1.RowCount - StringGrid1.FixedRows)+'>');
           Plik.Add('Separator = <;>');
           Plik.Add('Name = <'+Copy(Combobox1.Text,0,Length(Combobox1.Text)-5)+'>');
           Plik.Add('Headers = <'+StringReplace(StringReplace((Copy(Stringgrid1.Rows[0].DelimitedText,0,Length(Stringgrid1.Rows[0].DelimitedText))+'>'),',',';',[rfReplaceAll]),'"','',[rfReplaceAll])+'>');
           Plik.Add('Begin');

           for i:=StringGrid1.FixedRows to Stringgrid1.RowCount -1 do
            begin
              Plik.Add(StringReplace(Copy(Stringgrid1.Rows[i].DelimitedText,0,Length(Stringgrid1.Rows[i].DelimitedText)),',',';',[rfReplaceAll]));
            end;

           Plik.Add('End');

          try
            Plik.SaveToFile(ExtractFilePath(Application.ExeName)+'\gtbl\'+combobox1.Text);
          except
            Showmessage(com7);
          end;
        Plik.Free;
      end;
end;

procedure TSettings.SpeedButton4Click(Sender: TObject);
var
  ExtMyFile: string;
  Reg: TRegistry;
begin

  ExtMyFile := 'proj4g';  //rozszerzenie  pliku


  //Teraz definiujemy to rozszerzenie w rejestrze
  try
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CLASSES_ROOT;
    Reg.OpenKey('.' + ExtMyFile, True); //tworzy klucz w rejestrze o nazwie
    Reg.WriteString('', AnsiUpperCase(ExtMyFile) + 'file'); //tworzy wartość zawierajaca
    //nazwe klucza w rejestrze gdzie bedą
    //znajdowały się dane na
    //temat naszego pliku dla nas "XYZfile"
    Reg.CloseKey();  //zamykamy ten klucz i idziemy dalej


    Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file', True); //tworze powyższy klucz

    //teraz podaje opis naszego pliku
    Reg.WriteString('', 'Grow_4.exe'); //w miejsce kropek podajesz nazwę swojego programu
    Reg.CloseKey();  //zamykamy ten klucz i idziemy dalej

    //teraz przypisujemy plikowi ikonę
    Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\DefaultIcon', True);
    Reg.WriteString('', Application.ExeName + ',0'); //gdzie Application.ExeName to scieżka
    //do pliku zawierającego ikonę w tym
    //przypadku w tym przypadku jest to
    //nazwa i ścieżka do Twojego
    //programu ale może być to równie
    //dobrze ścieżka do innego programu,
    //ścieżka do ikony czy ścieżka
    //do jakiejś biblioteki zarówno DLLki
    //jak i ICLki a 0 to nr ikony, jeżeli
    //plik ma więcej ikon nr może być inny
    Reg.CloseKey();  //zamykamy ten klucz i idziemy dalej

    //teraz tworzymy możliwość otwierania pliku w naszym programie
    Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\open', True);
    Reg.WriteString('', '&Open in Grow_4'); //etykieta pozycji w menu kontekstowym
    Reg.CloseKey();
    Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\open\command', True);
    Reg.WriteString('', Application.ExeName + ' "%1"');
    Reg.CloseKey();

  {//lub ewentualnie  pozycje EDYTUJ w menu kontekstowym naszego pliku
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\edit', True);
  Reg.WriteString('','&Edytuj');
  Reg.CloseKey();
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\edit\command', True);
  Reg.WriteString('',Application.ExeName + ' "%1"');
  Reg.CloseKey();

  //lub jeżeli chcemy otwierać nasze pliki typu np XYZ w jeszcze innym programie
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\Open2', True);
  Reg.WriteString('','Otwórz &używając ...'); //w miejsce kropek nazwa innego programu
  Reg.CloseKey();
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\Open2\command', True);
  Reg.WriteString('',........ + ' "%1"'); //w miejsce kropek ścieżka do innego programu
  Reg.CloseKey();

  //na tej podstawie można dodawać wiele pozycji do menu kontekstowego
  //naszego pliku

  //może tam być również DRUKUJ
  //przykład dla dowolnego programu
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\printin, True);
  Reg.WriteString('',&Drukuj w ...'); //pozycja w menu kontekstowym
                                      //a w miejsce kropek nazwa programu
  Reg.CloseKey();
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\printin\command', True);
  Reg.WriteString('',........ + ' /p "%1"'); //w miejsce kropek ścieżka do programu
                                             //drukującego przy czym program wywoływany
                                             //jest z parametrem /p - oznaczającym
                                             //drukowanie więc program musi obsługiwać
                                             //taki parametr
  Reg.CloseKey();



  //przykład dla drukowania w NOTATNIKU
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\printin, True);
  Reg.WriteString('',&Drukuj w Notatniku'); //pozycja w menu kontekstowym
                                      //a w miejsce kropek nazwa programu
  Reg.CloseKey();
  Reg.OpenKey(AnsiUpperCase(ExtMyFile) + 'file\shell\printin\command', True);
  Reg.WriteString('','%SystemRoot%\system32\NOTEPAD.EXE /p %1');
  //powyższa linia zawiera ścieżkę dostępu do Notatnika, jest ona poprawna
  //dla Win NT (2000 i XP). Dla Win 9x i Me powinno być
  //Reg.WriteString('','C:\Windows\NOTEPAD.EXE /p %1');
  Reg.CloseKey();
  }
  finally
    Reg.Free;
    ShowMessage(Com141);
  end;

end;

procedure TSettings.SpeedButton5Click(Sender: TObject);
begin
  OpenDefaultBrowser(Help_URL);
end;

procedure TSettings.SpeedButton6Click(Sender: TObject);
begin
  LabeledEdit1.Text := CurrToStr(StrToCurr(LabeledEdit1.Text) + 0.1);
end;

procedure TSettings.SpeedButton7Click(Sender: TObject);
begin
  if StrToCurr(LabeledEdit1.Text) > 0.1 then
  begin
    LabeledEdit1.Text := CurrToStr(StrToCurr(LabeledEdit1.Text) - 0.1);
  end;
end;

procedure TSettings.SpeedButton8Click(Sender: TObject);
begin
  Start3dDraw := False; // zatrzyaj rysowanie
  if StrToCurr(LabeledEdit2.Text) > 0 then
  begin
    LabeledEdit2.Text := CurrToStr(StrToCurr(LabeledEdit2.Text) - 1);
  end;
  Refresh3Ddraw();
end;

procedure TSettings.SpeedButton9Click(Sender: TObject);
begin
  Start3dDraw := False; // zatrzyaj rysowanie
  if StrToCurr(LabeledEdit2.Text) < 100 then
  begin
    LabeledEdit2.Text := CurrToStr(StrToCurr(LabeledEdit2.Text) + 1);
  end;
  Refresh3Ddraw();
end;

procedure TSettings.AtomsClick(Sender: TObject);
begin

end;

procedure TSettings.AtomsDblClick(Sender: TObject);
begin

end;

procedure TSettings.AtomsDrawCell(Sender: TObject; aCol, aRow: integer;
  aRect: TRect; aState: TGridDrawState);
begin

end;

procedure TSettings.AtomsSelection(Sender: TObject; aCol, aRow: integer);
begin
  GridX := aCol;
  GridY := aRow;
end;

procedure TSettings.PlanesClick(Sender: TObject);
begin

end;


procedure TSettings.PlanesMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
 {
  if (GridX = 3) then
  begin
    if Planes.Cells[GridX, GridY] = '1' then
    begin
      Planes.Cells[GridX, GridY] := '0';
    end
    else
    begin
      Planes.Cells[GridX, GridY] := '1';
    end;
  end;}
end;

procedure TSettings.PlanesSelection(Sender: TObject; aCol, aRow: integer);
begin
  GridX := aCol;
  GridY := aRow;
end;

procedure TSettings.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  Stringgrid1.Align:=alClient;
end;

procedure TSettings.TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

procedure TSettings.TabSheet6Enter(Sender: TObject);
begin

end;

procedure TSettings.TabSheet6Show(Sender: TObject);
Var
  lista:TstringList;
  i:integer;
begin
  lista:= TstringList.Create;

  FileListFromDirectory(ExtractFilePath(Application.ExeName)+'\gtbl\','*.gtbl',lista);

  Combobox1.Items.Clear;

  for i:=0 to lista.Count -1 do
   begin
    Combobox1.Items.Add(lista[i]);
   end;

  Combobox1.ItemIndex:=0;

  Lista.Free;
end;

procedure TSettings.ToolButton10Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton11Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton12Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton13Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton14Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton15Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton1Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton3Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton5Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton6Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton7Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton8Click(Sender: TObject);
begin

end;

procedure TSettings.ToolButton9Click(Sender: TObject);
begin

end;

procedure TSettings.TrackBar1Change(Sender: TObject);
begin

end;

procedure TSettings.TrackBar2Change(Sender: TObject);
begin

end;

procedure TSettings.TrackBar3Change(Sender: TObject);
begin

end;

procedure TSettings.XMLPropStorage1RestoreProperties(Sender: TObject);
begin

end;

procedure TSettings.CheckBox1Change(Sender: TObject);
begin
  CheckBox2.Checked := False;
end;

procedure TSettings.CheckBox10Change(Sender: TObject);
begin

end;

procedure TSettings.CheckBox11Change(Sender: TObject);
begin

end;

procedure TSettings.CheckBox1Click(Sender: TObject);
begin
  CheckBox2.Checked := False;
end;

procedure TSettings.CheckBox1EditingDone(Sender: TObject);
begin
  Start3dDraw := False; // zatrzyaj rysowanie
  if CheckBox1.Checked = True then
  begin
    CheckBox2.Checked := False;
  end
  else
  begin
    CheckBox2.Checked := True;
  end;

  Refresh3Ddraw();
end;

procedure TSettings.CheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin

end;

procedure TSettings.CheckBox21MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if CheckBox21.Checked then
   begin
     Checkbox22.Checked:=false;
   end;
end;

procedure TSettings.CheckBox22MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if CheckBox22.Checked then
   begin
     Checkbox21.Checked:=false;
   end;
end;

procedure TSettings.CheckBox2Change(Sender: TObject);
begin

end;

procedure TSettings.CheckBox2Click(Sender: TObject);
begin
  CheckBox1.Checked := False;
end;

procedure TSettings.CheckBox2EditingDone(Sender: TObject);
begin
  Start3dDraw := False; // zatrzyaj rysowanie
  if CheckBox2.Checked = True then
  begin
    CheckBox1.Checked := False;
  end
  else
  begin
    CheckBox1.Checked := True;
  end;

  Refresh3Ddraw();
end;

procedure TSettings.CheckBox2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  if CheckBox1.Checked = True then
  begin
    CheckBox2.Checked := False;
  end
  else
  begin
    CheckBox2.Checked := True;
  end;
end;

procedure TSettings.CheckBox3Change(Sender: TObject);
begin
  Start3dDraw := False; // zatrzyaj rysowanie
end;

procedure TSettings.CheckBox3EditingDone(Sender: TObject);
begin
  Start3dDraw := False; // zatrzyaj rysowanie
  Refresh3Ddraw();
end;

procedure TSettings.CheckBox4EditingDone(Sender: TObject);
begin

end;

procedure TSettings.CheckBox5EditingDone(Sender: TObject);
begin

end;

procedure TSettings.ColorButton1Click(Sender: TObject);
begin

end;

procedure TSettings.ComboBox1Change(Sender: TObject);
begin
   LoadArrayFromFileToGrid(ExtractFilePath(Application.ExeName)+'gtbl\'+ComboBox1.Text, StringGrid1, Memo1);
end;

procedure TSettings.ComboBox2Change(Sender: TObject);
begin

end;

procedure TSettings.FileNameEdit3Change(Sender: TObject);
begin

end;

procedure TSettings.FloatSpinEdit1Change(Sender: TObject);
begin

end;

procedure TSettings.FloatSpinEdit1Click(Sender: TObject);
begin

end;

procedure TSettings.FloatSpinEdit1EditingDone(Sender: TObject);
begin
  Start3dDraw := False; // zatrzyaj rysowanie
  if g4g_Average_X <> FloatSpinEdit1.Value then
  begin
    g4g_Average_X := FloatSpinEdit1.Value;
  end;
  Refresh3Ddraw();
end;

procedure TSettings.FloatSpinEdit2Change(Sender: TObject);
begin
   {Start3dDraw:=false; // zatrzyaj rysowanie
      if g4g_Average_Y <> FloatSpinEdit2.Value then
       begin
         g4g_Average_Y:=FloatSpinEdit2.Value;
       end;
    Refresh3Ddraw(); }
end;

procedure TSettings.FloatSpinEdit3Change(Sender: TObject);
begin
   {Start3dDraw:=false; // zatrzyaj rysowanie
     if g4g_Average_Z <> FloatSpinEdit3.Value then
      begin
        g4g_Average_Z:=FloatSpinEdit3.Value;
      end;
    Refresh3Ddraw();}
end;

procedure TSettings.FloatSpinEdit8Click(Sender: TObject);
begin

end;

procedure TSettings.FormCreate(Sender: TObject);
begin

end;

procedure TSettings.FormShow(Sender: TObject);
begin

end;

procedure TSettings.IniPropStorage1RestoreProperties(Sender: TObject);
begin

end;

procedure TSettings.Label11Click(Sender: TObject);
begin
end;

initialization
  {$I unit12.lrs}

end.

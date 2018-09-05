(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit17;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DividerBevel, LResources, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, Spin, Menus, ComCtrls,
  EditBtn, math, Biblioteka_Grow_4, Biblioteka_Grow_4_grafika;

type

  { TForm15 }

  TForm15 = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    ColorButton1: TColorButton;
    ColorButton2: TColorButton;
    ComboBox2: TComboBox;
    DividerBevel1: TDividerBevel;
    DividerBevel2: TDividerBevel;
    DividerBevel3: TDividerBevel;
    DividerBevel4: TDividerBevel;
    DividerBevel5: TDividerBevel;
    DividerBevel6: TDividerBevel;
    DividerBevel7: TDividerBevel;
    DividerBevel8: TDividerBevel;
    FloatSpinEdit1: TFloatSpinEdit;
    Label1: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Notebook1: TNotebook;
    Page1: TPage;
    Page2: TPage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpinEdit1: TSpinEdit;
    StatusBar1: TStatusBar;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGridBottom: TStringGrid;
    StringGridRight: TStringGrid;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    procedure CheckBox10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure CheckBox2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox5Change(Sender: TObject);
    procedure CheckBox5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox8Change(Sender: TObject);
    procedure CheckBox9Change(Sender: TObject);
    procedure CheckBox9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FloatSpinEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton6Click(Sender: TObject);
    procedure ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure StringGrid1ColRowMoved(Sender: TObject; IsColumn: Boolean;
      sIndex, tIndex: Integer);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure StringGrid1Enter(Sender: TObject);
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StringGrid1TopLeftChanged(Sender: TObject);
    procedure StringGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure StringGridBottomDrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure StringGridBottomMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StringGridRightDrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure StringGridRightMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form15: TForm15;

implementation


Uses
 Unit14,Unit1,Unit2,Unit9,Unit22;

var
  Do_Gradient:boolean=false;
  DoOnce:boolean=true;
  // global lists for gradient function
  ColRowList,colors:TstringList;Button_down:boolean=False;
  selected_grid:integer;
  Min,Max:Currency;
{ TForm15 }

procedure TForm15.FormShow(Sender: TObject);
begin
 checkbox5.Checked:=true;
 checkbox9.Checked:=false;
 checkbox10.Checked:=false;

  // inne pola
      checkbox2.Enabled:=true;
      checkbox7.Checked:=true;
      checkbox3.Enabled:=true;
      checkbox1.Enabled:=true;
      checkbox6.Enabled:=true;
      checkbox7.Enabled:=true;
      checkbox2.Checked:=false; // uncheck
      checkbox3.Checked:=false;
      checkbox6.Checked:=false;
      checkbox1.Checked:=false;

  FillComboBox(Combobox2,Project_table_form.StringGrid1,'PRO',4,3);

end;

procedure TForm15.CheckBox2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

end;

procedure TForm15.CheckBox2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    if Checkbox2.Checked then
   begin
      Checkbox1.Checked:=false;
      Checkbox6.Checked:=false;
      checkbox3.Checked:=false;
      checkbox7.Checked:=false;
   end;
end;

procedure TForm15.CheckBox3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    if Checkbox3.Checked then
   begin
      Checkbox2.Checked:=false;
      checkbox1.Checked:=false;
      Checkbox6.Checked:=false;
      checkbox7.Checked:=false;
   end;
end;

procedure TForm15.CheckBox4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TForm15.CheckBox5Change(Sender: TObject);
begin

end;

procedure TForm15.CheckBox5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Checkbox5.Checked then
   begin
      Checkbox10.Checked:=false;
      Checkbox9.Checked:=false;
      // inne pola
      checkbox2.Enabled:=true;
      checkbox7.Checked:=true;
      checkbox3.Enabled:=true;
      checkbox1.Enabled:=true;
      checkbox6.Enabled:=true;
      checkbox7.Enabled:=true;
      checkbox2.Checked:=false; // uncheck
      checkbox3.Checked:=false;
      checkbox6.Checked:=false;
      checkbox1.Checked:=false;
      checkbox11.Checked:=false;

      FillComboBox(Combobox2,Project_table_form.StringGrid1,'PRO',4,3);

   end else begin Checkbox5.Checked:=true; end;
end;

procedure TForm15.CheckBox6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Checkbox6.Checked then
   begin
      Checkbox2.Checked:=false;
      checkbox1.Checked:=false;
      Checkbox3.Checked:=false;
      checkbox7.Checked:=false;
   end;
end;

procedure TForm15.CheckBox7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Checkbox7.Checked then
   begin
      Checkbox2.Checked:=false;
      checkbox3.Checked:=false;
      checkbox6.Checked:=false;
      checkbox1.Checked:=false;
   end;
end;

procedure TForm15.CheckBox8Change(Sender: TObject);
begin
  Stringgrid1.Repaint;
  Stringgridbottom.Repaint;
  Stringgridright.Repaint;
end;

procedure TForm15.CheckBox9Change(Sender: TObject);
begin

end;

procedure TForm15.CheckBox9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Checkbox9.Checked then
   begin
      Checkbox10.Checked:=false;
      Checkbox5.Checked:=false;
      // inne pola
      checkbox2.Enabled:=true;
      checkbox2.Checked:=true; // RMSD
      checkbox3.Enabled:=true;
      checkbox1.Enabled:=false;
      checkbox6.Enabled:=false;
      checkbox7.Enabled:=false;
      checkbox6.Checked:=false;
      checkbox1.Checked:=false;
      checkbox7.Checked:=false;
      checkbox3.Checked:=false;
      checkbox11.Checked:=false;

      FillComboBox(Combobox2,Project_table_form.StringGrid1,'LIG',4,3);

   end else begin Checkbox9.Checked:=true; end;
end;

procedure TForm15.FloatSpinEdit1Change(Sender: TObject);
begin

end;

procedure TForm15.FormCreate(Sender: TObject);
begin
  ColRowList:= TstringList.Create;
  colors:=TstringList.Create;
end;

procedure TForm15.FormResize(Sender: TObject);
begin

end;

procedure TForm15.CheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if Checkbox1.Checked then
   begin
      Checkbox2.Checked:=false;
      checkbox3.Checked:=false;
      checkbox6.Checked:=false;
      checkbox7.Checked:=false;
   end;
end;

procedure TForm15.CheckBox10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Checkbox10.Checked then
   begin
      Checkbox9.Checked:=false;
      Checkbox5.Checked:=false;
      // inne pola
      checkbox2.Enabled:=true;
      checkbox7.Checked:=true;
      checkbox3.Enabled:=true;
      checkbox1.Enabled:=true;
      checkbox6.Enabled:=true;
      checkbox7.Enabled:=true;
      checkbox2.Checked:=false; // RMSD
      checkbox3.Checked:=false;
      checkbox6.Checked:=false;
      checkbox1.Checked:=false;
      checkbox11.Checked:=false;

      FillComboBox(Combobox2,Project_table_form.StringGrid1,'LIG',4,3);

   end else begin Checkbox10.Checked:=true; end;
end;

procedure TForm15.CheckBox11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Checkbox11.Checked then
   begin
      Checkbox10.Checked:=false;
      Checkbox9.Checked:=false;
      // inne pola
      checkbox2.Enabled:=true;
      checkbox7.Checked:=true;
      checkbox3.Enabled:=true;
      checkbox1.Enabled:=true;
      checkbox6.Enabled:=true;
      checkbox7.Enabled:=true;
      checkbox2.Checked:=false; // uncheck
      checkbox3.Checked:=false;
      checkbox6.Checked:=false;
      checkbox1.Checked:=false;
      checkbox5.Checked:=false;

      FillComboBox(Combobox2,Project_table_form.StringGrid1,'PRO',4,3);

   end else begin Checkbox11.Checked:=true; end;

end;

procedure TForm15.Memo1Change(Sender: TObject);
begin

end;

procedure TForm15.Panel2Click(Sender: TObject);
begin

end;

procedure TForm15.RadioButton1Change(Sender: TObject);
begin

end;

procedure TForm15.RadioButton1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if RadioButton1.Checked then
   begin
      RadioButton2.Checked:=false;
   end;
end;

procedure TForm15.RadioButton2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if RadioButton2.Checked then
   begin
      RadioButton1.Checked:=false;
   end;
end;

procedure TForm15.RadioButton3Change(Sender: TObject);
begin

end;

procedure TForm15.RadioButton3Click(Sender: TObject);
begin
  Stringgrid1.Repaint;
  Stringgridbottom.Repaint;
  Stringgridright.Repaint;
end;

procedure TForm15.RadioButton3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if RadioButton3.Checked then
   begin
      RadioButton4.Checked:=false;
   end;
end;

procedure TForm15.RadioButton4Click(Sender: TObject);
begin
  Stringgrid1.Repaint;
  Stringgridbottom.Repaint;
  Stringgridright.Repaint;

end;

procedure TForm15.RadioButton4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    if RadioButton4.Checked then
   begin
      RadioButton3.Checked:=false;
   end;
end;

procedure TForm15.RadioButton5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TForm15.RadioButton6Click(Sender: TObject);
begin
  Stringgrid1.Repaint;
  Stringgridbottom.Repaint;
  Stringgridright.Repaint;
end;

procedure TForm15.ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
begin

end;

procedure TForm15.SpeedButton10Click(Sender: TObject);
var
 Lista:Tstringlist;
begin
// prepare the scales
  Lista:=TstringList.Create;

// general for matrix - stringgrid1
if RadioButton7.Checked then
begin
// colect data
   GridToValuesList(StringGrid1,Lista);
// do scale for -stringgrid1
   GradientScaleToGrid(ColorButton1.ButtonColor,ColorButton2.ButtonColor,SpinEdit1.Value,Lista,StringGrid2,True);
end;

// StringGridRight
if RadioButton8.Checked then
begin
// colect data
   GridToValuesList(StringGridRight,Lista);
// do scale for -StringGridRight
   GradientScaleToGrid(ColorButton1.ButtonColor,ColorButton2.ButtonColor,SpinEdit1.Value,Lista,StringGrid2,True);
end;

// StringGridRight
if RadioButton9.Checked then
begin
// colect data
   GridToValuesList(StringGridBottom,Lista);
// do scale for -StringGridRight
   GradientScaleToGrid(ColorButton1.ButtonColor,ColorButton2.ButtonColor,SpinEdit1.Value,Lista,StringGrid2,True);
end;

 Lista.Free;

Notebook1.PageIndex:=1;
end;

procedure TForm15.SpeedButton11Click(Sender: TObject);
Var
 i:integer;
begin

  stringgrid1.LeftCol:=1;
  stringgridbottom.LeftCol:=1;

  For i:=StringGrid1.FixedCols to Stringgrid1.ColCount -1 do
  begin
    Stringgrid1.ColWidths[i]:= Stringgrid1.ColWidths[i] + 1;
    StringGridBottom.ColWidths[i]:= StringGridBottom.ColWidths[i] + 1;
  end;

end;

procedure TForm15.SpeedButton12Click(Sender: TObject);
Var
 i:integer;
begin

  stringgrid1.LeftCol:=1;
  stringgridbottom.LeftCol:=1;

  For i:=StringGrid1.FixedCols to Stringgrid1.ColCount -1 do
  begin
   if Stringgrid1.ColWidths[i] - 1 > 5 then
    begin
      Stringgrid1.ColWidths[i]:= Stringgrid1.ColWidths[i] - 1;
      StringGridBottom.ColWidths[i]:= StringGridBottom.ColWidths[i] - 1;
    end;
  end;

end;

procedure TForm15.SpeedButton13Click(Sender: TObject);
begin
 if notebook1.Visible then
  begin
    notebook1.Visible:= false;
    speedbutton13.Caption:='>>';
  end else begin speedbutton13.Caption:='<<'; notebook1.Visible:= true; end;
end;

procedure TForm15.SpeedButton14Click(Sender: TObject);
var
  SD : TSaveDialog;
  I,b: Integer;
  CSV : TStrings;
  FileName : String;
begin
  Try
  SD := TSaveDialog.Create(MainForm);
  //SD.FileName:= MainForm.Pagecontrol.ActivePage.Caption + '.csv';
  SD.Filter := 'CSV (*.csv)|*.CSV';
  If SD.Execute = True Then
  Begin
    SD.Filter:= IndexFilter_4;
    FileName := SD.FileName;
    If Copy(FileName,Pos('.',FileName),Length(FileName)-Pos('.',FileName)+1) <> '.csv' Then FileName := FileName + '.csv';
    Screen.Cursor := crHourGlass;
    CSV := TStringList.Create;
    Try
      begin
        if MessageDlg(com22,com39, mtConfirmation, mbYesNo, 0) = mrYes then
         begin
           b:=0;
         end else begin b:=1; end;

         For I:=b To Stringgrid1.RowCount -1 Do
          begin                          // zamien na inny seperator
            CSV.Add(StringReplace(Stringgrid1.Rows[I].CommaText, ',',';',[rfReplaceAll, rfIgnoreCase]) +';'+ stringgridright.Cells[0,i]);
          end;

         CSV.Add(StringReplace(Stringgridbottom.Rows[0].CommaText, ',',';',[rfReplaceAll, rfIgnoreCase]));

         CSV.SaveToFile(UTF8decode(FileName));
      end;
    Finally
      CSV.Free;
    End;
  End;

  Finally
    SD.Free;
    Screen.Cursor := crDefault;
  End;
end;

procedure TForm15.SpeedButton15Click(Sender: TObject);
Var
  i,b,count:integer;
  cur:currency;
begin
 for i:= 1 to Stringgridbottom.ColCount -1 do
  begin                          // mniejsze niż                               // i większe od
    if (strtocurr(stringgridbottom.Cells[i,0]) < floatspinedit1.Value) then
     begin
       Stringgridbottom.ColWidths[i]:= 0;                                                                        // TODO: tak aby sie howaly atopmy gdy wartosc miejsz od !!!!!
       Stringgrid1.ColWidths[i]:= 0;
    {    if Project_table_form.StringGrid1.Cells[NrColProj_Type,Project_table_form.StringGrid1.RowCount - 1] = 'AN1' then
         begin
           Project[Project_table_form.StringGrid1.RowCount - 2]Tstringgrid(mainform.PageControl.Page[mainform.PageControl.PageCount-1].Controls[0]).Cells[NrColVis,i]:='0';
           Tstringgrid(mainform.PageControl.Page[mainform.PageControl.PageCount-1].Controls[0]).Cells[NrColInc,i]:='0';
         end;}
     end else
      begin
        Stringgridbottom.ColWidths[i]:= Stringgridbottom.DefaultColWidth;
        Stringgrid1.ColWidths[i]:= stringgrid1.DefaultColWidth;
        {if Project_table_form.StringGrid1.Cells[NrColProj_Type,mainform.PageControl.PageCount-1] = 'AN1' then
         begin
           Tstringgrid(mainform.PageControl.Page[mainform.PageControl.PageCount-1].Controls[0]).Cells[NrColVis,i]:='1';
           Tstringgrid(mainform.PageControl.Page[mainform.PageControl.PageCount-1].Controls[0]).Cells[NrColInc,i]:='1';
         end; }
      end;
  end;

 count:=0;
 cur:=0;

 for i:=1 to stringgrid1.RowCount -1 do
  begin
    for b:=1 to stringgrid1.ColCount -1 do
     begin
       if stringgrid1.ColWidths[b] > 5 then
        begin
          cur:= cur + strtocurr(stringgrid1.Cells[b,i]);
          inc(count);
        end;
     end;
    stringgridright.Cells[0,i]:= currtostr(cur / count);
  end;

end;

procedure TForm15.SpeedButton1Click(Sender: TObject);
begin
 if g4g_AN1_scale_factor - 0.01 > 0 then   // zrobic w settings !!!
  begin
    g4g_AN1_scale_factor :=  g4g_AN1_scale_factor - 0.01;
  end;
end;

procedure TForm15.SpeedButton2Click(Sender: TObject);
begin
  Notebook1.PageIndex:=0;
end;

procedure TForm15.SpeedButton3Click(Sender: TObject);
var
 i,cel_width_gradient,cel_height_gradient:integer;
 Lista:TstringList;
begin


Do_Gradient:= true;
Stringgrid1.Repaint;
StringGridBottom.Repaint;
StringGridRight.Repaint;

Screen.Cursor := crDefault;

// kolumny do pocztaku, zeby dobze gradietowal
Stringgrid1.LeftCol:=0;
StringgridBottom.LeftCol:=0;
// koloruj gradient


end;

procedure TForm15.SpeedButton4Click(Sender: TObject);
begin
  if Stringgrid1.LeftCol +1 <= stringgrid1.ColCount -1 then
   begin
     Stringgrid1.LeftCol:=Stringgrid1.LeftCol +1 ;
     stringgridBottom.LeftCol:=Stringgrid1.LeftCol ;
   end;
end;

procedure TForm15.SpeedButton4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TForm15.SpeedButton4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TForm15.SpeedButton5Click(Sender: TObject);
begin
  if Stringgrid1.LeftCol -1 >= 0 then
   begin
     Stringgrid1.LeftCol:=Stringgrid1.LeftCol -1 ;
     Stringgridbottom.LeftCol:=Stringgrid1.LeftCol;
   end;
end;

procedure TForm15.SpeedButton5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TForm15.SpeedButton5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TForm15.SpeedButton6Click(Sender: TObject);
var
  names,included,results,acctual,res,x1,x2,y1,y2,z1,z2:TstringList;
  i,inc,cols,rows:integer;
  CurrRes:string;
  gridA,gridB:Tstringgrid;
begin
{// jesli juz byl gradient to stop
Do_Gradient:= false;

//DoOnce:= True;
//Screen.Cursor := crHourglass;
// wyczysc
  Stringgrid1.ColCount:=1;
  StringGrid1.FixedCols:=1;

  StringGrid1.RowCount:=1;
  StringGrid1.FixedRows:=1;

  StringGrid1.Cells[0,0]:= 'Analysis / Name:';

  // wyczusc pola z pozostalych gridów bottom

  if checkbox9.Checked then // ATOMS
   begin

     included:= TstringList.Create;
     names:=TstringList.Create;  //Nazwy

     included.Clear;
     names.Clear;


   for inc:=1 to project_table_form.StringGrid1.RowCount -1 do // lista included przygotuj
      begin
      if project_table_form.StringGrid1.Cells[NrColProj_Name,inc] = combobox2.Text then
       begin
          selected_grid:= inc;
          if radiobutton1.Checked then
           begin
             included.add(inttostr(inc));
             names.Add(project_table_form.StringGrid1.Cells[NrColProj_Name,inc]);
           end;
       end
        else
      begin
        if (project_table_form.StringGrid1.Cells[4,inc] = 'LIG') and  (project_table_form.StringGrid1.Cells[2,inc] = '1') then
          begin
            included.add(inttostr(inc));
            names.Add(project_table_form.StringGrid1.Cells[NrColProj_Name,inc]);
          end;
      end;
      end;


// Naglowki TYLKO included w gridzie


   {

for i:=1 to TstringGrid(Mainform.PageControl.Pages[selected_grid].Controls[0]).RowCount -1  do
   begin
     if TstringGrid(Mainform.PageControl.Pages[selected_grid].Controls[0]).Cells[NrColInc,i] = '1' then
      begin
        stringgrid1.ColCount:=stringgrid1.ColCount +1;
        Stringgrid1.Cells[stringgrid1.ColCount-1,0]:= TstringGrid(Mainform.PageControl.Pages[selected_grid].Controls[0]).Cells[NrColAtomName,i];
      end;
   end;
    }


// Obliczenia

 x1:= TstringList.Create;
 x2:= TstringList.Create;
 y1:= TstringList.Create;
 y2:= TstringList.Create;
 z1:= TstringList.Create;
 z2:= TstringList.Create;



for inc:=0 to included.Count -2 do
begin

Stringgrid1.RowCount:= Stringgrid1.RowCount + 1;
   {
for i:=1 to TstringGrid(Mainform.PageControl.Pages[strtoint(included[0])].Controls[0]).RowCount -1  do
   begin
     if TstringGrid(Mainform.PageControl.Pages[strtoint(included[0])].Controls[0]).Cells[NrColInc,i] = '1' then
      begin
         if radiobutton2.Checked then // selected
          begin
            GridA:= TstringGrid(Mainform.PageControl.Pages[selected_grid].Controls[0]);
            Stringgrid1.Cells[0,inc+1]:= combobox2.Text+'->'+names[inc];

            GridB:= TstringGrid(Mainform.PageControl.Pages[strtoint(included[inc])].Controls[0]);

          end;

         if radiobutton1.Checked then // zmien kolejen
          begin
            GridA:= TstringGrid(Mainform.PageControl.Pages[strtoint(included[inc])].Controls[0]);
            Stringgrid1.Cells[0,inc+1]:= names[inc]+'->'+names[inc+1];

            GridB:= TstringGrid(Mainform.PageControl.Pages[strtoint(included[inc+1])].Controls[0]);
          end;

  x1.Clear;x2.Clear;y1.Clear;y2.Clear;z1.Clear;z2.Clear;

  x1.Add(GridA.Cells[NrColX,i]);
  y1.Add(GridA.Cells[NrColY,i]);
  z1.Add(GridA.Cells[NrColZ,i]);

  x2.Add(GridB.Cells[NrColX,i]);
  y2.Add(GridB.Cells[NrColY,i]);
  z2.Add(GridB.Cells[NrColZ,i]);

if checkbox2.Checked then // RMSD
   begin
     StringGrid1.Cells[i, stringgrid1.RowCount-1]:=  RMSD(x1,y1,z1,x2,y2,z2,false);
   end;

if checkbox3.Checked then // RMSD
    begin
      StringGrid1.Cells[i, stringgrid1.RowCount-1]:= CurrToStr(dlugosc_wektora(strtocurr(x1[0]),strtocurr(y1[0]),strtocurr(z1[0]),strtocurr(x2[0]),strtocurr(y2[0]),strtocurr(z2[0]),0));
    end;

      end;
   end;

end;

x1.Free;
x2.Free;
y1.Free;
y2.Free;
z1.Free;
z2.Free;

included.Free;
// functions resume

// srednie z kolumn
  acctual:= Tstringlist.Create;
  Res:=tstringlist.Create;

  for cols:= Stringgrid1.FixedCols to Stringgrid1.ColCount -1  do
   begin
    for Rows:= stringgrid1.FixedRows to StringGrid1.RowCount -1 do
       begin
         acctual.Add(StringGrid1.Cells[cols,rows]); // zmmienieja kolumne co 1 i zczytuj wszytskie rowsy
       end;
    Res.Add(srednia_arytmetyczna(acctual));
    acctual.Clear;
   end;

  StringgridBottom.Clear;
  Stringgridbottom.DefaultColWidth:=Stringgrid1.ColWidths[1];
  StringgridBottom.RowCount:= 1;
  StringgridBottom.ColCount:= StringGrid1.ColCount;
  StringgridBottom.FixedCols:= StringGrid1.FixedCols;
  StringgridBottom.ColWidths[0]:= Stringgrid1.ColWidths[0] ;

  StringGridBottom.Cells[0,0]:= 'Average : ' ;

  For i:=0  to res.count - 1 do
    begin
      StringgridBottom.Cells[i+StringgridBottom.FixedCols,0]:= Res[i];
    end;

  // srednie z rowsów

  acctual.Clear;
  Res.Clear;

  for Rows:= stringgrid1.FixedRows to StringGrid1.RowCount -1 do
   begin
    for cols:= Stringgrid1.FixedCols to Stringgrid1.ColCount -1 do
       begin
         acctual.Add(StringGrid1.Cells[cols,rows]); // zmmienieja kolumne co 1 i zczytuj wszytskie rowsy
       end;
    Res.Add(srednia_arytmetyczna(acctual));
    acctual.Clear;
   end;

  StringgridRight.Clear;
  StringgridRight.DefaultRowHeight :=Stringgrid1.RowHeights[1];
  StringgridRight.RowCount:= Stringgrid1.RowCount;
  StringgridRight.ColCount:= 1;
  StringgridRight.Fixedrows:= StringGrid1.Fixedrows;

  StringGridRight.Cells[0,0]:= 'Average' ;

  For i:=0  to res.Count - 1 do
    begin
      StringgridRight.Cells[0,i+StringgridRight.FixedRows]:= Res[i];
    end;
  end; // ATOMS END


if checkbox10.Checked then // LIGANDS
 begin

   included:= TstringList.Create;
   names:=TstringList.Create;  //Nazwy

   included.Clear;
   names.Clear;

 for inc:=1 to project_table_form.StringGrid1.RowCount -1 do // lista included przygotuj
    begin
    if project_table_form.StringGrid1.Cells[NrColProj_Name,inc] = combobox2.Text then
     begin
        selected_grid:= inc;
        if radiobutton1.Checked then
         begin
           included.add(inttostr(inc));
           names.Add(project_table_form.StringGrid1.Cells[NrColProj_Name,inc]);
         end;
     end
      else
    begin
      if (project_table_form.StringGrid1.Cells[4,inc] = 'LIG') and  (project_table_form.StringGrid1.Cells[2,inc] = '1') then
        begin
          included.add(inttostr(inc));
          names.Add(project_table_form.StringGrid1.Cells[NrColProj_Name,inc]);
        end;
    end;
    end;


 // dodaje naglowki i ilosci wystraczjacych kolumn
if radiobutton2.Checked then
  begin
   Stringgrid1.ColCount:= Stringgrid1.FixedCols + Names.Count;

   For i:=0 to Names.Count - 1 do
     begin
       StringGrid1.Cells[Stringgrid1.FixedCols + i,0]:=Names[i];
     end;
  end;

  if radiobutton1.Checked then
  begin
   Stringgrid1.ColCount:= Stringgrid1.FixedCols + Names.Count-1;

   For i:=0 to Names.Count - 2 do
     begin
       StringGrid1.Cells[Stringgrid1.FixedCols + i,0]:=Names[i]+'->'+Names[i+1];
     end;
  end;


 Names.Free;


// pobierz gridy do sparwdzenia i nazwania

if (RadioButton2.Checked = True) and (included.Count > 0) then // wybrany i przynajmniej jeden included
 begin
   gridA:= TstringGrid(mainform.PageControl.Page[selected_grid].Controls[0]);  // dodaj 1 bo numerowanie od 0 w combo a od 1 w grid
 end
   else
 begin
      if (RadioButton1.Checked = True) and (included.Count > 1) then // przynajmniej dwa includowane
       begin
         gridA:= TstringGrid(mainform.PageControl.Page[StrToInt(included[0])].Controls[0]);  // dodaj 1 bo numerowanie od 0 w combo a od 1 w grid
       end else begin Console.AddCommunicate(Com144); Exit; end;
  end;

// wlasciwe obliczenia

results:= TstringList.Create;

// tylko jeden rows
StringGrid1.RowCount:= StringGrid1.RowCount +1;

For inc:=0 to included.Count -1 do
 begin

if (RadioButton2.Checked = True) then // wybrany i przynajmniej jeden included
 begin
    gridA:= TstringGrid(mainform.PageControl.Page[selected_grid].Controls[0]);  // dodaj 1 bo numerowanie od 0 w combo a od 1 w grid
    gridB:= TstringGrid(mainform.PageControl.Page[StrToInt(included[inc])].Controls[0]);
 end else
  begin
   if inc +1 = included.Count then
    begin break; end
     else
      begin
        gridA:= TstringGrid(mainform.PageControl.Page[StrToInt(included[inc])].Controls[0]);  // dodaj 1 bo numerowanie od 0 w combo a od 1 w grid
        gridB:= TstringGrid(mainform.PageControl.Page[StrToInt(included[inc+1])].Controls[0]);
      end;
  end;

  //------------------------------------
  if checkbox1.Checked then // aAPA
   begin
     results.Clear;

      // policz
         CompareLigandsAPA_RMSD_aDVSAM(GridA,GridB,results,1);
         StringGrid1.Cells[stringgrid1.FixedCols + inc, StringGrid1.RowCount-1]:= results[0];
      // przypisz nazwe
       if RadioButton2.Checked = True then
        begin
          StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'aAPA: '+ project_table_form.StringGrid1.Cells[3,selected_grid];
        end;

       if RadioButton1.Checked = True then
        begin
         StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'aAPA: ';
        end;

   end;
   //---------------------------------------------

  //------------------------------------
  if checkbox2.Checked then // RMSD
   begin
     results.Clear;

      // policz
         CompareLigandsAPA_RMSD_aDVSAM(GridA,GridB,results,2);
         StringGrid1.Cells[stringgrid1.FixedCols + inc, StringGrid1.RowCount-1]:= results[0];
      // przypisz nazwe
       if RadioButton2.Checked = True then
        begin
         StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'RMSD: '+ project_table_form.StringGrid1.Cells[3,selected_grid];
        end;

       if RadioButton1.Checked = True then
        begin
         StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'RMSD: ';
        end;
   end;
   //---------------------------------------------

   //------------------------------------
  if checkbox3.Checked then // aDVSAM
   begin
     results.Clear;

      // policz
         CompareLigandsAPA_RMSD_aDVSAM(GridA,GridB,results,3);
         StringGrid1.Cells[stringgrid1.FixedCols + inc, StringGrid1.RowCount-1]:= results[0];
      // przypisz nazwe
       if RadioButton2.Checked = True then
        begin
         StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'aDVSAM: '+ project_table_form.StringGrid1.Cells[3,selected_grid];
        end;

       if RadioButton1.Checked = True then
        begin
         StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'aDVSAM: ';
        end;
   end;
   //---------------------------------------------


   //------------------------------------
     if checkbox6.Checked then // APD - CompareLigandsAPA_RMSD_aDVSAM analiza 4 = APD
      begin
        results.Clear;

         // policz
            CompareLigandsAPA_RMSD_aDVSAM(GridA,GridB,results,4);
            StringGrid1.Cells[stringgrid1.FixedCols + inc, StringGrid1.RowCount-1]:= results[0];
         // przypisz nazwe
          if RadioButton2.Checked = True then
           begin
            StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'APD: '+ project_table_form.StringGrid1.Cells[3,selected_grid];
           end;

          if RadioButton1.Checked = True then
           begin
            StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'APD: ';
           end;
      end;
      //---------------------------------------------

       //------------------------------------
     if checkbox7.Checked then // APD - CompareLigandsAPA_RMSD_aDVSAM analiza 5 = APD + RMSD
      begin
        results.Clear;

         // policz
            CompareLigandsAPA_RMSD_aDVSAM(GridA,GridB,results,5); // analiza 5 = APD + RMSD
            StringGrid1.Cells[stringgrid1.FixedCols + inc, StringGrid1.RowCount-1]:= results[0];
         // przypisz nazwe
          if RadioButton2.Checked = True then
           begin
            StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'APD-RMSD: '+ project_table_form.StringGrid1.Cells[3,selected_grid];
           end;

          if RadioButton1.Checked = True then
           begin
            StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'APD-RMSD: ';
           end;
      end;
      //---------------------------------------------

end;

 included.Free;
 results.Free;

 // functions resume

 // srednie z kolumn
acctual:= Tstringlist.Create;
Res:=tstringlist.Create;

for cols:= Stringgrid1.FixedCols to Stringgrid1.ColCount -1  do
 begin
  for Rows:= stringgrid1.FixedRows to StringGrid1.RowCount -1 do
     begin
       acctual.Add(StringGrid1.Cells[cols,rows]); // zmmienieja kolumne co 1 i zczytuj wszytskie rowsy
     end;
  Res.Add(srednia_arytmetyczna(acctual));
  acctual.Clear;
 end;

StringgridBottom.Clear;
Stringgridbottom.DefaultColWidth:=Stringgrid1.ColWidths[1];
StringgridBottom.RowCount:= 1;
StringgridBottom.ColCount:= StringGrid1.ColCount;
StringgridBottom.FixedCols:= StringGrid1.FixedCols;
StringgridBottom.ColWidths[0]:= Stringgrid1.ColWidths[0] ;

StringGridBottom.Cells[0,0]:= 'Average : ' ;

For i:=0  to res.count - 1 do
  begin
    StringgridBottom.Cells[i+StringgridBottom.FixedCols,0]:= Res[i];
  end;

// srednie z rowsów

acctual.Clear;
Res.Clear;

for Rows:= stringgrid1.FixedRows to StringGrid1.RowCount -1 do
 begin
  for cols:= Stringgrid1.FixedCols to Stringgrid1.ColCount -1 do
     begin
       acctual.Add(StringGrid1.Cells[cols,rows]); // zmmienieja kolumne co 1 i zczytuj wszytskie rowsy
     end;
  Res.Add(srednia_arytmetyczna(acctual));
  acctual.Clear;
 end;

StringgridRight.Clear;
StringgridRight.DefaultRowHeight :=Stringgrid1.RowHeights[1];
StringgridRight.RowCount:= Stringgrid1.RowCount;
StringgridRight.ColCount:= 1;
StringgridRight.Fixedrows:= StringGrid1.Fixedrows;

StringGridRight.Cells[0,0]:= 'Average' ;

For i:=0  to res.Count - 1 do
  begin
    StringgridRight.Cells[0,i+StringgridRight.FixedRows]:= Res[i];
  end;
end; // LIGNAD END


if checkbox5.Checked then // PROTEIN
 begin

  included:= TstringList.Create;


for inc:=1 to project_table_form.StringGrid1.RowCount -1 do // lista included przygotuj
    begin
    if project_table_form.StringGrid1.Cells[NrColProj_Name,inc] = combobox2.Text then
     begin
        selected_grid:= inc;
        if radiobutton1.Checked then
         begin
           included.add(inttostr(inc));
         end;
     end
      else
    begin
      if (project_table_form.StringGrid1.Cells[4,inc] = 'PRO') and  (project_table_form.StringGrid1.Cells[2,inc] = '1') then
        begin
          included.add(inttostr(inc));
        end;
    end;
    end;

// pobierz gridy do sparwdzenia i nazwania

if (RadioButton2.Checked = True) and (included.Count > 0) then // wybrany i przynajmniej jeden included
 begin
   gridA:= TstringGrid(mainform.PageControl.Page[selected_grid].Controls[0]);  // dodaj 1 bo numerowanie od 0 w combo a od 1 w grid
 end
   else
 begin
      if (RadioButton1.Checked = True) and (included.Count > 1) then // przynajmniej dwa includowane
       begin
         gridA:= TstringGrid(mainform.PageControl.Page[StrToInt(included[0])].Controls[0]);  // dodaj 1 bo numerowanie od 0 w combo a od 1 w grid
       end else begin Console.AddCommunicate(Com144); Exit; end;
  end;

 // dodaje naglowki i ilosci wystraczjacych kolumn
names:=TstringList.Create;

  Stringgrid1.ColCount:= Stringgrid1.FixedCols + GridToSequence(GridA,Names,True);

  For i:=0 to Names.Count - 1 do
    begin
      StringGrid1.Cells[Stringgrid1.FixedCols + i,0]:=Names[i];
    end;

Names.Free;

// wlasciwe obliczenia

results:= TstringList.Create;

For inc:=0 to included.Count -1 do
 begin

if (RadioButton2.Checked = True) then // wybrany i przynajmniej jeden included
 begin
    gridA:= TstringGrid(mainform.PageControl.Page[selected_grid].Controls[0]);  // dodaj 1 bo numerowanie od 0 w combo a od 1 w grid
    gridB:= TstringGrid(mainform.PageControl.Page[StrToInt(included[inc])].Controls[0]);
 end else
  begin
   if inc +1 = included.Count then
    begin break; end
     else
      begin
        gridA:= TstringGrid(mainform.PageControl.Page[StrToInt(included[inc])].Controls[0]);  // dodaj 1 bo numerowanie od 0 w combo a od 1 w grid
        gridB:= TstringGrid(mainform.PageControl.Page[StrToInt(included[inc+1])].Controls[0]);
      end;
  end;

  //------------------------------------
  if checkbox1.Checked then // aAPA
   begin
     results.Clear;
     StringGrid1.RowCount:= StringGrid1.RowCount +1;
      // policz
         CompareProteinsAPA_RMSD_aDVSAM(GridA,GridB,results,1);
      // przypisz nazwe
       if RadioButton2.Checked = True then
        begin
         StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'aAPA: '+ project_table_form.StringGrid1.Cells[3,selected_grid]
                     +'->'+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc])];
        end;

       if RadioButton1.Checked = True then
        begin
         StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'aAPA: '+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc])]
                     +'->'+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc+1])];
        end;

     for i:= 0 to Results.Count -1 do
      begin
        StringGrid1.Cells[stringgrid1.FixedCols + i, StringGrid1.RowCount-1]:= results[i];
      end;
   end;
   //---------------------------------------------

  //------------------------------------
  if checkbox2.Checked then // RMSD
   begin
     results.Clear;
     StringGrid1.RowCount:= StringGrid1.RowCount +1;
      // policz
         CompareProteinsAPA_RMSD_aDVSAM(GridA,GridB,results,2);
      // przypisz nazwe
       if RadioButton2.Checked = True then
        begin
         StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'RMSD: '+ project_table_form.StringGrid1.Cells[3,selected_grid]
                     +'->'+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc])];
        end;

       if RadioButton1.Checked = True then
        begin
         StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'RMSD: '+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc])]
                     +'->'+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc+1])];
        end;

     for i:= 0 to Results.Count -1 do
      begin
        StringGrid1.Cells[stringgrid1.FixedCols + i, StringGrid1.RowCount-1]:= results[i];
      end;
   end;
   //---------------------------------------------

   //------------------------------------
  if checkbox3.Checked then // aDVSAM
   begin
     results.Clear;
     StringGrid1.RowCount:= StringGrid1.RowCount +1;
      // policz
         CompareProteinsAPA_RMSD_aDVSAM(GridA,GridB,results,3);
      // przypisz nazwe
       if RadioButton2.Checked = True then
        begin
         StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'aDVSAM: '+ project_table_form.StringGrid1.Cells[3,selected_grid]
                     +'->'+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc])];
        end;

       if RadioButton1.Checked = True then
        begin
         StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'aDVSAM: '+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc])]
                     +'->'+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc+1])];
        end;

     for i:= 0 to Results.Count -1 do
      begin
        StringGrid1.Cells[stringgrid1.FixedCols + i, StringGrid1.RowCount-1]:= results[i];
      end;
   end;
   //---------------------------------------------


   //------------------------------------
     if checkbox6.Checked then // APD - CompareProteinsAPA_RMSD_aDVSAM analiza 4 = APD
      begin
        results.Clear;
        StringGrid1.RowCount:= StringGrid1.RowCount +1;
         // policz
            CompareProteinsAPA_RMSD_aDVSAM(GridA,GridB,results,4);
         // przypisz nazwe
          if RadioButton2.Checked = True then
           begin
            StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'APD: '+ project_table_form.StringGrid1.Cells[3,selected_grid]
                        +'->'+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc])];
           end;

          if RadioButton1.Checked = True then
           begin
            StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'APD: '+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc])]
                        +'->'+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc+1])];
           end;

        for i:= 0 to Results.Count -1 do
         begin
           StringGrid1.Cells[stringgrid1.FixedCols + i, StringGrid1.RowCount-1]:= results[i];
         end;
      end;
      //---------------------------------------------

       //------------------------------------
     if checkbox7.Checked then // APD - CompareProteinsAPA_RMSD_aDVSAM analiza 5 = APD + RMSD
      begin
        results.Clear;
        StringGrid1.RowCount:= StringGrid1.RowCount +1;
         // policz
            CompareProteinsAPA_RMSD_aDVSAM(GridA,GridB,results,5); // analiza 5 = APD + RMSD
         // przypisz nazwe
          if RadioButton2.Checked = True then
           begin
            StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'APD-RMSD: '+ project_table_form.StringGrid1.Cells[3,selected_grid]
                        +'->'+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc])];
           end;

          if RadioButton1.Checked = True then
           begin
            StringGrid1.Cells[0,StringGrid1.RowCount-1]:= 'APD-RMSD: '+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc])]
                        +'->'+ project_table_form.StringGrid1.Cells[3,StrToInt(included[inc+1])];
           end;

        for i:= 0 to Results.Count -1 do
         begin
           StringGrid1.Cells[stringgrid1.FixedCols + i, StringGrid1.RowCount-1]:= results[i];
         end;
      end;
      //---------------------------------------------

end;

 included.Free;
 results.Free;

 // functions resume

 // srednie z kolumn
acctual:= Tstringlist.Create;
Res:=tstringlist.Create;

for cols:= Stringgrid1.FixedCols to Stringgrid1.ColCount -1  do
 begin
  for Rows:= stringgrid1.FixedRows to StringGrid1.RowCount -1 do
     begin
       acctual.Add(StringGrid1.Cells[cols,rows]); // zmmienieja kolumne co 1 i zczytuj wszytskie rowsy
     end;
  Res.Add(srednia_arytmetyczna(acctual));
  acctual.Clear;
 end;

StringgridBottom.Clear;
Stringgridbottom.DefaultColWidth:=Stringgrid1.ColWidths[1];
StringgridBottom.RowCount:= 1;
StringgridBottom.ColCount:= StringGrid1.ColCount;
StringgridBottom.FixedCols:= StringGrid1.FixedCols;
StringgridBottom.ColWidths[0]:= Stringgrid1.ColWidths[0] ;

StringGridBottom.Cells[0,0]:= 'Average : ' ;

For i:=0  to res.count - 1 do
  begin
    StringgridBottom.Cells[i+StringgridBottom.FixedCols,0]:= Res[i];
  end;



// srednie z rowsów

acctual.Clear;
Res.Clear;

for Rows:= stringgrid1.FixedRows to StringGrid1.RowCount -1 do
 begin
  for cols:= Stringgrid1.FixedCols to Stringgrid1.ColCount -1 do
     begin
       acctual.Add(StringGrid1.Cells[cols,rows]); // zmmienieja kolumne co 1 i zczytuj wszytskie rowsy
     end;
  Res.Add(srednia_arytmetyczna(acctual));
  acctual.Clear;
 end;

StringgridRight.Clear;
StringgridRight.DefaultRowHeight :=Stringgrid1.RowHeights[1];
StringgridRight.RowCount:= Stringgrid1.RowCount;
StringgridRight.ColCount:= 1;
StringgridRight.Fixedrows:= StringGrid1.Fixedrows;

StringGridRight.Cells[0,0]:= 'Average' ;

For i:=0  to res.Count - 1 do
  begin
    StringgridRight.Cells[0,i+StringgridRight.FixedRows]:= Res[i];
  end;
end; // PROTEIN END

      // odblokuj przycisk jak jest wiecej nie zdwa roswy bo wtedy min max jest mozliwy do okreslenia
if Stringgrid1.RowCount > 2 then
  begin radiobutton4.Enabled := true; end
    else begin radiobutton4.Enabled:= false; end;

// ustal wartosc spina na 50%
Res:=tstringlist.Create;
for i:=1 to stringgridbottom.ColCount -1 do
  begin
    Res.Add(stringgridbottom.Cells[i,0]);
  end;

//  MIN and MAX
max:= MinMax(res,True);
//min:= MinMax(res,False);

Floatspinedit1.Value:= max;
//Floatspinedit2.Value:= min;

res.Free;
//

Stringgrid1.AutoSizeColumn(0);
Stringgridbottom.ColWidths[0]:= Stringgrid1.ColWidths[0];
  }}
end;

procedure TForm15.SpeedButton7Click(Sender: TObject);
Var
  title,CurrRes:string;
  i,a,xyzCount:integer;
  ReferenceGrid:TstringGrid;
  Seq,x,y,z,ListaWartosciKonvertNaKolory,ListaWartosci:Tstringlist;
  ax,ay,az :currency;
  pierwszy:integer;
  average:boolean=false;
begin

// dodaje do konternera wizylaizacje kwadraty (type 1), lub kule (type 2)
// drednia wartos residue w przesrzeni i wielkosc w procentach i kolor z analizy
// w zaleznosci jaki parametr wybrano
{
title:='';

if Checkbox1.Checked then begin title:= Checkbox1.Caption; end;
if Checkbox2.Checked then begin title:= Checkbox2.Caption; end;
if Checkbox3.Checked then begin title:= Checkbox3.Caption; end;
if Checkbox6.Checked then begin title:= Checkbox6.Caption; end;
if Checkbox7.Checked then begin title:= Checkbox7.Caption; end;

if checkbox4.Checked then begin average:=true end; //average distanec

If checkbox9.Checked then // LIGAND ATOMS
 begin

   x:=TstringList.Create;
   y:=TstringList.Create;
   z:=TstringList.Create;

   ListaWartosciKonvertNaKolory:= Tstringlist.Create;
   ListaWartosci:= Tstringlist.Create;

   Seq:= Tstringlist.Create; // ligands names

   ReferenceGrid:= TStringGrid(MainForm.PageControl.Page[selected_grid].Controls[0]);

      For i:=1  to ReferenceGrid.RowCount -1 do
        begin
            ax:=0; ay:=0; az:=0; xyzCount:=0;

             ax:= ax + StrToCurr(ReferenceGrid.Cells[NrColX,i]);
             ay:= ay + StrToCurr(ReferenceGrid.Cells[NrColY,i]);
             az:= az + StrToCurr(ReferenceGrid.Cells[NrColZ,i]);

             inc(xyzCount);

      if average then
        begin
           For a:=1 to Project_Table_Form.StringGrid1.RowCount - 1 do
             begin
                If (Project_Table_Form.StringGrid1.Cells[NrColProj_Inc,a] = '1') and (Project_Table_Form.StringGrid1.Cells[NrColProj_Type,a] = type_Ligand) and (a <> selected_grid) then
                  begin
                     ax:= ax + StrToCurr(TStringGrid(MainForm.PageControl.Page[a].Controls[0]).Cells[NrColX,i]);
                     ay:= ay + StrToCurr(TStringGrid(MainForm.PageControl.Page[a].Controls[0]).Cells[NrColY,i]);
                     az:= az + StrToCurr(TStringGrid(MainForm.PageControl.Page[a].Controls[0]).Cells[NrColZ,i]);

                     inc(xyzCount);
                  end;
              end;
        end;

             ax:= ax / xyzCount;
             ay:= ay / xyzCount;
             az:= az / xyzCount;

            x.Add(CurrToStr(ax));
            y.Add(CurrToStr(ay));
            z.Add(CurrToStr(az));

        end;

   // prepare GRID
   for  i:=1 to StringGridBottom.ColCount -1 do
     begin
       ListaWartosciKonvertNaKolory.Add(StringgridBottom.Cells[i,0]);
       ListaWartosci.Add(StringgridBottom.Cells[i,0]);
       Seq.Add(Stringgrid1.Cells[i,0]);
     end;

   GradientColor(Colorbutton1.ButtonColor,Colorbutton2.ButtonColor,Spinedit1.Value,ListaWartosciKonvertNaKolory);

   AddNewGrid('1','1',title,'AN1','self'); // add grid

   Tstringgrid(ActiveGrid).RowCount:= ListaWartosci.Count + 1;

   For i:=0 to ListaWartosci.Count -1 do
     begin

       Tstringgrid(ActiveGrid).Cells[NrColSection,i+1]:= 'BOX'; // Sekcja BOX

       Tstringgrid(ActiveGrid).Cells[NrColAtomId,i+1]:= inttostr(i+1); // numer pozadkowy
       Tstringgrid(ActiveGrid).Cells[NrColVis,i+1]:= '1'; //  Vis = 1
       Tstringgrid(ActiveGrid).Cells[NrColInc,i+1]:= '1'; //  Inc = 1

       Tstringgrid(ActiveGrid).Cells[NrColAtomName,i+1]:= 'BOX'; // copy x,y,x
       Tstringgrid(ActiveGrid).Cells[NrColResidueName,i+1]:= Seq[i]; // copy x,y,x

       Tstringgrid(ActiveGrid).Cells[NrColX,i+1]:= x[i]; // copy x,y,x
       Tstringgrid(ActiveGrid).Cells[NrColY,i+1]:= y[i]; // copy x,y,x
       Tstringgrid(ActiveGrid).Cells[NrColZ,i+1]:= z[i]; // copy x,y,x

       Tstringgrid(ActiveGrid).Cells[NrColOccupancy,i+1]:= ListaWartosci[i]; // Value of size !!!
       Tstringgrid(ActiveGrid).Cells[NrColTemperatureFactor,i+1]:= ListaWartosciKonvertNaKolory[i]; // Value of color !!!
     end;

   ListaWartosciKonvertNaKolory.Free;
   ListaWartosci.Free;

   seq.Free;

   x.Free;
   y.Free;
   z.Free;
 end;


If checkbox10.Checked then // LIGAND
 begin

x:=TstringList.Create;
y:=TstringList.Create;
z:=TstringList.Create;

ListaWartosciKonvertNaKolory:= Tstringlist.Create;
ListaWartosci:= Tstringlist.Create;

Seq:= Tstringlist.Create; // ligands names


   For i:=1  to Project_Table_Form.StringGrid1.RowCount - 1 do
     begin
      If (Project_Table_Form.StringGrid1.Cells[NrColProj_Inc,i] = '1') and (Project_Table_Form.StringGrid1.Cells[NrColProj_Type,i] = type_Ligand) then
       begin

         ReferenceGrid:= TStringGrid(MainForm.PageControl.Page[i].Controls[0]);

         ax:=0; ay:=0; az:=0; xyzCount:=0;

         for a:=1 to ReferenceGrid.RowCount -1 do
           begin
             ax:= ax + StrToCurr(ReferenceGrid.Cells[NrColX,a]);
             ay:= ay + StrToCurr(ReferenceGrid.Cells[NrColY,a]);
             az:= az + StrToCurr(ReferenceGrid.Cells[NrColZ,a]);

             inc(xyzCount);
           end;

          ax:= ax / xyzCount;
          ay:= ay / xyzCount;
          az:= az / xyzCount;

         x.Add(CurrToStr(ax));
         y.Add(CurrToStr(ay));
         z.Add(CurrToStr(az));

       end;
     end;

// prepare GRID
for  i:=1 to StringGridBottom.ColCount -1 do
  begin
    ListaWartosciKonvertNaKolory.Add(StringgridBottom.Cells[i,0]);
    ListaWartosci.Add(StringgridBottom.Cells[i,0]);
    Seq.Add(Stringgrid1.Cells[i,0]);
  end;

GradientColor(Colorbutton1.ButtonColor,Colorbutton2.ButtonColor,Spinedit1.Value,ListaWartosciKonvertNaKolory);

For i:=0 to ListaWartosci.Count -1 do
  begin

    // każdy obiekt odzielnie

    AddNewGrid('1','1',Stringgrid1.Cells[0,1] + Seq[i],'AN1','self'); // add grid
    Tstringgrid(ActiveGrid).RowCount:= 2;

    Tstringgrid(ActiveGrid).Cells[NrColSection,Tstringgrid(ActiveGrid).RowCount - 1]:= 'BOX'; // Sekcja BOX

    Tstringgrid(ActiveGrid).Cells[NrColAtomId,Tstringgrid(ActiveGrid).RowCount - 1]:= inttostr(i+1); // numer pozadkowy
    Tstringgrid(ActiveGrid).Cells[NrColVis,Tstringgrid(ActiveGrid).RowCount - 1]:= '1'; //  Vis = 1
    Tstringgrid(ActiveGrid).Cells[NrColInc,Tstringgrid(ActiveGrid).RowCount - 1]:= '1'; //  Inc = 1

    Tstringgrid(ActiveGrid).Cells[NrColAtomName,Tstringgrid(ActiveGrid).RowCount - 1]:= 'BOX'; // copy x,y,x
    Tstringgrid(ActiveGrid).Cells[NrColResidueName,Tstringgrid(ActiveGrid).RowCount - 1]:= Seq[i]; // copy x,y,x

    Tstringgrid(ActiveGrid).Cells[NrColX,Tstringgrid(ActiveGrid).RowCount - 1]:= x[i]; // copy x,y,x
    Tstringgrid(ActiveGrid).Cells[NrColY,Tstringgrid(ActiveGrid).RowCount - 1]:= y[i]; // copy x,y,x
    Tstringgrid(ActiveGrid).Cells[NrColZ,Tstringgrid(ActiveGrid).RowCount - 1]:= z[i]; // copy x,y,x

    Tstringgrid(ActiveGrid).Cells[NrColOccupancy,Tstringgrid(ActiveGrid).RowCount - 1]:= ListaWartosci[i]; // Value of size !!!
    Tstringgrid(ActiveGrid).Cells[NrColTemperatureFactor,Tstringgrid(ActiveGrid).RowCount - 1]:= ListaWartosciKonvertNaKolory[i]; // Value of color !!!
  end;

ListaWartosciKonvertNaKolory.Free;
ListaWartosci.Free;

seq.Free;

x.Free;
y.Free;
z.Free;
 end;

if checkbox5.Checked then // PROTEINE
 begin

 AddNewGrid('1','1',title+combobox2.Items[combobox2.ItemIndex],'AN1','self'); // add grid

//select reference grid

   ReferenceGrid:= TstringGrid(MainForm.PageControl.Pages[selected_grid].Controls[0]);

// copy average x,y,z cols

Seq:=TstringList.Create;
x:=TstringList.Create;
y:=TstringList.Create;
z:=TstringList.Create;

CurrRes:='';

for i:=1 to ReferenceGrid.RowCount-1 do  // przygotuj liste residue
 begin
    if AnsiCompareStr(currRes,ReferenceGrid.Cells[NrColResidueName,i]) <> 0 then
     begin
         Seq.add(ReferenceGrid.Cells[NrColResidueName,i]); // jak nie to sama nazwa
         currRes:= ReferenceGrid.Cells[NrColResidueName,i];
     end;
 end;

CurrRes:=Seq[0];

ax:=0; ay:=0; az:=0; xyzCount:=0;

for i:=1 to ReferenceGrid.RowCount-1 do  // policz wartosci WYNIK DLA REFERENCYJNEJ
 begin
    if AnsiCompareStr(currRes,ReferenceGrid.Cells[NrColResidueName,i]) = 0 then
     begin
         ax:= ax + StrToCurr(ReferenceGrid.Cells[NrColX,i]);
         ay:= ay + StrToCurr(ReferenceGrid.Cells[NrColY,i]);
         az:= az + StrToCurr(ReferenceGrid.Cells[NrColZ,i]);

        if average then // wyznaca wartosci srednie pomiedzy wszytskicmi formami includowanymi
         begin
            for a:= 1 to Project_Table_Form.StringGrid1.RowCount -2 do
             begin                                                               // licz bez ref
                if (Project_Table_Form.StringGrid1.Cells[NrColProj_Type,a] = type_Proteine) and (Project_Table_Form.StringGrid1.Cells[NrColProj_Inc,a] = '1') and (a <> selected_grid) then
                 begin
                    ax:= ax + StrToCurr(TstringGrid(MainForm.PageControl.Pages[a].Controls[0]).Cells[NrColX,i]);
                    ay:= ay + StrToCurr(TstringGrid(MainForm.PageControl.Pages[a].Controls[0]).Cells[NrColY,i]);
                    az:= az + StrToCurr(TstringGrid(MainForm.PageControl.Pages[a].Controls[0]).Cells[NrColZ,i]);

                    inc(xyzCount);

                 end;
             end;
         end;
       //  showmessage(currtostr(ax)+'/'+currtostr(ay)+'/'+currtostr(az)+'/'+currtostr(xyzCount));

         inc(xyzCount);
     end else
      begin
         ax:= ax / xyzCount;
         ay:= ay / xyzCount;
         az:= az / xyzCount;

       //  showmessage('c:'+currtostr(ax)+'/'+currtostr(ay)+'/'+currtostr(az)+'/'+currtostr(xyzCount));

         x.Add(CurrToStr(ax));
         y.Add(CurrToStr(ay));
         z.Add(CurrToStr(az));

         ax:=0; ay:=0; az:=0; xyzCount:=0;

         currRes:= ReferenceGrid.Cells[NrColResidueName,i];
      end;
 end;

// ostatnei wykonanie petli
        ax:= ax / xyzCount;
        ay:= ay / xyzCount;
        az:= az / xyzCount;

        x.Add(CurrToStr(ax));
        y.Add(CurrToStr(ay));
        z.Add(CurrToStr(az));
// end ->

// dodaj kolory

ListaWartosciKonvertNaKolory:= Tstringlist.Create;
ListaWartosci:= Tstringlist.Create;

  for i:=StringGridBottom.FixedCols to StringGridBottom.ColCount -1 do
   begin
      ListaWartosciKonvertNaKolory.add(StringGridBottom.Cells[i,0]);
      ListaWartosci.add(StringGridBottom.Cells[i,0]);
   end;

GradientColor(Colorbutton1.ButtonColor,Colorbutton2.ButtonColor,Spinedit1.Value,ListaWartosciKonvertNaKolory);

// end->

Tstringgrid(ActiveGrid).RowCount:= Seq.Count+1;

for i:= 0 to Seq.Count -1 do
  begin

    Tstringgrid(ActiveGrid).Cells[NrColSection,i+1]:= 'BOX'; // Sekcja BOX

    Tstringgrid(ActiveGrid).Cells[NrColAtomId,i+1]:= inttostr(i+1); // numer pozadkowy
    Tstringgrid(ActiveGrid).Cells[NrColVis,i+1]:= '1'; //  Vis = 1
    Tstringgrid(ActiveGrid).Cells[NrColInc,i+1]:= '1'; //  Inc = 1

    Tstringgrid(ActiveGrid).Cells[NrColAtomName,i+1]:= 'BOX'; // copy x,y,x
    Tstringgrid(ActiveGrid).Cells[NrColResidueName,i+1]:= Seq[i]; // copy x,y,x

    Tstringgrid(ActiveGrid).Cells[NrColX,i+1]:= x[i]; // copy x,y,x
    Tstringgrid(ActiveGrid).Cells[NrColY,i+1]:= y[i]; // copy x,y,x
    Tstringgrid(ActiveGrid).Cells[NrColZ,i+1]:= z[i]; // copy x,y,x

    Tstringgrid(ActiveGrid).Cells[NrColOccupancy,i+1]:= ListaWartosci[i]; // Value of size !!!
    Tstringgrid(ActiveGrid).Cells[NrColTemperatureFactor,i+1]:= ListaWartosciKonvertNaKolory[i]; // Value of color !!!

  end;

x.Free; y.Free; z.Free;
Seq.Free; ListaWartosciKonvertNaKolory.Free;
ListaWartosci.Free;
end;
  }
end;

procedure TForm15.SpeedButton8Click(Sender: TObject);
begin
  g4g_AN1_scale_factor :=  g4g_AN1_scale_factor + 0.01;
end;

procedure TForm15.SpeedButton9Click(Sender: TObject);
begin
  g4g_AN1_scale_factor:= 1;
end;

procedure TForm15.StringGrid1ColRowMoved(Sender: TObject; IsColumn: Boolean;
  sIndex, tIndex: Integer);
begin

end;

procedure TForm15.StringGrid1DblClick(Sender: TObject);
begin

end;

procedure TForm15.StringGrid1DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a,b,index,min,max:integer;
  kolor:Tcolor;
  colorsTemp,MinMaxList,ColRowList_temp:TstringList;
  // globalne x,y  color zaimplementowane globalnei
begin
try
begin

if Do_Gradient then
 begin
  if (stringgrid1.ColCount - stringgrid1.FixedCols = 1) and (stringgrid1.RowCount - stringgrid1.FixedRows = 1) then
   begin
    if (aCol = 1) and (aRow=1) then
     begin
      StringGrid1.Canvas.GradientFill(StringGrid1.CellRect(aCol,aRow),colorbutton1.ButtonColor,colorbutton2.ButtonColor,gdHorizontal);
     end;
   end
 else
   begin
   MinMaxList:=TstringList.Create;

If DoOnce then
    begin
      ColRowList.Clear;
      colors.Clear;

 if radiobutton6.Checked then  // color by ALL
  begin
      For a:= StringGrid1.FixedCols to Stringgrid1.ColCount -1 do // a - col
        begin
         For b:=stringgrid1.FixedRows to Stringgrid1.RowCount -1 do // b - row
           begin
             if stringgrid1.ColWidths[a] > 5 then  // jesli widoczna
              begin
             // kolekcjonowanie danych
                ColRowList.Add(inttostr(a)+'|'+inttostr(b)); // numer kolumny ';' rowsa
                Colors.Add(Stringgrid1.Cells[a,b]);   // dodaj wartosci
              end;
           end;
        end;

       min:= MinMaxToListIndex(colors,False);
       max:= MinMaxToListIndex(colors,True);

       MinMaxList.Add(ColRowList[min]);
       MinMaxList.Add(ColRowList[max]);

      GradientColor(ColorButton1.ButtonColor,ColorButton2.ButtonColor,SpinEdit1.Value,Colors);

    end;

 if radiobutton3.Checked then  // // color by rows
  begin
     colorsTemp:=TstringList.Create;
     ColRowList_temp:=TstringList.Create;

      For b:= stringgrid1.FixedRows to Stringgrid1.RowCount -1 do  // for every row
        begin

         colorsTemp.Clear;
         ColRowList_temp.Clear;

         For a:= StringGrid1.FixedCols to Stringgrid1.ColCount -1 do // take every value from row
           begin
             if stringgrid1.ColWidths[a] > 10 then  // jesli widoczna
              begin
             // kolekcjonowanie danych // col   // row
                ColRowList.Add(inttostr(a)+'|'+inttostr(b)); // numer kolumny '|' rowsa
                ColRowList_temp.Add(inttostr(a)+'|'+inttostr(b)); // temporary bo sie nie zgadzaja indexy w podgrupach
                colorsTemp.Add(Stringgrid1.Cells[a,b]);
              end;
           end;

             min:= MinMaxToListIndex(colorsTemp,False);
             max:= MinMaxToListIndex(colorsTemp,True);

             MinMaxList.Add(ColRowList_temp[min]);// wartosci z temp listy bo odpowiadaja wartosciom dodanym
             MinMaxList.Add(ColRowList_temp[max]);

           GradientColor(ColorButton1.ButtonColor,ColorButton2.ButtonColor,SpinEdit1.Value,ColorsTemp);
           Colors.AddStrings(ColorsTemp);
        end;

     colorsTemp.Free;
     ColRowList_temp.Free;
 end;

 if radiobutton4.Checked then  // color by cols
  begin
       colorsTemp:=TstringList.Create;
       ColRowList_temp:=TstringList.Create;

        For a:= StringGrid1.FixedCols to Stringgrid1.ColCount -1 do  // for every col
          begin

           colorsTemp.Clear;
           ColRowList_temp.Clear;

           For b:= stringgrid1.FixedRows to Stringgrid1.RowCount -1 do // take every value from row
             begin
              if stringgrid1.ColWidths[a] > 10 then  // jesli widoczna
              begin
               // kolekcjonowanie danych // col   // row
                  ColRowList.Add(inttostr(a)+'|'+inttostr(b)); // numer kolumny '|' rowsa
                  ColRowList_temp.Add(inttostr(a)+'|'+inttostr(b)); // temporary bo sie nie zgadzaja indexy w podgrupach
                  colorsTemp.Add(Stringgrid1.Cells[a,b]);
              end;
             end;

               min:= MinMaxToListIndex(colorsTemp,False);
               max:= MinMaxToListIndex(colorsTemp,True);

               MinMaxList.Add(ColRowList_temp[min]);// wartosci z temp listy bo odpowiadaja wartosciom dodanym
               MinMaxList.Add(ColRowList_temp[max]);

             GradientColor(ColorButton1.ButtonColor,ColorButton2.ButtonColor,SpinEdit1.Value,ColorsTemp);
             Colors.AddStrings(ColorsTemp);
          end;

       colorsTemp.Free;
       ColRowList_temp.Free;
   end;

end;

// koloruj

if  (acol > 0) and (aRow > 0) then
 begin
   index:= ColRowList.IndexOf(inttostr(aCol)+'|'+inttostr(aRow));

if index > -1 then
  begin
    StringGrid1.Canvas.Brush.Color := StringToColor(Colors[index]);
    // wypelnij kolorem
    StringGrid1.Canvas.FillRect(Stringgrid1.CellRect(aCol,aRow));
    // dodaj text komorki
    if  (MinMaxList.IndexOf(inttostr(aCol)+'|'+inttostr(aRow)) > -1) and (checkbox8.Checked) then
     begin
        StringGrid1.Canvas.Pen.Color:= clBlack;
        StringGrid1.Canvas.Pen.Width:=3;
        StringGrid1.Canvas.Ellipse(StringGrid1.CellRect(aCol,aRow));
     end;
    //StringGrid1.Canvas.TextRect(aRect,aRect.Left + (aRect.Right - aRect.Left) div 2 - 4, aRect.Top + 2, );
  end;
 end;

 MinMaxList.Free;
 end;
end;

end;
except
  showmessage('Error: index '+inttostr(index)+'aCol '+inttostr(aCol)+'aRow '+inttostr(aRow));
end;

end;

procedure TForm15.StringGrid1Enter(Sender: TObject);
begin

end;

procedure TForm15.StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
 col,row : integer;
begin
try
  StringGrid1.MouseToCell(X,Y,col,row);
 if (col > 0) and (row > 0) then
  begin
    StatusBar1.SimpleText:= StringGrid1.Cells[col,0] +' -> '+ StringGrid1.Cells[col,row];
  end else begin StatusBar1.SimpleText:= '';  end;
except
  StatusBar1.SimpleText:= '';
end;
end;

procedure TForm15.StringGrid1TopLeftChanged(Sender: TObject);
begin

end;

procedure TForm15.StringGrid2DrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  ColorColumn(StringGrid2, aCol, aRow, 2, aRect);
end;

procedure TForm15.StringGridBottomDrawCell(Sender: TObject; aCol,
  aRow: Integer; aRect: TRect; aState: TGridDrawState);
var
  a,b,index,min,max:integer;
  kolor:Tcolor;
  colorsTemp,MinMaxList,ColRowList_temp:TstringList;
  // globalne x,y  color zaimplementowane globalnei
begin


if Do_Gradient then
 begin
  if stringgridbottom.ColCount - stringgridbottom.FixedCols = 1 then
   begin
     if (aCol = 1) and (aRow=0) then
     begin
      StringGridBottom.Canvas.GradientFill(StringGridBottom.CellRect(aCol,aRow),colorbutton1.ButtonColor,colorbutton2.ButtonColor,gdHorizontal);
     end;
   end
  else
   begin
   MinMaxList:=TstringList.Create;

   ColRowList.Clear;
   colors.Clear;

      For a:= StringGridBottom.FixedCols to StringGridBottom.ColCount -1 do // a - col
        begin
         For b:=StringGridBottom.FixedRows to StringGridBottom.RowCount -1 do // b - row
           begin
           if stringgrid1.ColWidths[a] > 5 then  // jesli widoczna
              begin
             // kolekcjonowanie danych
                ColRowList.Add(inttostr(a)+'|'+inttostr(b)); // numer kolumny ';' rowsa
                Colors.Add(StringGridBottom.Cells[a,b]);   // dodaj wartosci
              end;
           end;
        end;

       min:= MinMaxToListIndex(colors,False);
       max:= MinMaxToListIndex(colors,True);

       MinMaxList.Add(ColRowList[min]);
       MinMaxList.Add(ColRowList[max]);

      GradientColor(ColorButton1.ButtonColor,ColorButton2.ButtonColor,SpinEdit1.Value,Colors);


    colorsTemp.Free;
    ColRowList_temp.Free;

// koloruj
if  (acol > 0) then
  begin

index:= ColRowList.IndexOf(inttostr(aCol)+'|'+inttostr(aRow));

if index > -1 then
  begin
    StringGridBottom.Canvas.Brush.Color := StringToColor(Colors[index]);
    // wypelnij kolorem
    StringGridBottom.Canvas.FillRect(StringGridBottom.CellRect(aCol,aRow));
    // dodaj text komorki
    if  (MinMaxList.IndexOf(inttostr(aCol)+'|'+inttostr(aRow)) > -1) and (checkbox8.Checked) then
     begin
        StringGridBottom.Canvas.Pen.Color:= clBlack;
        StringGridBottom.Canvas.Pen.Width:=3;
        StringGridBottom.Canvas.Ellipse(StringGridBottom.CellRect(aCol,aRow));
     end;
    //StringGridBottom.Canvas.TextRect(aRect,aRect.Left + (aRect.Right - aRect.Left) div 2 - 4, aRect.Top + 2, );
  end;
 end;

 MinMaxList.Free;

 end; // end wariant colcount > 1
end;
end;

procedure TForm15.StringGridBottomMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
Var
 col,row : integer;
begin
try
  StringGridBottom.MouseToCell(X,Y,col,row);
 if (col > 0) then
  begin
    StatusBar1.SimpleText := StringGrid1.Cells[col,0] +' -> '+ StringGridbottom.Cells[col,row];
  end else begin StatusBar1.SimpleText:= '';  end;
except
  StatusBar1.SimpleText:= '';
end;
end;

procedure TForm15.StringGridRightDrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
var
  a,b,index,min,max:integer;
  kolor:Tcolor;
  colorsTemp,MinMaxList,ColRowList_temp:TstringList;
  // globalne x,y  color zaimplementowane globalnei
begin
if Do_Gradient then
 begin
    if stringgridRight.RowCount - stringgridRight.FixedRows = 1 then
   begin
     if (aCol = 0) and (aRow=1) then
     begin
      StringGridRight.Canvas.GradientFill(StringGridRight.CellRect(aCol,aRow),colorbutton1.ButtonColor,colorbutton2.ButtonColor,gdVertical);
     end;
   end
    else
   begin
    MinMaxList:=TstringList.Create;

   ColRowList.Clear;
   colors.Clear;

      For a:= StringGridRight.FixedCols to StringGridRight.ColCount -1 do // a - col
        begin
         For b:= StringGridRight.FixedRows to StringGridRight.RowCount -1 do // b - row
           begin
             // kolekcjonowanie danych
                ColRowList.Add(inttostr(a)+'|'+inttostr(b)); // numer kolumny ';' rowsa
                Colors.Add(StringGridRight.Cells[a,b]);   // dodaj wartosci
           end;
        end;

       min:= MinMaxToListIndex(colors,False);
       max:= MinMaxToListIndex(colors,True);

       MinMaxList.Add(ColRowList[min]);
       MinMaxList.Add(ColRowList[max]);

      GradientColor(ColorButton1.ButtonColor,ColorButton2.ButtonColor,SpinEdit1.Value,Colors);


    colorsTemp.Free;
    ColRowList_temp.Free;

// koloruj

index:= ColRowList.IndexOf(inttostr(aCol)+'|'+inttostr(aRow));

if index > -1 then
  begin
    StringGridRight.Canvas.Brush.Color := StringToColor(Colors[index]);
    // wypelnij kolorem
    StringGridRight.Canvas.FillRect(StringGridRight.CellRect(aCol,aRow));
    // dodaj text komorki
    if  (MinMaxList.IndexOf(inttostr(aCol)+'|'+inttostr(aRow)) > -1) and (checkbox8.Checked) then
     begin
        StringGridRight.Canvas.Pen.Color:= clBlack;
        StringGridRight.Canvas.Pen.Width:=3;
        StringGridRight.Canvas.Ellipse(StringGridRight.CellRect(aCol,aRow));
     end;
    //StringGridBottom.Canvas.TextRect(aRect,aRect.Left + (aRect.Right - aRect.Left) div 2 - 4, aRect.Top + 2, );
  end;

   MinMaxList.Free;

   end;
 end;
end;

procedure TForm15.StringGridRightMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
 col,row : integer;
begin
try
  StringGridRight.MouseToCell(X,Y,col,row);
 if (row > 0) then
  begin
    StatusBar1.SimpleText := StringGrid1.Cells[0,row] +' -> '+ StringGridRight.Cells[col,row];
  end else begin StatusBar1.SimpleText:= '';  end;
except
  StatusBar1.SimpleText:= '';
end;
end;

procedure TForm15.TrackBar1Change(Sender: TObject);
Var
  percent:byte;
begin

 percent:= Round((255 * TrackBar1.Position) / 100);

  if percent > 255 then
   begin
     g4g_AN1_color_alpha:= 255;
   end else begin g4g_AN1_color_alpha:= percent end;
end;

procedure TForm15.TrackBar2Change(Sender: TObject);
begin
  g4g_AN1_scale_factor:= TrackBar2.Position / 100;
end;

initialization
  {$I unit17.lrs}

end.


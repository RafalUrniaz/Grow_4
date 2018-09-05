(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

program Grow4;


uses
  Forms, Interfaces, DefaultTranslator, Unit1, Unit3, Unit5, Unit6, Unit7,
  Unit8, unit9, Unit10, Unit11, Unit12, Unit13, Unit4, tachartlazaruspkg,
  lazopenglcontext, lazcontrols, lazreport, Unit14, Unit2, Biblioteka_Grow_4,
  Unit15, Unit16, Unit17, Unit18, Unit20, Unit21, Unit22, FileUtil,
  Biblioteka_Grow_4_grafika, Unit23, Unit24, unit19, SysUtils,
  Biblioteka_Grow_4_Konsola, Unit25;

{$R *.res}


// {$IFDEF WINDOWS}{$R Grow4.rc}{$ENDIF}
var
  nr:integer= round(100 / 23);

begin
  Application.Title:='Grow_4';
  Application.Initialize;

// LOAD Forms

  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TForm5, Form5);

  // wylaczony splash screean !!!
  //Form5.Hide;

  Form5.Update;

  Form5.StaticText2.Caption:= 'Creating application forms';

  Application.CreateForm(TSettings, Settings); // ladowanie ustawien !!!  // Ladowanie ustawien po stworzeniu wsztrskich form + macierze naukowe
  Form5.Progressbar.Position:= round(1*nr);

  Form5.Progressbar.Position:= round(2*nr);
  Application.CreateForm(TIVM, IVM);
  Form5.Progressbar.Position:= round(3*nr);
  Application.CreateForm(TPDBEditor, PDBEditor);
  Form5.Progressbar.Position:= round(4*nr);
  Application.CreateForm(TForm2, Form2);
  Form5.Progressbar.Position:= round(5*nr);
  Application.CreateForm(TForm3, Form3);
  Form5.Progressbar.Position:= round(6*nr);
  Application.CreateForm(TForm4, Form4);
  Form5.Progressbar.Position:= round(7*nr);
  Application.CreateForm(TForm7, Form7);
  Form5.Progressbar.Position:= round(8*nr);
  Application.CreateForm(TForm8, Form8);
  Form5.Progressbar.Position:= round(9*nr);
  Application.CreateForm(TForm9, Form9);
  Form5.Progressbar.Position:= round(10*nr);
  Application.CreateForm(TForm10, Form10);
  Form5.Progressbar.Position:= round(11*nr);
  Application.CreateForm(TForm12, Form12);
  Form5.Progressbar.Position:= round(12*nr);
  Application.CreateForm(TForm13, Form13);
  Form5.Progressbar.Position:= round(13*nr);
  Application.CreateForm(TForm14, Form14);
  Form5.Progressbar.Position:= round(14*nr);
  Application.CreateForm(TForm15, Form15);
  Form5.Progressbar.Position:= round(15*nr);
  Application.CreateForm(TForm16, Form16);
  Form5.Progressbar.Position:= round(16*nr);
  Application.CreateForm(TConsole, Console);
  Form5.Progressbar.Position:= round(17*nr);
  Application.CreateForm(TScriptEditor, ScriptEditor);
  Form5.Progressbar.Position:= round(18*nr);
  Application.CreateForm(TForm24, Form24);
  Form5.Progressbar.Position:= round(19*nr);
  Application.CreateForm(TProgressBox, ProgressBox);
  Form5.Progressbar.Position:= round(20*nr);
  Application.CreateForm(Tform6, form6);
  Form5.Progressbar.Position:= round(21*nr);
  Application.CreateForm(Tproject_table_form, project_table_form); //<- tu ladowanie projektu
  Form5.Progressbar.Position:= round(22*nr);

// PREPARE files

 // Load scientific arrays
   Form5.StaticText2.Caption:= 'Loading scientific arrays';

   LoadArrayFromFile(ExtractFilePath(Application.ExeName)+'gtbl\Atoms_def.gtbl', 'Atoms_def');
   LoadArrayFromFile(ExtractFilePath(Application.ExeName)+'gtbl\Atoms_nomenclature.gtbl', 'Atoms_nomenclature');
   LoadArrayFromFile(ExtractFilePath(Application.ExeName)+'gtbl\Protein_bonds_def.gtbl', 'Protein_bonds_def');

 // Loading project if selected
 if ParamStr(1) > '' then
   begin
     MainForm.ToolButton9.Enabled:=true;
     Form5.StaticText2.Caption:= 'Loading project: ' + ParamStr(1);
   end;

  Form5.BringToFront;
  Form5.StaticText2.Caption:= 'Loading : OpenGL 3D libraries';

  if Refresh3Ddraw() then
   begin
     Form5.Hide;  // tu ladowanie // i fade loadera !! :D
   end;

  Mainform.Repaint;
  Application.CreateForm(TPDBrequest, PDBrequest);
  Application.Run;
end.

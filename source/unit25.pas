(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Unit25;

{$mode objfpc}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Biblioteka_Grow_4, fphttpclient, RegexPr;

type

  { TPDBrequest }

  TPDBrequest = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    CheckGroup1: TCheckGroup;
    LabeledEdit1: TLabeledEdit;
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  PDBrequest: TPDBrequest;

implementation
Uses
   Unit1, Unit22;
{ TPDBrequest }

procedure TPDBrequest.Button1Click(Sender: TObject);
var
  pdb_code:string;
  pdb_code_list:TstringList;
  SaveDialog:TselectDirectoryDialog;
begin

  pdb_code:= inputbox(com26,com37,'');

  pdb_code_list := TstringList.Create;

  ExplodeString(';',pdb_code,pdb_code_list);

  if (pdb_code_list.Count > 0) and (length(pdb_code) > 0) then
    begin

      SaveDialog:=TselectDirectoryDialog.Create(MainForm);
      Savedialog.InitialDir:= ExtractFilePath(Application.ExeName) +'local_PDB';

     if Savedialog.Execute then
       begin
        if Savedialog.FileName > '' then
          begin

           Console.AddCommunicate(com147+'Start '+IntToStr(pdb_code_list.Count)+' file(s)',true);

        if DownloadPDBfiles(pdb_code_list,UTF8decode(Savedialog.FileName)) = true then
          begin
           Console.AddCommunicate(com147+'Compleated '+IntToStr(pdb_code_list.Count)+' file(s)',true);

         { if MessageDlg(com40+'[local_PDB], import now?', mtConfirmation, mbYesNo, 0) = mrYes then
             begin
             end;}

           end else begin Console.AddCommunicate(com147+'Download failed for '+IntToStr(pdb_code_list.Count)+' file(s)',true); end;
         end;
    end;
Savedialog.Free;
end;
end;

procedure TPDBrequest.Memo1Change(Sender: TObject);
begin

end;

procedure TPDBrequest.SpeedButton1Click(Sender: TObject);
var
  Response: TStringList;
  client: TFPHTTPClient;
  URL: String;
begin
  Response:=nil;
  client:=nil;

// Send URL
try
    client:=TFPHTTPClient.Create(nil);

     URL:=LabeledEdit1.Text;

     memo1.Lines.AddStrings(  StringReplace(client.get(URL),'<br />',#13#10,[rfReplaceAll]) );

  finally
    client.Free;
    Response.Free;
  end;
end;

procedure TPDBrequest.BitBtn1Click(Sender: TObject);
var
  Response: TStringList;
  client: TFPHTTPClient;
  form_string: String;
begin
  Response:=nil;
  client:=nil;
  try
    client:=TFPHTTPClient.Create(nil);

    Response:=TStringList.Create();

 // Advanced searh PDB ->    http://www.rcsb.org/pdb/software/wsreport.do

   // client.RequestHeaders.Add('Content-Type: text/xml');

    form_string:= '<orgPdbQuery>'
                  +'<queryType>org.pdb.query.simple.AdvancedKeywordQuery</queryType>'
                  +'<keywords>'+LabeledEdit1.Text+'</keywords>'
                  +'</orgPdbQuery>';

    client.FormPost('http://www.rcsb.org/pdb/rest/search',form_string,Response);

   finally
    client.Free;
   end;

// Advanced Report
try
    client:=TFPHTTPClient.Create(nil);

     memo1.Lines.AddStrings(  StringReplace(client.get('http://www.rcsb.org/pdb/rest/customReport.csv?pdbids='

                     +Response.CommaText+

                     '&customReportColumns=structureId,structureTitle,experimentalTechnique&format=csv'),'<br />',#13#10,[rfReplaceAll]) );

  finally
    client.Free;
    Response.Free;
  end;
end;

initialization
  {$I unit25.lrs}

end.


(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

unit Biblioteka_Grow_4_Konsola;

{$mode objfpc}{$H+}

interface

uses

{$IFDEF UNIX}
  cthreads,
{$ENDIF}
  Classes, SysUtils, LCLIntf, FileUtil, Graphics, Controls, Process, Forms,
  Dialogs, Math, Menus, ComCtrls, ExtCtrls, StdCtrls, Buttons, Grids, LCLType,
  LResources, EditBtn, Clipbrd, gettext, Printers, FileCtrl, TAGraph, TASeries,
  ShellApi, WinInet, Biblioteka_Grow_4, Biblioteka_Grow_4_grafika, libssh2, blcksock;

 Function  Parse_Function():boolean;
 Procedure Connect(server,username:string);
 Procedure Disconnect();
 Procedure CommandResult();

implementation

 Uses
   Unit22, Unit12, Unit1, tlntsend;

// polaczenie ssh !!

// dodawanie komand nazwa komendy -> seria komend odzielonych znakiem konca lini /n i wykonywane jako sekwencja

// zapisz z pamieci do pliku np. zaznaczone atomy, wszytskie widoczne itp. save selected as file
// obsluga wywolania perla i pythona np. python ./<nazwa scieżka skryptu>  + utuchomic i odebrac wyniki z konsoli
// edytor skryptów to NotePad ++ !
{try


except
  console.add comunicate (info z parwiddlowym syntaxem)
end; }

type
  PAbstractData = ^TAbstractData;

  TAbstractData = record
    SelfPtr: Pointer;
    Extra: Pointer;
  end;

var
  sock:TTCPBlockSocket;
  session:PLIBSSH2_SESSION;
  fingerprint:PAnsiChar;
  channel:PLIBSSH2_CHANNEL;
  i:integer;
  buf:array[0..10000] of char;
  len:integer;
  Welcomemessage:boolean=true;

Function Parse_Function():boolean;
Var
  command:string;
  Parameters:TstringList;
begin
try

  command:= Console.Memo1.Lines[Console.Memo1.Lines.Count-1];

  Parameters:=TstringList.Create;

  ExplodeString(' ',command,Parameters);

  Parameters[0]:= UpperCase(Parameters[0]);

  case trim(Parameters[0]) of
    'CLEAR'          : begin Console.Memo1.Lines.Clear; Result:=true; exit; end;
    'INFO'           : begin Console.Memo1.Lines.Add('INFO: GROW_4'+#13#10+'INFO: Version 1.2'); Result:=true; exit; end;
    'ARRAYTOCONSOLE' : begin if Parameters.Count > 1 then begin ArrayToConsole(Parameters[1]); Result:=true; exit; end else begin        Console.AddCommunicate('Syntax: ARRAYTOCONSOLE <space> array_name',true); end;  end;
    'CONNECT'        : begin if Parameters.Count >= 3 then begin Connect(Parameters[1],Parameters[2]); Result:=true; exit; end else begin Console.AddCommunicate('Syntax: CONNECT <space> host_adress <space> username',true); end; end;
    'DISCONNECT'     : begin Disconnect(); Result:=true; exit; end;
    ''               : begin Result:=true; exit; end;
    {'open'          : pobierz plik z servera i otworz;
    'open'           : otworz plik w scripteditor !;
    'edit'           : tak samo jak open!;
    'download co gdzie'
    'upload co dzie'
    'upload co skad' - przenosi plik do aktulanego katalogu
    'download co gdzie' - poniera plik z aktualnego folderu }
  end;

  If (copy(command,0,1) = '>') then
     begin
        if (ServerConnected = true) then
         begin

           command := command + LineEnding;

              libssh2_channel_set_blocking(channel,0);
              libssh2_channel_write(channel,pchar(copy(command,2,length(command))),length(copy(command,2,length(command))));

           Result:=True;
           Exit;
         end
           else begin Console.AddCommunicate('Remote server connection status: FALSE',true); exit; end;
         end;

   If (copy(command,0,1) = '<') then
     begin
       Console.AddCommunicate('Command Prompt initialization status: FALSE',true); Result:=True; exit; // true bo maja same odp
     end;

   Result:=False;
Except
  Result:=False;
end;
end;

Procedure CommandResult();
begin

  libssh2_channel_set_blocking(channel,0);

  len:=libssh2_channel_read(channel,buf,10000);

  if len>0 then
   begin
   if Welcomemessage then
    begin
      showmessage(copy(buf,1,len));
      Console.Memo1.Lines.Add(copy(buf,1,len));
      Welcomemessage:=false;
    end
     else
       begin
         Console.Memo1.Lines.Add(copy(buf,1,len));
       end;
   end;

end;

procedure KbdInteractiveCallback(const Name: PAnsiChar; name_len: Integer;
    const instruction: PAnsiChar; instruction_len: Integer; num_prompts: Integer;
    const prompts: PLIBSSH2_USERAUTH_KBDINT_PROMPT;
    var responses: LIBSSH2_USERAUTH_KBDINT_RESPONSE;
      abstract: Pointer); cdecl;

  var
    Pass: String;
    Data: PAbstractData;
  begin
    if num_prompts = 1 then
    begin

    pass:= inputbox('Password','Password: ','rafal7777777') ;

      if (Pass <> '') then
      begin
        responses.Text := PAnsiChar(AnsiString(Pass));
        responses.Length := Length(Pass);
      end;
    end;
  end;

Procedure Connect(server,username:string);
begin
 // zmien ico
 MainForm.ToolButton4.ImageIndex:=25;

  sock := TTCPBlockSocket.Create;
  sock.Connect(server,'22');
  if sock.LastError=0 then
    begin
    session := libssh2_session_init();
    if libssh2_session_startup(session, sock.Socket)<>0 then
      begin
      Console.AddCommunicate('Cannot establishing SSH session',true);
      exit;
      end;

    Console.AddCommunicate('Userauth-list: '+ libssh2_userauth_list(session, Pchar(username),Length(username)),true);

    fingerprint := libssh2_hostkey_hash(session, LIBSSH2_HOSTKEY_HASH_SHA1);

    Console.AddCommunicate('Host fingerprint ',true);

    Console.Memo1.Lines.Add('');

    i:=0;
    while fingerprint[i]<>#0 do
      begin
      Console.Memo1.Lines[Console.Memo1.Lines.Count-1]:=  Console.Memo1.Lines[Console.Memo1.Lines.Count-1]+(inttohex(ord(fingerprint[i]),2)+':');
      i:=i+1;
      end;

    Console.AddCommunicate('Assuming known host...',true);
    Console.AddCommunicate('Password for '+ username +' : <inputbox> ',true);


    // http://libssh2.sourceforge.net/doc/


   if libssh2_userauth_keyboard_interactive(session,pchar(AnsiString(username)), @KbdInteractiveCallback)  <>0 then
      begin
      Console.AddCommunicate('Authentication by password failed',true);
       MainForm.ToolButton4.ImageIndex:=24;
      exit;
      end;

    Console.AddCommunicate('Authentication succeeded',true);


    channel := libssh2_channel_open_session(session);
    if not assigned(channel) then
      begin
      Console.AddCommunicate('Cannot open session',true);
      MainForm.ToolButton4.ImageIndex:=24;
      exit;
      end;
    if libssh2_channel_request_pty(channel, 'vanilla')<>0 then
      begin
      Console.AddCommunicate('Cannot obtain pty',true);
      MainForm.ToolButton4.ImageIndex:=24;
      exit;
      end;
    if libssh2_channel_shell(channel)<>0 then
      begin
      Console.AddCommunicate('Cannot open shell',true);
      MainForm.ToolButton4.ImageIndex:=24;
      exit;
      end;

    MainForm.ToolButton4.ImageIndex:=26;

    console.Timer1.Enabled:=true;

    ServerConnected:=true;

    end
  else
    Console.AddCommunicate('Cannot connect!',true);
end;

Procedure Disconnect();
begin
    console.Timer1.Enabled:=false;
    libssh2_channel_free(channel);
    libssh2_session_disconnect(session,'');
    libssh2_session_free(session);
    sock.Free;
    Console.AddCommunicate('Disconnected!',true);
    Welcomemessage:=true;
    MainForm.ToolButton4.ImageIndex:=24;
end;


end.


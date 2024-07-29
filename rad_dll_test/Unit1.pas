unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{$DEFINE MSC}

Const
{$IFNDEF MSC}
 {$IFDEF CPUX64}
 dll_name = '..\..\..\rad_dll\Win64\Debug\rad_dll_cpp.dll';
 {$ELSE}
 dll_name = '..\..\..\rad_dll\Win32\Debug\rad_dll_cpp.dll';
 {$ENDIF}
{$ELSE}
 {$IFDEF CPUX64}
 dll_name = '..\..\..\test_dll\x64\Debug\dll1.dll';
 {$ELSE}
 dll_name = '..\..\..\test_dll\Debug\dll1.dll';
 {$ENDIF}
{$ENDIF}

function _Get_Int_Var: Integer; stdcall; external dll_name;

procedure TForm1.FormCreate(Sender: TObject);
Var
 a, b: Integer;
begin
 a := _Get_Int_Var;

 b := 1;
 b := 1;
end;

end.



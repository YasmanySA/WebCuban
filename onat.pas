unit onat;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.TMSFNCTypes, Vcl.TMSFNCUtils, Vcl.TMSFNCGraphics, Vcl.TMSFNCGraphicsTypes,
  Vcl.TMSFNCCustomControl, Vcl.TMSFNCWebBrowser, Vcl.TMSFNCEdgeWebBrowser,
  Vcl.StdCtrls, Vcl.TMSFNCWebCoreClientBrowser ,System.IOUtils,
  Vcl.ButtonStylesAttributes, Vcl.StyledTaskDialog;

type
  TfOnat = class(TForm)
    Button1: TButton;
    Button2: TButton;
    TMSFNCEdgeWebBrowser1: TTMSFNCEdgeWebBrowser;
    StyledTaskDialog1: TStyledTaskDialog;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

const url_onat = 'https://www.onat.gob.cu/';



var fOnat: TfOnat;

implementation

{$R *.dfm}

procedure TfOnat.Button1Click(Sender: TObject);
begin
  TMSFNCEdgeWebBrowser1.Navigate(url_onat)
end;

procedure TfOnat.Button2Click(Sender: TObject);
    var
  dir, jsCode,js: string;
begin


  try

begin
js:= 'post.js' ;
  dir := ExtractFilePath(Application.ExeName)+'js\onat\';
  jsCode := TFile.ReadAllText(dir + js);
  TMSFNCEdgeWebBrowser1.ExecuteJavaScript(jsCode);


//StyledTaskDialog1.Title := 'Confirmación';
//StyledTaskDialog1.Text:= dir+ js   ;
//StyledTaskDialog1.CommonButtons := [tcbYes, tcbNo];
//StyledTaskDialog1.Execute;

end;

//      TMSFNCEdgeWebBrowser1.ExecuteJavaScript
//      (js_post 'let s = document.createElement("script");' +
//      's.src = "http://spa2:9595/onat/post.js";' +
//      'document.head.appendChild(s);');

  except
    on E: Exception do begin
      ShowMessage(E.Message)
    end;
  end;

end;

end.

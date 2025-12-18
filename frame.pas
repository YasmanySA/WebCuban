unit frame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCEFViewComponent,
  uCEFBrowserViewComponent, uCEFChromiumCore, uCEFFMXChromium,
  uCEFButtonComponent, uCEFLabelButtonComponent, uCEFMenuButtonComponent,
  Vcl.StdCtrls;

type
  Tappframe = class(TFrame)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

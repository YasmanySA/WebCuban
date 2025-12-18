unit minjus;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Winapi.WebView2, Winapi.ActiveX, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.Edge,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, System.IOUtils,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, Vcl.ButtonStylesAttributes, Vcl.StyledButton,
  Vcl.StyledTaskDialog, Vcl.StyledAnimatedTaskDialog, dxLayoutcxEditAdapters,
  cxContainer, cxTextEdit, dxLayoutLookAndFeels, cxDBEdit, Vcl.ExtCtrls,
  JvExStdCtrls, JvMemo, cxMemo;

type
  Tf_minjus = class(TForm)
    app_edge: TEdgeBrowser;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxButton3: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem5: TdxLayoutItem;
    DScases: TDataSource;
    StyledButton1: TStyledButton;
    dxLayoutItem6: TdxLayoutItem;
    dialog: TStyledAnimatedTaskDialog;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButton4: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    edCases: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    edPIN: TcxDBTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    cxButton5: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    cxButton6: TcxButton;
    cxDefaultEditStyleController1: TcxDefaultEditStyleController;
    cxEditStyleController1: TcxEditStyleController;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutItem12: TdxLayoutItem;
    cxButton7: TcxButton;
    cxGrid1DBTableView1date_add: TcxGridDBColumn;
    cxGrid1DBTableView1numbercase: TcxGridDBColumn;
    cxGrid1DBTableView1pin: TcxGridDBColumn;
    cxGrid1DBTableView1state: TcxGridDBColumn;
    cxGrid1DBTableView1stat_msg: TcxGridDBColumn;
    cxGrid1DBTableView1type: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    Timer1: TTimer;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    cxButton8: TcxButton;
    script: TcxMemo;
    dxLayoutItem15: TdxLayoutItem;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure app_edgeExecuteScript(Sender: TCustomEdgeBrowser;
      AResult: HRESULT; const AResultObjectAsJson: string);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
  private
    procedure data_add;
    procedure data_save;

    procedure Load;

    { Private declarations }
  public

    StateResult: string; // 🔹 Variable pública para guardar el resultado
    styleAlert: string; // 🔹 Variable pública para guardar el style
    procedure sen_data;
    function LoadJS: string;
    { Public declarations }
  end;

var f_minjus: Tf_minjus;

implementation

{$R *.dfm}

uses Data, System.JSON;

function Tf_minjus.LoadJS(): string;
var JSPath: string; JSCode: string;
begin

  // Ruta del archivo myscript.js (en la misma carpeta que el .exe)
  JSPath := ExtractFilePath(Application.ExeName) + 'js\minjus\minjus.js';
  if FileExists(JSPath) then begin
    // Leer el contenido del archivo .js
    JSCode := TFile.ReadAllText(JSPath, TEncoding.UTF8);
    Result := JSCode;
    // Verificar que ambos parámetros no estén vacíos

  end else begin
    ShowMessage('❌ No se encontró el archivo: ' + JSPath);
  end;

end;

procedure Tf_minjus.app_edgeExecuteScript(Sender: TCustomEdgeBrowser;
  AResult: HRESULT; const AResultObjectAsJson: string);
var JSONObject: TJSONObject;
begin
  try
    StyledButton1.Caption := AResultObjectAsJson;
    // Parsear el JSON devuelto por el script
    JSONObject := TJSONObject.ParseJSONValue(AResultObjectAsJson)
      as TJSONObject;
    if Assigned(JSONObject) then begin

      // Guardar el valor del campo "state" en la variable pública
      StateResult := JSONObject.GetValue<string>('state', '');
      styleAlert := JSONObject.GetValue<string>('StyleClass', '');
      // Mostrar el valor en el botón (opcional)
      StyledButton1.Caption := StateResult;
      StyledButton1.StyleClass := styleAlert;
    end else begin
      StateResult := 'INVALID_JSON';
      StyledButton1.Caption := 'Error: JSON inválido';
    end;
  except
    on E: Exception do begin
      StateResult := 'ERROR';
      ShowMessage(AResultObjectAsJson);
      StyledButton1.Caption := 'Error parseando JSON: ' + E.Message;
    end;
  end;
end;

procedure Tf_minjus.cxButton2Click(Sender: TObject);
begin
  app_edge.DevToolsEnabled := true;
end;

/// <summary>
/// Genera una cadena con la llamada a la función Postdata,
/// sustituyendo los parámetros de caso y PIN en el formato especificado.
/// </summary>
/// <param name="cases">
/// Número del caso que se enviará.
/// </param>
/// <param name="pin">
/// Código PIN asociado al caso.
/// </param>
/// <returns>
/// Una cadena con el formato: Postdata("case","pin").
/// </returns>
function Post(cases, pin: string): string;
begin

  Result := Format('Postdata("%s","%s")', [cases, pin]);
end;

function loadweb(): string;
begin

  Result := 'loadweb()';
end;

procedure Tf_minjus.cxButton3Click(Sender: TObject);

begin
  sen_data;

end;

procedure Tf_minjus.cxButton4Click(Sender: TObject);
begin
  close
end;

procedure Tf_minjus.cxButton5Click(Sender: TObject);
begin
  data_add;

end;

procedure Tf_minjus.cxButton6Click(Sender: TObject);
begin

  try data_save
  except
    on E: Exception do begin
      ShowMessage(E.Message)
    end;
  end;

end;

procedure Tf_minjus.cxButton7Click(Sender: TObject);
var JSPath: string; JSCode: string;
begin

  // Verificar que ambos parámetros no estén vacíos
  // script.Text := LoadJS;
  app_edge.ExecuteScript(LoadJS + '  getError(); ');

end;

procedure Tf_minjus.cxButton8Click(Sender: TObject);
begin
  app_edge.ExecuteScript(LoadJS + script.Text);
end;

procedure Tf_minjus.data_add;
begin
  dm.q_cases.Append;
end;

procedure Tf_minjus.data_save;
begin
  dm.q_cases.Post;
end;

procedure Tf_minjus.FormCreate(Sender: TObject);
begin
  app_edge.Navigate('about:blank');

  TThread.CreateAnonymousThread(procedure
    begin
      Sleep(1000);
      TThread.Synchronize(nil, procedure
        begin
          Load;
        end);
    end).Start;
end;

procedure Tf_minjus.sen_data;
var cases: string; pin: string; JSPath: string; JSCode: string;
begin
  with dm do begin

    cases := q_casesnumbercase.Value;
    pin := q_casespin.Value;
  end;
  // Ruta del archivo myscript.js (en la misma carpeta que el .exe)

  if (dm.q_cases.RecordCount > 0) or (cases <> '') and (pin <> '') then
  // Verificar que ambos parámetros no estén vacíos
  begin
    app_edge.ExecuteScript(LoadJS + Post(cases, pin));
  end else begin
    dialog.Text := 'No se ha insertado todavía un código de caso.';
    dialog.Execute;
  end;

end;

procedure Tf_minjus.Load;

begin

  app_edge.ExecuteScript(LoadJS + loadweb);

end;

end.

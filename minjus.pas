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
  JvExStdCtrls, JvMemo, cxMemo,JsonDataObjects,uJsonHandler, cxHyperLinkEdit,
  cxGroupBox, cxCheckGroup, cxCheckBox, cxCustomListBox,Winapi.ShellAPI, cxCheckListBox;

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
    bt_log: TStyledButton;
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
    IntervalExecute: TTimer;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    cxButton8: TcxButton;
    script: TcxMemo;
    dxLayoutItem15: TdxLayoutItem;
    Memo1: TMemo;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    cxButton9: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    bt_msg: TStyledButton;
    dxLayoutGroup6: TdxLayoutGroup;
    timerPostData: TTimer;
    timerGetError: TTimer;
    getresponse_timer: TTimer;
    timeGetstatus: TTimer;
    url_edit: TcxHyperLinkEdit;
    dxLayoutItem19: TdxLayoutItem;
    Timer1: TTimer;
    viewTimeStatedebug: TTimer;
    dxLayoutItem20: TdxLayoutItem;
    cxCheckListBox1: TcxCheckListBox;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    Button1: TButton;
    dxLayoutItem21: TdxLayoutItem;
    timerOpenview: TTimer;
    const
 url_login =
    'https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/login';
 url_tracker =
    'https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/';
 tracker_DynaDocs = 'tracker_DynaDocs';
 INPUT_DOCUMENT =
    'tracker_Show?CTO_UID_OBJ=7745944765ce5972287f1f0082113289&CTO_TYPE_OBJ=INPUT_DOCUMENT';
 DYNAFORM =
   'tracker_Show?CTO_UID_OBJ=2473970175d10d8284601e4012429159&CTO_TYPE_OBJ=DYNAFORM';

 url_tracker_DynaDocs = 'https://certificaciones.minjus.gob.cu/sysmin_jus/es-ES/minjus/tracker/tracker_DynaDocs';


    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure app_edgeExecuteScript(Sender: TCustomEdgeBrowser;
      AResult: HRESULT; const AResultObjectAsJson: string);
    procedure app_edgeNavigationCompleted(Sender: TCustomEdgeBrowser; IsSuccess:
        Boolean; WebErrorStatus: COREWEBVIEW2_WEB_ERROR_STATUS);
    procedure Button1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure getInfo;
    procedure getresponse_timerTimer(Sender: TObject);
    procedure getStatus;
    procedure IntervalExecuteTimer(Sender: TObject);
    procedure timeGetstatusTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure timerGetErrorTimer(Sender: TObject);
    procedure timerOpenviewTimer(Sender: TObject);
    procedure timerPostDataTimer(Sender: TObject);
    procedure viewTimeStatedebugTimer(Sender: TObject);
  private
    procedure data_add;
    procedure data_save;
    procedure exec_script(js:string;call: string);

    procedure Load;

    { Private declarations }
  public
  action:string;
  link:string;
  responseScript:string;
    url_navigate:string ;
    StateResult: string; // 🔹 Variable pública para guardar el resultado
    msgResult: string; // 🔹 Variable pública para guardar el resultado
    styleAlert: string; // 🔹 Variable pública para guardar el style
    styleAlert2: string; // 🔹 Variable pública para guardar el style
    procedure getError;
    function sen_data():Boolean;
    function LoadJS(namescript:string): string;
     function  url_app():Boolean;

    { Public declarations }
  end;

var f_minjus: Tf_minjus;

implementation
 uses Data, System.JSON;
{$R *.dfm}

 procedure true_(T: TTimer);
begin
  T.Enabled := True;
end;

procedure false_(T: TTimer);
begin
  T.Enabled := False;
end;



procedure Tf_minjus.exec_script(js:string;call: string);



begin
 
if js= ''  then begin

  app_edge.ExecuteScript( call);


end else
begin
  app_edge.ExecuteScript(js+ call);
end;


end;



function navigate(): string;
begin

  Result := 'navigate()';
end;

function Tf_minjus.LoadJS(namescript:string): string;
var JSPath: string; JSCode: string;
begin

  // Ruta del archivo myscript.js (en la misma carpeta que el .exe)
  JSPath := ExtractFilePath(Application.ExeName) + 'js\minjus\'+namescript+'.js';
  if FileExists(JSPath) then begin
    // Leer el contenido del archivo .js
    JSCode := TFile.ReadAllText(JSPath, TEncoding.UTF8);
    Result := JSCode;
    // Verificar que ambos parámetros no estén vacíos

  end else begin
    ShowMessage('❌ No se encontró el archivo: ' + JSPath);
  end;

end;

procedure Tf_minjus.app_edgeExecuteScript(
  Sender: TCustomEdgeBrowser;
  AResult: HRESULT;
  const AResultObjectAsJson: string);
//var
//  JSONValue: TJSONValue;
//  JSONObject: TJSONObject;
begin
///////////bt_log representa el log de las salidas de los script
   responseScript :=  AResultObjectAsJson;

//
//  Memo1.Text := AResultObjectAsJson;
//
//  // Validación básica
//  if (responseScript = '') or (responseScript = 'null') then
//  begin
//    StateResult := 'NULL_RESULT';
//    bt_log.Caption := 'Esperando...';
//    bt_log.StyleClass := 'Info';
//    Exit;
//  end;
//
//  try
//    JSONValue := TJSONObject.ParseJSONValue(responseScript);
//    try
//      if not (JSONValue is TJSONObject) then
//      begin
//        StateResult := 'INVALID_JSON';
//        bt_log.Caption := 'JSON no es objeto';
//        Exit;
//      end;
//
//      JSONObject := JSONValue as TJSONObject;
//
//      // Leer valores de forma segura
//      if not JSONObject.TryGetValue<string>('state', StateResult) then
//        StateResult := '';
//             if not JSONObject.TryGetValue<string>('msg', msgResult) then
//        msgResult := '';
//
//      if not JSONObject.TryGetValue<string>('StyleClass', styleAlert) then
//        styleAlert := '';
//           if not JSONObject.TryGetValue<string>('StyleClass2', styleAlert2) then
//        styleAlert2 := '';
//
//
//      bt_log.Caption := StateResult;
//        bt_msg.Caption := msgResult;
//      bt_log.StyleClass := styleAlert;
//      bt_msg.StyleClass := styleAlert2;
//
//    finally
//      JSONValue.Free; // ← evita fuga de memoria
//    end;
//
//  except
//    on E: Exception do
//    begin
//      StateResult := 'ERROR';
//      ShowMessage(AResultObjectAsJson);
//      bt_log.Caption := 'Error JSON: ' + E.Message;
//    end;
//  end;
end;


procedure Tf_minjus.cxButton1Click(Sender: TObject);
begin
Load;

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



procedure Tf_minjus.app_edgeNavigationCompleted(Sender: TCustomEdgeBrowser;
    IsSuccess: Boolean; WebErrorStatus: COREWEBVIEW2_WEB_ERROR_STATUS);
begin
 app_edge.ExecuteScript(LoadJS('minjus') );
 url_navigate:= app_edge.LocationURL;
end;

procedure Tf_minjus.Button1Click(Sender: TObject);
begin
timeGetstatus.Enabled :=  not timeGetstatus.Enabled;
end;

procedure Tf_minjus.cxButton3Click(Sender: TObject);
begin
  // Ejecutar primero


 if (app_edge.LocationURL = url_login) or
   (app_edge.LocationURL = url_login+'.php') then
begin
  false_(timerGetError);
  timerPostData.Enabled := True;
end;



//  TThread.CreateAnonymousThread(
//    procedure
//    begin
//      try
//        Sleep(1000);
//
//        // getError
//        TThread.Synchronize(nil,
//          procedure
//          begin
//            getError;
//          end
//        );
//
//        Sleep(1500);
//
//        // getStatus
//        TThread.Synchronize(nil,
//          procedure
//          begin
//            getStatus;
//          end
//        );
//
//        Sleep(3000);
//
//        // getInfo
//        TThread.Synchronize(nil,
//          procedure
//          begin
//            getInfo;
//          end
//        );
//        Sleep(1500);
//
//        // getInfo
//        TThread.Synchronize(nil,
//          procedure
//          begin
//         exec_script(LoadJS('download'),'; Open_table() ');
//          end
//        );
//         Sleep(1500);
//
//        // getInfo
//        TThread.Synchronize(nil,
//          procedure
//          begin
//         exec_script('',' getLink() ');
//          end
//        );
//
//      except
//        on E: Exception do
//          TThread.Synchronize(nil,
//            procedure
//            begin
//              ShowMessage('Error en hilo: ' + E.Message);
//            end
//          );
//      end;
//    end
//  ).Start;
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


(*TODO: extracted code
exec_script('  getstatus(); ');
*)
getStatus;



end;

procedure Tf_minjus.cxButton8Click(Sender: TObject);
begin
  app_edge.ExecuteScript(script.Text);
end;

procedure Tf_minjus.cxButton9Click(Sender: TObject);
begin

  (*TODO: extracted code
  exec_script('  getInfo(); ');
  *)
  getInfo;

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

procedure Tf_minjus.getError;
begin
exec_script( '' ,'  getError(); ');
end;

procedure Tf_minjus.getInfo;
begin
  exec_script( '' , '  getInfo(); ');
end;

procedure Tf_minjus.getresponse_timerTimer(Sender: TObject);
var
  Obj: TJsonObj;
  State: string;
  StyleClass: string;
//  link: string;
begin
  Memo1.Text:= responseScript;

  // Aún no hay respuesta
  if responseScript = '' then



  begin
    bt_log.Caption := 'Esperando...';
    bt_log.StyleClass := 'Info';
    Exit;
  end;

  Obj := nil;
  try
    Obj := TJsonObj.Create(responseScript);

    // Leer una sola vez
    State := Obj.AsString('state');
    StyleClass := Obj.AsString('StyleClass');
    action:= Obj.AsString('action');



//   if  Obj.AsString('link').Length > 5 then begin
     link:= Obj.AsString('link');
//   end;




    if State <> '' then
    begin
      bt_log.Caption := State;
      bt_log.StyleClass := StyleClass; // si tu StyleClass depende del state
    end;
  except
    on E: Exception do
    begin
//      bt_log.Caption := 'Error';
//      bt_log.StyleClass := 'Danger';
//       opcional: Log(E.Message);
    end;
  end;

  Obj.Free;
end;









procedure Tf_minjus.getStatus;
begin
  exec_script('', '  getstatus(); ');
end;

procedure Tf_minjus.IntervalExecuteTimer(Sender: TObject);
begin
true_(timerPostData);
end;

function Tf_minjus.sen_data;
var cases: string; pin: string; JSPath: string; JSCode: string;
begin
  with dm.q_cases do begin

    cases := FieldByName('numbercase').Value;
    pin := FieldByName('pin').Value;
    end;

  // Ruta del archivo myscript.js (en la misma carpeta que el .exe)

  if (dm.q_cases.RecordCount > 0) or (cases <> '') and (pin <> '') then
  // Verificar que ambos parámetros no estén vacíos
  begin
    exec_script('' , Post(cases, pin));


  end else begin
    dialog.Text := 'No se ha insertado todavía un código de caso.';
    dialog.Execute;
  end;

end;

procedure Tf_minjus.Load;

begin
   false_(timerGetError);
  app_edge.ExecuteScript(LoadJS('load') +    navigate);
    true_(getresponse_timer);

//    app_edge.ExecuteScript(LoadJS('minjus') );
end;

procedure Tf_minjus.timeGetstatusTimer(Sender: TObject);

begin




    if  url_navigate= url_tracker_DynaDocs  then
    if action = 'Login' then

    begin
     getStatus;
         false_(timerGetError);
//      getStatus;
//      false_(timerGetError);
//      false_(timeGetstatus);

    end;

       if (app_edge.LocationURL = url_tracker + INPUT_DOCUMENT) or
   (app_edge.LocationURL = url_tracker + DYNAFORM ) then
   begin
   true_(timerOpenview);
     false_(timeGetstatus);

   end;

////  true_(getresponse_timer)  ;

//      false_(timeGetstatus);

end;

procedure Tf_minjus.Timer1Timer(Sender: TObject);
begin
url_edit.Text:= app_edge.LocationURL;
end;

procedure Tf_minjus.timerGetErrorTimer(Sender: TObject);
begin
getError;

//  true_(getresponse_timer)  ;
    if (app_edge.LocationURL = url_login) or
   (app_edge.LocationURL = url_login+'.php') then

begin
//false_(timerGetError);
  false_(timerPostData);
//true_(timerGetError)
//false_(timerGetError);



end;






end;

procedure Tf_minjus.timerOpenviewTimer(Sender: TObject);
begin
    if action= 'open_document' then
                                     begin
    exec_script('',' Open_table() ');


                                     end;
//
//
     if action= 'download' then
     begin
       exec_script('',' getLink() ');
     end;
     if action= 'end' then
     begin
       ShellExecute(0, 'open', pchar(link),nil, nil, SW_SHOWNORMAL);

      false_(timerOpenview);
     end;




end;

function  Tf_minjus.url_app():Boolean;
begin


end;

procedure Tf_minjus.timerPostDataTimer(Sender: TObject);
begin

sen_data  ;
 true_(timeGetstatus);
true_(timerGetError);


   if  url_navigate= url_tracker_DynaDocs  then

begin
// true_(timeGetstatus);
true_(timerGetError);

false_(timerPostData);




end;

end;

procedure Tf_minjus.viewTimeStatedebugTimer(Sender: TObject);
begin
cxCheckListBox1.Items[0].Checked:= timerPostData.Enabled;
cxCheckListBox1.Items[1].Checked:= timerGetError.Enabled;
cxCheckListBox1.Items[2].Checked:= timeGetstatus.Enabled;
cxCheckListBox1.Items[3].Checked:= timerOpenview.Enabled;
//cxCheckListBox1.Items[4].Checked:= timeGetstatus.Enabled;
//cxCheckListBox1.Properties.Items.Items[3].Enabled:= timerPostData.Enabled;
//cxCheckListBox1.Properties.Items.Items[4].Enabled:= timerPostData.Enabled;

end;

end.

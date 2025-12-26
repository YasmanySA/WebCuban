unit data;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.DApt, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf;

type
  Tdm = class(TDataModule)
    db: TFDConnection;
    q_cases: TFDQuery;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    q_casesID: TLargeintField;
    q_casesdate_add: TSQLTimeStampField;
    q_casesnumbercase: TStringField;
    q_casespin: TStringField;
    q_casesstate: TStringField;
    q_casesstat_msg: TStringField;
    q_casestype: TIntegerField;
    q_casesname: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.


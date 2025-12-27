unit uJsonHandler;

interface

uses
  System.SysUtils,
  System.JSON;

type
  TJsonObj = class
  private
    FObj: TJSONObject;
    function GetItem(const Key: string): TJSONValue;
  public
    constructor Create(const JsonText: string); overload;
    constructor Create(AObj: TJSONObject); overload;
    destructor Destroy; override;

    // Acceso tipo Obj['state'].Value
    property Items[const Key: string]: TJSONValue read GetItem; default;

    // Métodos seguros
    function AsString(const Key: string): string;
    function AsInteger(const Key: string): Integer;
    function AsBoolean(const Key: string): Boolean;
    function AsFloat(const Key: string): Double;
    function AsObject(const Key: string): TJSONObject;
  end;

implementation

{ TJsonObj }

constructor TJsonObj.Create(const JsonText: string);
begin
  FObj := TJSONObject.ParseJSONValue(JsonText) as TJSONObject;
  if not Assigned(FObj) then
    raise Exception.Create('JSON inválido');
end;

constructor TJsonObj.Create(AObj: TJSONObject);
begin
  FObj := AObj;
end;

destructor TJsonObj.Destroy;
begin
  FObj.Free;
  inherited;
end;

function TJsonObj.GetItem(const Key: string): TJSONValue;
begin
  if Assigned(FObj) then
    Result := FObj.GetValue(Key)
  else
    Result := nil;
end;

function TJsonObj.AsString(const Key: string): string;
begin
  if Items[Key] <> nil then
    Result := Items[Key].Value
  else
    Result := '';
end;

function TJsonObj.AsInteger(const Key: string): Integer;
begin
  if Items[Key] <> nil then
    Result := Items[Key].AsType<Integer>
  else
    Result := 0;
end;

function TJsonObj.AsBoolean(const Key: string): Boolean;
begin
  if Items[Key] <> nil then
    Result := Items[Key].AsType<Boolean>
  else
    Result := False;
end;

function TJsonObj.AsFloat(const Key: string): Double;
begin
  if Items[Key] <> nil then
    Result := Items[Key].AsType<Double>
  else
    Result := 0;
end;

function TJsonObj.AsObject(const Key: string): TJSONObject;
begin
  if (Items[Key] <> nil) and (Items[Key] is TJSONObject) then
    Result := Items[Key] as TJSONObject
  else
    Result := nil;
end;

end.


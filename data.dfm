object dm: Tdm
  Height = 761
  Width = 1014
  object db: TFDConnection
    Params.Strings = (
      'SERVER=spa2\sqlserver'
      'Database=webcuban'
      'User_Name=app'
      'Password=app'
      'OSAuthent=No'
      'ApplicationName=Enterprise/Architect/Ultimate'
      'Workstation=SPA2'
      'MARS=yes'
      'Pooled=webcuban'
      'Encrypt=Optional'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 72
  end
  object q_cases: TFDQuery
    Active = True
    Connection = db
    SQL.Strings = (
      'SELECT * FROM tbcases')
    Left = 224
    Top = 136
    object q_casesID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object q_casesdate_add: TSQLTimeStampField
      FieldName = 'date_add'
      Origin = 'date_add'
    end
    object q_casesnumbercase: TStringField
      FieldName = 'numbercase'
      Origin = 'numbercase'
      Size = 255
    end
    object q_casespin: TStringField
      FieldName = 'pin'
      Origin = 'pin'
      Size = 255
    end
    object q_casesstate: TStringField
      FieldName = 'state'
      Origin = 'state'
      Size = 255
    end
    object q_casesstat_msg: TStringField
      FieldName = 'stat_msg'
      Origin = 'stat_msg'
      Size = 255
    end
    object q_casestype: TIntegerField
      FieldName = 'type'
      Origin = 'type'
    end
    object q_casesname: TStringField
      FieldName = 'name'
      Origin = 'name'
      Size = 255
    end
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 256
    Top = 280
  end
end

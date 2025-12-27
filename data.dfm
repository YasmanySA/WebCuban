object dm: Tdm
  Height = 761
  Width = 1014
  object db: TFDConnection
    Params.Strings = (
      
        'Database=D:\SoftwareProgramer\Software\WebCuban\Win64\Debug\data' +
        'base.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
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
    object q_casesID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object q_casesdate_add: TWideStringField
      FieldName = 'date_add'
      Origin = 'date_add'
      Size = 7
    end
    object q_casesnumbercase: TWideStringField
      FieldName = 'numbercase'
      Origin = 'numbercase'
      Size = 15
    end
    object q_casespin: TWideStringField
      FieldName = 'pin'
      Origin = 'pin'
      Size = 4
    end
    object q_casesstate: TWideStringField
      FieldName = 'state'
      Origin = 'state'
      Size = 100
    end
    object q_casesstat_msg: TWideStringField
      FieldName = 'stat_msg'
      Origin = 'stat_msg'
      Size = 255
    end
    object q_casestype: TIntegerField
      FieldName = 'type'
      Origin = 'type'
    end
    object q_casesname: TWideStringField
      FieldName = 'name'
      Origin = 'name'
      Size = 50
    end
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 256
    Top = 280
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 368
    Top = 352
  end
end

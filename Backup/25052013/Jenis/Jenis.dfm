inherited JenisForm: TJenisForm
  Caption = 'Jenis Form'
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Height = 344
    ExplicitTop = 5
    ExplicitHeight = 344
    ClientRectBottom = 344
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 27
      ExplicitWidth = 420
      ExplicitHeight = 314
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitHeight = 0
    Height = 0
  end
  inherited cxGroupBox2: TcxGroupBox
    Top = 349
    ExplicitTop = 349
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 349
    ExplicitTop = 349
    ExplicitHeight = 0
    Height = 0
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 0
    ExplicitTop = 0
  end
  inherited cxGrid1: TcxGrid
    Top = 5
    Height = 344
    ExplicitTop = 5
    ExplicitHeight = 344
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsJenis
      object cxGrid1DBTableView1JenisID: TcxGridDBColumn
        Caption = 'Jenis ID'
        DataBinding.FieldName = 'JenisID'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1Keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'Keterangan'
      end
    end
  end
  object connTrading: TADOConnection
    CommandTimeout = 3000
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=trading;PORT=3306"'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 136
    Top = 104
  end
  object Jenis: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select JenisID, Keterangan, TGLU from pxjenis order by Keteranga' +
      'n asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 160
    object JenisJenisID: TStringField
      FieldName = 'JenisID'
      Size = 10
    end
    object JenisKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
    object JenisTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
  end
  object dsJenis: TDataSource
    DataSet = Jenis
    Left = 192
    Top = 160
  end
end

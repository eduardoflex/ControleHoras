object DmRegistros: TDmRegistros
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 164
  Width = 132
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 48
    Top = 16
    object cxGridViewRepository1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          OnGetText = cxGridViewRepository1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
          FieldName = 'tempo'
          Column = cxGridViewRepository1DBTableView1tempo
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.HeaderEndEllipsis = True
      object cxGridViewRepository1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Visible = False
      end
      object cxGridViewRepository1DBTableView1projeto: TcxGridDBColumn
        Caption = 'Projeto'
        DataBinding.FieldName = 'projeto'
        Visible = False
      end
      object cxGridViewRepository1DBTableView1tempo: TcxGridDBColumn
        Caption = 'Tempo'
        DataBinding.FieldName = 'tempo'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '0.00'
        Properties.ImmediatePost = True
        Properties.Increment = 0.050000000000000000
        Properties.ZeroLargeIncrement = True
        OnGetCellHint = cxGridViewRepository1DBTableView1tempoGetCellHint
        Width = 75
      end
      object cxGridViewRepository1DBTableView1tarefa: TcxGridDBColumn
        Caption = 'Tarefa'
        DataBinding.FieldName = 'tarefa'
        Width = 75
      end
      object cxGridViewRepository1DBTableView1atividade: TcxGridDBColumn
        Caption = 'Atividade'
        DataBinding.FieldName = 'atividade'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Atendimento'
            ImageIndex = 0
            Value = 8
          end
          item
            Description = 'Desenvolvimento'
            Value = 9
          end
          item
            Description = 'Teste'
            Value = 10
          end
          item
            Description = 'An'#225'lise'
            Value = 11
          end
          item
            Description = 'Implanta'#231#227'o'
            Value = 28
          end
          item
            Description = 'Organizacional'
            Value = 29
          end
          item
            Description = 'Retorno'
            Value = 49
          end
          item
            Description = 'N'#227'o informada'
            Value = 0
          end>
        Width = 100
      end
      object cxGridViewRepository1DBTableView1comentario: TcxGridDBColumn
        Caption = 'Coment'#225'rio'
        DataBinding.FieldName = 'comentario'
        Width = 400
      end
    end
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      990000009619E0BD01000000180000000600000000000300000099000574656D
      706F080004000000010007535542545950450200490006004D6F6E6579000674
      617265666104000100000000000961746976696461646504000100000000000A
      636F6D656E746172696F01004A000000010005574944544802000200C8000770
      726F6A65746F0400010000000000046461746104000600000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'tempo'
        DataType = ftCurrency
      end
      item
        Name = 'tarefa'
        DataType = ftInteger
      end
      item
        Name = 'atividade'
        DataType = ftInteger
      end
      item
        Name = 'comentario'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'projeto'
        DataType = ftInteger
      end
      item
        Name = 'data'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 48
    Top = 112
    object ClientDataSet1tempo: TCurrencyField
      FieldName = 'tempo'
    end
    object ClientDataSet1tarefa: TIntegerField
      FieldName = 'tarefa'
    end
    object ClientDataSet1atividade: TIntegerField
      FieldName = 'atividade'
    end
    object ClientDataSet1comentario: TWideStringField
      FieldName = 'comentario'
      Size = 100
    end
    object ClientDataSet1projeto: TIntegerField
      FieldName = 'projeto'
    end
    object ClientDataSet1data: TDateField
      FieldName = 'data'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 48
    Top = 64
  end
end

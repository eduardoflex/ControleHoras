object DmOpcoes: TDmOpcoes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 215
  Width = 144
  object TrayIcon1: TTrayIcon
    Icons = cxImageList1
    PopupMenu = PopupMenu1
    Visible = True
    OnDblClick = TrayIcon1DblClick
    Left = 56
    Top = 16
  end
  object PopupMenu1: TPopupMenu
    Images = cxImageList1
    TrackButton = tbLeftButton
    Left = 56
    Top = 64
    object N3: TMenuItem
      Caption = 'Atualizar lista de tarefas'
      ImageIndex = 2
      OnClick = Refresh1Click
    end
    object Selecionarchamado1: TMenuItem
      Caption = 'Selecionar uma tarefa'
      Enabled = False
      ImageIndex = 6
    end
    object Parar1: TMenuItem
      Caption = 'Parar'
      Enabled = False
      ImageIndex = 1
      OnClick = Parar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = 'Sem tarefa'
      ImageIndex = 4
      object Geraodeverso1: TMenuItem
        Tag = 9
        Caption = 'Gera'#231#227'o de vers'#227'o'
        Hint = 'Gera'#231#227'o de vers'#227'o'
        ImageIndex = 12
        OnClick = SemChamadoClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Fechamentodesprint1: TMenuItem
        Tag = 29
        Caption = 'Fechamento de sprint'
        Hint = 'Fechamento de sprint'
        ImageIndex = 13
        RadioItem = True
        OnClick = SemChamadoClick
      end
      object Reuniodesprint1: TMenuItem
        Tag = 29
        Caption = 'Reuni'#227'o de sprint'
        Hint = 'Reuni'#227'o de sprint'
        ImageIndex = 14
        RadioItem = True
        OnClick = SemChamadoClick
      end
      object Reuniodiria1: TMenuItem
        Tag = 29
        Caption = 'Reuni'#227'o di'#225'ria'
        Hint = 'Reuni'#227'o di'#225'ria'
        ImageIndex = 15
        RadioItem = True
        OnClick = SemChamadoClick
      end
      object Reuniogeral1: TMenuItem
        Tag = 29
        Caption = 'Reuni'#227'o geral'
        OnClick = SemChamadoClick
      end
      object Outro1: TMenuItem
        Tag = 29
        Caption = 'Outro'
        ImageIndex = 17
        OnClick = SemChamadoClick
      end
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Informarchamado1: TMenuItem
      Caption = 'Informar manualmente'
      ImageIndex = 16
      OnClick = Informarchamado1Click
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 7340088
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000024744558745469746C6500466F726D61744E756D62657254696D653B
          466F726D61743B436C6F636B3B16EA68990000037049444154785E4D537B4CD3
          5718BD4CB7E89CFBCB853083AC0564B0B14DE632DC1830680B52445E090242EA
          2A5194B94E9916123774611BF8E6A1511B5C313586B1C11CA31D5A1E6ED66D2D
          43252D54B0A52585D1D7A6B1505E3BBBBF1B5C7693932FE7DEEF9CFB7D5FEE25
          FEC15B0C7405502C1BF8F4E0D6C1AA8A0BA6A31506F3E795B3A62AB9E1EEE1F2
          8BBF57C832E9F9722ECF7F8F6A28747919E43F715BA9F445E367F2EF2DA7BF80
          47DD0ADF6F5AD024F87ED5C2DDD982D1634771472EBBA62ADEB6960A9E9AB973
          93FC9C2B264CAC95ED8E3455554C4DA82EC0D3F52D0CE57BA04913A03D2E9646
          21F46552B8DA95186F6AC4C081BD53CA829C104ED797B59990F470FE8ABB873E
          1AF8B3E512C69567F1A32011BA9AE318D2F5C33AF1378BB76B8FA35390006B7D
          35356980AE54DA410D9E616D77880512DA2F5C3FA8A0162561A8F71626BD3EF8
          FCF35858FC07D334524EF77550A72461F2D249AE0A5C4D8A937033236A71F24F
          36C5191864BBA0AF6BC084DBC784FF5B8C3BDC8FD15FDF08C3EE228CD61E46BB
          E0BD2E56852625D1EDFA4E892EB110F6610BAE0937A3352E19AA37DF45D32B6F
          41965288E9193FA6FE9A86DD6CC10DB1088EC66AB4276E72528315A443180F6F
          9B12EAE40478BC8FE179E4C7F0E8186CF671381C0EE414C9394EF767E0A6E71A
          D1FB98AC3F422F797B8E1AAC246D09EFB827BFAEC38D74219C161B1EF9E62866
          B9C890B5FD10CCD480E34EAB1DDD5B44B05697E34A6C8C9319A8366DBC6E3C72
          10FA9DF9186E56B2E14DFB1728E61932F33FC103AB8D71F3E566E877E4E18F32
          091431AF69590B0D1B5E2DD564A761EC4B39BA33D3E01ABC87B9F905CCCE2FB2
          98B1ED00C66C76B88D46F4668BF1A0722FDA44F1A8895C5FC25E66F873AB5637
          6D8836EAF74931B47F272BD1AC388F87A32358A4D37F383282FB94F766A46268
          DF07F8657B16EAA2223454FCECD2F327CBF6F3D6C5285E8F76F6156663A4BC04
          FAA21CF46E4D4577BA007D9929D017E7E0FEC75268B352712E6ABDAB28283082
          D39D7D399C10CF374AC295921F1418762A224C436782DBF416D3871258A899A9
          AC18BA820C346F7C03B5A1BCAEDC17D6843FF95475617C42DC5714141759255C
          599521C12535A1BC9E53613C2F4DC0493ECFFB153FA4471EBC96EB79D5525E80
          4B798E9CE08710722694BF04DE932FFDF4527FAB299E679171B61F70ECA57584
          212498E15FF40537BBD4B9F0DB0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000B744558745469746C650053746F703BBA6D204F000001
          2449444154785EAD91B14A03411086E74E4E7C085FC3C25EED62E1C3D8D8D9F8
          08DA59F80C4284086A9D46EC4451825828B990E4727BBB3BB371FE42482EE79E
          A0071F2C33DFFCECECA5F4C7EFDF0292D36EE7F2ECAAE394790B0E2E661603D2
          2061676FEB30DBDF3EA21870D4DDC5CC5280E7B09EA58106A3EB2870D4CDEA01
          093BD146452212050EDCFA0AE4BC36C51007890107EEEA5FF09A6AFC98583806
          1CB8AB014E8B63F346D61724411A410F8E6B0CB0B8C18446664093EA9D2C17C4
          C1019C51430F0EDCE615D0F4E2A9B0390D67AFF4317D0438A3861E9C1F56F042
          959BB6BD019CE647642B3E3725AD251B517263E0723D606E2ABEEDF79EE5AEFB
          4231FABD2751F706338B01E1E2E4E1E0FCF87EF337C0C5CC5280522A43E5B305
          38E577C017B8899A7278A6B7920000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002A744558745469746C650052656672657368416C6C5069766F745461
          626C653B526566726573683B5570646174653B80B9A4FD000002714944415478
          5E5D936B48536118C775373D8D3235D7583A576ACB9A49105B17A274122E5D33
          8DCDCD5C6E2DC12E7633ED02D6666464B58D2E2BA304175A560C4B12AB6F19B4
          3EA8501059D482A8BE46DF6AF0F43C87F7C838077E7BDEE7FF9EFDDFCB9F9326
          7AD21912448AC85895902E42FCF0A2D4D3BDD6EEF31B07F6F6983EB69E33FDA5
          4A3DE9382F27535FC0E8171B496ABCFAFCC66365A1A6AEF2E4D86404DE2726E0
          C7EF29BE524FBAE3685998BD036C67E9C2CAF2BAFDA5A1BBA3A7E0C3CF18449F
          77C1F1A0051A3B5653E57B5E7F7606E98686432BC9408148F8D5AB3D45CEED6D
          CB93F12F57E0EC6D2B58BCC5239BEAB54DAA02653155EAAFC59A219EB8046F12
          7D80EF924126DB459A6C6BCBB2C148CC05171F58A1CABD742447CD15A09EC3C8
          AB74E9C2A7FB2BE0D1740B8FC55744069C602037BB0B67AB76EB803059350ED4
          16201C51E1D29E275D4CEA0E144836B29860ABCE63BA9CC66C5E8DE4231A6411
          9221DC8102E30231185D802263464AC791F206610E639C4DBDC40C8AE5D79F69
          9EE8B81FEC870D7D6C65391994ACC9CDC60887C65E5F87D15761C071947421C6
          4C8A25FE2DCC7367FC20D8F6AD18B6784B761836A8726B5BF5D6BA03A5F74243
          6DF0F66B84224C567B4ADC642E1870144BCF600DCF939976B8F5D4079D97B7C1
          CE76039C0CDAE0FE8B1330F9A9170203B58091DFC045B310D9DC0E28167393EE
          26C6D58FE364F0613D4C4C75C0BBEF17E0E54C275C7D6C07D2CDBB7491551BF3
          F4EC7812C140B1C5A9EDA5BC11F53A9B66CF66A776B8B2B9F033C6F58F2AF5EB
          6D4BBC2C2165EAF60929C2B189F9C84216938AC5AA627D56CAC54AC45FA18C10
          6E5D304C8163BA54FC29FF073A900E21C7F057FD0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000B744558745469746C6500496E666F3B6D122D860000032C49444154
          785E4D926B4C53671CC65F8480DB4CF8E632FCE6BE4D3F98F905E5BE95A86194
          A8518988554C87868240E45269D3721F728B054A3AA84E8358150D1034DC4B68
          579CAB502EA514B454B122975204BC06F3EC7D4F4EB79DE477F2CF7B9EDF7B9E
          F3E610F5ED6152DFEC6584D0CB87B285E24BF1E3F1E5D77CEA755C96F3D84C54
          379E10001C4C8C3F2B0D2CD70C6455698DF7AFDE1C7232AAB486D6324D5F767C
          92349065BCF91AEA928A06A357F6CD2B6D092FFFDD30F3506FC7D4F325ACAE7D
          6070335B2BD71866A4C57722F8463E958D7F12525AA7E7E49CE2BB87ABB5C64D
          BB6309CB6B9FD06D594049CB144AEED9E8BC08F7C667D8E946D58DC6CD9C22DD
          11E694AA0708F7CD27CF2983F2ABBB3C73AF3D30D83DC869B6A1E2FE24E6573E
          61E323206F9A40E60D2BFA27DC6099FCEA6ECF71916C077F5EC42F5D7E4BF1E0
          D1286CAE0D4875D348D38EA1CDE4C2FA7B6090BEFD42AD19928631CA38C69D6F
          C1B217654D4AFE804940865C6776BC58465DA713997F58697014A7AE982094F5
          214EDE8FC4F2C710D78C405C3B8CDF5AA6E178B98C74D9EDA7D4DD4A215FA5E4
          36BBD769D76C5A3345338AA4AB6654DC99C4E3C915B85781B2662B4E96999058
          F117CEAB9E826525B94D6EEA7E4DD84D9C71DDBDB6FE0189A543385162C2B142
          2334ED3358A4F2024579CD42DB0C40983780E30A03589639D4FD866B90905C37
          6A7F368F4BEA611CCCD24390D10B615637E6DDE0C8559B1199DA899FD37B9046
          DBB12C73BC0DFC63E30B8A1B6EEAF170E81504E9BD884AEDC2B1CBBD985B0487
          B2D18290E40E44A474A1DD380796159EC82F612EF7F7EDFAF1979D474595AB36
          BB0BD9EABF1172BE03AD86377052D9390F0C59D7117CAE0D97544FC032474F57
          AEFEB0E7D0F7CCF5FEFBFEA1D1A9A2845F555FCC16071EE86791543488B0E436
          8489DB70A6408F96FE59B0670962D597D0688988399C7BE070917793AD7B43CE
          C408840A67555D0746C666B1F1EE23839BD99A204EE1DCBB5F14C7CE8D39078E
          50F7A7582501F06F936F8376070547490A43A3B33A236364AEC8983C179D7BF6
          454A0AB77FB76B87F7CD00A8AB2024FC908C841FFC0FFEBB0228DB28813CDBF8
          B52DFFCF47D0F91F6B8D1EEDA0C90E830000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000019744558745469746C650044656C6574653B52656D6F76653B4D696E
          7573EBA98F410000031A49444154785E7D925F4854591CC7BFE7DE3BA3B9EEBA
          0D3BDBE85A3AA5C16A85586DB4B49459490FBD444B62C63EB450ADECD243D4DA
          4345F4982804D58B0F1541FBB02C0B1995AD44160A8B59499A8330E3486AEA4E
          EBCC9D3F77EE3DE7F43BF78A8F9D3F1CB8E77EBE7C7E3F0E8B9816D4585F5CC0
          00B0B6AE87352B8ABF3CAA33A311BA5ECD20B9E43CEAF07CDFC274ECFACD8B2D
          9300C4B86949179C48E7A1C0FAC6E68253D7063ADB6FBD726E3D8BCB0763F372
          E8BD295FCC99F2E1DB0579FBF9946CBFF93279B2A3F73800BF6214CB145CD770
          D8BFE3D0A9BFD7AD0934EDF97E0D3863B0B8844D5B69F90C06BFC6C0F30EFA06
          A6109D9ABFD773E34CF3E4E86046DDEB273A9F76568583BF36ED0C637AD18690
          804680DAF04421A404E52054E247EFD3284646631DDD679BCEB11FCFDEA90D55
          54BDFAE9E0063D9AC843D73417D469330DCB43081522C0395019F0E3CE9F23F6
          D8F0B32DACF5F2A3EB0DDBD69D280EAD84E500BA0E18068530461BCB830BCF82
          73E19AD98945F4F40E771942E8DB4B02C598331D3CF96708EF6712F8D4089506
          B07BDF667C55F21998BE62AF418D2A2716A9ACEDC2577F6BF04AD0DD52BC2E33
          AF177E9F8E63571E2395E130A093955666D836F77FC8E46173CF7755B0044585
          3EA2D4F202A49AEA945E98CD0512A6806353503E67C54CD3DA288C02947D1344
          CBA57B64A0B93F1A7E03B66543231B5DD7C1C86875C52A388E4436974736938D
          1BB9B4D9BF30BBB87165791075DB6A51E8F31A48CBB3905063D9C07238523907
          FFCF27915EFCAF976D3A70A1BEAC7AEBE0D65DB53EEED54B06DEA9A65A588285
          106E9070045E3F7FEB4406FFDAA2AE0BBF6BEDEE585D15FEE5DBCD6B91E79260
          E95A80B632904B0E028A9698781D476CF4CDD5A1BB6DBFAB00AD2850F945CDFE
          8B7F9486CBF7D5D4872135A6743DCC2D4312CE20487F62248E7791E8FDA1BB3F
          1F0190D4E66C29328958EA4DCFF9E6C9B1C88DFEFBC3F6E4F80C72664EE1AE7B
          266D211E99C1C0A39799C8BF03A7096E01909A2596CD399EE3D73EA6A9722AB6
          B76D2A0A56B7FA0A3EFF019A5EEA4A7367D6B692FDC977C3DDD32F6E8F03C811
          EC3A7E0415947A6BBEDAC8770000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000016744558745469746C65005461736B3B49737375653B536F6C76652D
          B55894000002BA49444154785E75916D48956718C77FE7C53A35D987660E75E0
          58AF9C1988B56963707AD1F22CE9C35935A34D868445080E8B461F4C2BB23464
          DB070D6A8C6A606D45851B140C2D27C33A568429099B1B3A8FC16188A9479F73
          9EE7BEAF3A4F473C15BBE1E2BAB8B97FFFFB7F5D172202E0005C801B4889C7B1
          E3A736D69FFC26F8D5FE43C1DD159585C0BCA470030E9B4D08B8FE3A5776FBCF
          735FC88986EFE4687D93D41E3929C17B0FA5B3EB8E3C1790AAEA8352537B4C7A
          9A3F97DEB3E5C1C44738013B3B1DE2CBDCB497E86408EFCAE56C29F984B7D216
          836B3E9BFC256C2DD9425ECE12B20AF790FADEDA0F5E157068AD713A1401EF14
          91C80457AE5CA6EE702DE77F38838E4E321D7D4AC7E3661A6F56D33DD00BB000
          C03D27A0708AC9A2F44C3EFBF853A60D83B8A85642786C84D3D72B29DEBA828C
          6C3747EAAE01786CE7248E28054E0F9EF4F7B975FF324DADE5B4077F66687480
          B3BF56515A9ACBC27746F9B6A58DC20C1F400C90B91694465B51BA07EFD21BBA
          C8C6A265F48FFEC4A94B6504025E229E3EDAAEF6B3C4F1114539F9000620492D
          98A062BCE14AE5DFA130EB8A9FB073572EE80F199E0A72F78F61C61F2DE6C097
          DB19BBD70E20C933E08583082BD3B3D9F6F651CEB454B16377161A83D0E82477
          6E404DD17616CA18FF0CF600385EDA82580A3DF31F1383BF93E7F511C86FE042
          CBDF4C46A6F9E5C73065FE5AD216B8B1C20FD0CA02E0E52D280B6D1944C74328
          0D6B56AD276634D2F0F53E7CB9DB28C82B62EC5A056FBE9B8AD6DA669205504A
          21E60CCA8C619A1A33A62958BD99566F1F2E970B1C2E8CF111442F456C07385E
          71A010CB40992643DFFB515AD90F456BB45680D835CA446B014044E61C48C241
          76CE3288C31287950D21162815071277EAB519585333D1CE81DF3A7C5A297B23
          B3B056769E85D122440CB30B309305621B4EF4F88194D9DE00FEA796041C0578
          0646B47718409CC86E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000016744558745469746C650046696C7465723B417267756D656E743B17
          84C161000002F249444154785E75927F48556718C7BFE79C9B9A9B3A6BB0E966
          D0FE2893C6608C08F18FFE8898C58D56F8A35D6C32A3DDAEA1B6CAA6462465D1
          2D860EB13082B6B5A16C315C136D3AF1CA5DC11A916E8A6DA89439D3EB95DDEB
          3DF7DE73CF79CFD3FBDAB961811FF8F0F21E783E3C9C73240042D95555BFE6B5
          55AF9728B2B28580372420C7240233D80863C6AC6EE8FDFFFB7DDF5FBBE21E07
          601207164AEDA9E623CD576E6877074769DAE7A7A0AA921A8D2E1A08A934393D
          4BDE3F86E87CD3375AF9E186A36246CC0B6D00E4E0C2427DC5471F278C8E8EA3
          E3E7BFE0BD7D0FA6694220CB32F272DF47F6FAB57014E527D4375CAA03F01597
          714500D0B4585F57CF1D7BEEE6F7B0E9837751E2B0238E08F9FC01FC37338FF6
          1B3D3034CD0B8B78C0D4B448F7BFFF4CD8D3D25290F66A32D2F939FE700A73F3
          418C3E98402062408F697832398570247C4B7461218BCBD0BDDBED3EDFDCCCE3
          C7B39878348DC0828A602802DFDC3C3FC31044D43082C1E0CCF0E09D366BFD17
          B015382AF6B90E9FA5C6CB6DF4E7E003EAEABB4B2DD77EA2B38DDF92FBD20FE4
          AC3C43BB0A9DA50092ACCD15AE040B899BB0BBC85556E63AA5D79D6EA1ABD76F
          D2C973AD54D7D04AFBCBEB753E5C06E0958317733CE55F6E24A73BC7638580D2
          03279E47B6ED70E4EF3F749AEE0F8FD18FBF0CD0DE4F8ED3D60F8BB70348E426
          392F6CA031FFD7F4993B9BC433191C22134525470880FE6BE777BF2BB284E4A4
          44984463B158B4A9B7BBCD0B80B8326326C6FD1E188609711781F8378F47202B
          0A144582AA86AEA7AEF7D80F9CCF0E7C7A66DD6F624331681203632F04084B90
          149B8D6F90003DAA86610BBD73ACAC1A8C58DE6280313093C1301838D2B30011
          144586F2ACC7A6261FF67E5EED4667679F148B19189BEB87CE4F8EC20C138C8C
          F806125EC67AB329DC74EEEAC2DA2CBA39524C05356F1380CCA29A2CEAF8BB80
          0ABF1077A482889695B37267658667F7D10CB257BCE911C19D5599037BAADF22
          7B65C600806449049643922479C98F637075EE0AA1758F3E058D75971FE4C3D6
          810000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C650043616E63656C3B53746F703B457869743B
          426172733B526962626F6E3B4C9696B20000038849444154785E1D906B4C5367
          18C7FF3DBD40CB1A2E32B55C9D598B4CA675D8D13836652E9B0359B67D589665
          3259E644A52571644474CB4CB6ECC23770C4449DD38D2885005E4683AB69C616
          8DA12384264EC8AAAC0C9149A1175ACEE9E939CFDE9EE7E477F2CBFFB924E720
          E6E943CC3B8895D12B00A0FEE3D08167A75A5BBAEEB71D9D081E6B4DA549FBDD
          A3CEEFDD1F3658016818AA98A71FD1915E202DE980A19D741E3EF6E0F8A7FC7F
          673B6979E002C5BC43B4C2581EB8480BE7BA68E6441BEF3B72F03300990C8E1D
          5016554E7B55D6C1ED9543C6C2B5BB739FDF025988838424E4240F10A0D2EAA0
          D26540AD37203CFE17C2C187A3EDBFDE7CF3DAD4748403A06EA8A8E830AC5FB3
          3B7BAB1901B717AE23DFE1CEC5EBEC90A0E0EB71A3CFD981C0B017C6F252180B
          D6BD74BCFA856E003A0CBDFD966DF250532AD4FF038DB734D18557DF21CFB08F
          2E37B5D370ED5E72D7D52BEEF9654CE9F91C1FD392EB0C4D3A0E4BE7F6ECD909
          CFDEFAD381AF4ED0A3D35FD399E272BA3F3D478F971234FD2044BDCE930AF798
          CF2FAED0DF5373CACCFCA92F2970B29DDCAFD7F56B48945E918201C41738945A
          2D581C7461ADA3192AB50AD64F9A010272730CC8D4AA313BE44289D58CF85D3F
          2411504BB28D93845489145E041F9CC1863C09A11BD7E1EFEA86240339463DB2
          B3F59025C0DFD98DD0C83594E6886C360831F408523265D208BC0021B20A35A7
          82B8BC0429C2239A10D812417988007088B14C8A8421EA75A094044A8A48F200
          17E78587629220B370E69F2884EA3750F07E23245946868E43A64EA3B8695F23
          F8EA7A046763EC780AC9640AF155FEB1269AE0BD91AC8CFDF910108E26F15A5B
          33788D1E860CF6CDE7CF225D45FB3F02A0C7CE36076E5CBD84825C3562A20E4B
          097E0CAD051B5FFCA97C9BE4ABAEA05B2FDBE9E6BE0F880F8568FCDB0E1AA9AA
          646C579C654AEF564D15FDB96333FDBCC94A8E751B6A0140DF5168B9E42A7B86
          266AB6D2ED1A1BF559CAC853B58DFCB576F2D7D9D3AE64B777D96862D716EA2F
          2BA76F4CE62B008C1A00C2F9C57F9D8DA2C99212C5E72C85323699F320A77FD2
          72040021DF9885F56BF2204457706F9EC74C4CF2F744169A012430DBF21E00A8
          2B754F98BEC82EEEED7AF2291A306FA451EBD3346633938FF13BF341969D62BD
          CF738AAF6ED6EA4B006882CE77A14ABFD255D2799903606830E4EF28E274070C
          1C67D74255041044C25C9CE43B4149F8B16735F41B8038DB9300E07F6924ECFB
          01D589CC0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000020744558745469746C65004944453B546F6F6C733B437573746F6D69
          7A3B44657369676E3BAA5D2992000002F249444154785E85527B48936B1CFED4
          CA9C3335EA04411195E2854C83637F6874CE11835C4491E1D41C626A93E6F532
          AD33FD66676ED986CE6C733ADDB48B13CC5B70C8AE33F38FAC59C7AC202D2C99
          6526A94D8D1D88A7F7D3AD697FD4030F2FEFF37B9FE7FDBD17EA277022747690
          99FF1A4E76D63577C34EADC108A1A4F60CD15D0AA5F55441691D259468A9BC7F
          6A97999DD5FA0E6B555DDB0385AAE900115646C564480D6D37C0E056CF6364D3
          6A09D157103A01A072C49AE50187E2B368415E19340D9D902A1BB84C08879B21
          53E95A316D99C78D6E13D24F574A199D09C92C562F185DECE7DCBD276A5D02BF
          088F065E4128BEF0CCB6D0ADA2FE5FBC1E9DC0E4D42CAE1B1F822F54C8989A40
          7481A2649597AC62590DCD2C4C12D062A9B2114F87C79123525A89C622F428D3
          74E2E5C8389E0F8FE1C3E40C8ACA0DE0260B43496D15955354F942AE6A42B6E8
          3C2AB55731F26E0AA61766A4E59EFDD89A145CD62D089DEA1F7C8B583E8DD813
          0C8B915FA2C2B99A769C28AC9053C705345724AD45CFC3E7786DFE84BE41337A
          4CAFD0529281B9F77730FF460F7DE496FF7D3C5D3732DD84471EFD33F3EF0ACC
          7FB1225DAC05C5B4712CA5202135ABD4C4CF9622242C7AA23A239198EFE2CB50
          29EE4BFE021DFC5B1531AFCE95E82966E47005CAE8A453883898C8B3BFFD0A42
          37C2F56A4EA07676EC0EE6064530D2E1E0878520EA30AF8DD4DC977CAAD584EC
          853BB8CC09B287B85745F8575BCCB761799287EBC250C404054051A543738711
          8969229D23C481EF66C51EBFEACFA33761E93B89CECC9D88DBC0D66FD81C7C2D
          BFA416BD03A3686A37223EA540CFECFC63886BC9EFBEF2E9912ECCF426A3252D
          10D16B595AA27B137A6DF2DDDB9853ACC1BDFEB7D019BA10C3CBD62C1EC1018F
          F2DDFE33135D0968E0F980E3E156C7186DBBB8107A6EDC1A7689965FC47F43E3
          E0A58ABE126DCDD2009668C7F62BF25DFE10066C53D9CD644E31B48578FDB12F
          AE66FF613E8EC4A5B72EDE85032E36C1DB7E49B29D7ED452DABA61D9C2D90B1E
          1BBE015F026487EBD860BC0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000011744558745469746C65004275673B5265706F72743BB1B0173D0000
          031149444154785E6DD25D6C537518C7F16F4F5FB7B26EAC6BBBD56585B1984C
          A69810401215C164CA1C30D02A60C65094F81612487C211AB9218AF142623411
          132F74D995119525188D8480C678338548309BB83206DDFAB22E3DED69CFE939
          A78F8D17C64EFFC9FFE6C9F37C92DF930711E1C513EB59B3E101763D79988786
          0E188F3CFEC2992D83FB628077E3A6ED2B37F5C7CFDCBB79BBD1BF6D98DE356B
          79EEADB588C8DF5F0100080485D363EF3966AF4F854D4BD11A9BDA7FDF1A3FAC
          370622572B56559F494CC6BE1B1F7536B751F7140041F8E1EC05474FEFBA6038
          DA73BAA1A171776B6B4B437B7B88605B9B6F99BF391E89F67CDB1E5DD9F9F3B9
          09A7C8120001C0D5D913FCD4E3726D696A6A20140E71DB8A6EA25D310281003E
          9FEFAED8ED918F81C653AF4F38FE11440440D939BC530E1EBF5B06E283121F79
          458EBE332AC74E7E2E474F7C26437B0EC9C6CDF7C9536FAE96871FED17C0B374
          072E7FC7CC9558778067DF6861F59D1EAE5EBAC0F96FBEE4CA2FE7E9ED7372E8
          ED28B1552DF842335380B73E0238DDFE7C20B0DC0F8AB06FFF7A4E7E30C4C06E
          271F9EDAC3C833F7A0788496563FDE659AFF7F011C12511405D33431AC2255B1
          1111ACAA85616958B68DCBE342711202DC75C0C08EE142D5C2AB974DF41A9052
          27B16B05A18A6D9B640AD3184605A3646059E2B9FFC1A1641D70F6EBD166CBB2
          6F2E2E1629693AD7B39798CF4FD510BB369C60367B195D37C82D6A98153B75F1
          DC57D1A5116CBD64FF9ACBA8684503C330989CBB485AFD936BA91FD12B0645CD
          2433AF52CADBBF0195A580A9CE761A6ABE40365D422D18940D0BBB5AC5A89814
          D40A0BE932F9853C85B9880E94FF0338CAB1C7D48C7233399325952C92CB6898
          356471A14C7AAEC8AD449ADCBC24DDF6AA4140AF3BA491637D00EE8E6E6FEFE0
          C1F0C4DE5757C881E37DB2F7B53BE4A577D7C9132F77C9D6A7838970977B03E0
          DD5FEBAF3B2407005873D3C6B5EFC7B2BB92D3EA27E9D9F94C59CB90984A646F
          FD911FFB693CBF237DC3BCFCEFFC000E11217EA403A90A087CF17ECA05F88126
          C003584011286C7B7EB92902088C7F9403E02FD43685F9E5FFA5E30000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000018744558745469746C650050726F6A6563743B506F7274666F6C696F
          3BFE964F2D0000023049444154785EA5934F4814511CC73F6F76D75D352D4DD1
          4A6DB72DCA423A88051D3C154487CE79A863A74023E81C7428BA49044145A788
          4E457408A44B7F0E151E0C84FE916241A6EEAEFB67FEBC793BF39AD7AE2B8597
          F0337C1FBF992FF399790323B4D66C86381B706DB43F038C07D5E07455299454
          4F95EF4FDEF8E8CCF10F96A8118B92584BA0F594E7070BBF2AF2E4521457FA0B
          BE5F9D8ABAA6284993FA6C0920FEE3E1C40B4F06A3A0315BFAFA65916CB6C7CC
          51C02CB31FE6181CDA0DA1C61CD1035E0F8FDF3F2E80E4ABEBE7BC91B3E7F91F
          6E5FB8C8C4E3F75BE28055295690A51CA56F6FD1A1C6202C0B216860AEAF7DF0
          F6EC51CAF90280F547B09A5B65F9F3346F9E3C27B75222996A62E4D87E128918
          68088290D999F97A97E0C4580CBB585E177C9F5F64E6CA1DBAFB5A197F7097AB
          A7C67874EF25026A8230A06F6F57A3BB797992E6E62480659925D5DA42FA4006
          E9FAC84FB7705DC58E9D5BC9A43B49673AE8EFEFFCABCB1ECCD0D5DBBD2E686B
          6F63DFA10C859CCDA533CF08AB01E9810ED24630B09DDD03DBC82F974D47A0AA
          64F6F4924A25D7B7E0D90EEE6A81E1A15D4815121320AA0A695741878481E6F0
          600FCA8FBA18C87219E9B800310B23701C567E2E512C54D05282F2716D0FE99A
          483CC723F415A1F229175DF22B05D335DE40189B63F948DBC5A68ED680406B8D
          391A688807E07B0A4018819F2FD9EFA4631D41D76F300108839AA72E69CC5A51
          51C134E009C048DA8016C0A286A0C186E71A7080E2A67FE7DFD252350B0B7C2A
          750000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C6500466F72636520546573743B546573743B43
          6865636B3B5265706F72743BE21C20C60000026A49444154785E6D904F489659
          14879FF73328371A1584E04833A3ED828A8666A046A23F339448A4106D8C9040
          1C67461B685331E0A6B1C1465AA80CD810592DAC859B92C4040D82205C994A5A
          C360832E6A94C4AFEFBBF79C13F7E2877C8EF7E52CDE0BBFE7FC9EBB01488014
          90AC0C75E71A36977E567633490A8E99CAE337AF67EAEFDDE95960F528206666
          01909ABE5537944AACD2CCF863AC0C80EAAAEFA928FF8257D3AFAB7AEF3E986F
          6ABEC4F9B217A8281F336EF49BCBC38701170129ACB2F4F8CFCC8DF450B03CCB
          CEBD87705E9878F50FF373EFF87C472963CF06F97B5B8A23A7CF32DED77D1028
          C80112350175A808ED5D7FD1D5DD4367D79FBC9DFD979292EDECD9BD8BC6968B
          2C0EB7623E837A4F4E3700622D0B001552494263433DD5274FF0DFC202E9A565
          0A371552545C4CD1968D64DF4F235EF20089A9806430EF300303B66ED916E7E5
          CC732E75D672BB6D822571E0B3A8F87C808AA09245C4A3668051DB5CCEAF3FDC
          E54AC719FAAE4FE1BD22D9100E2300E40088487413E722C0CCE86D9BE4545305
          F76F4CE1541135C467896F206B150240D2A87768D88445CFBE8E49BC28002A16
          1798B87514BC602E83F70E278A99D25FF51D5F5FFD9DD18BBF50D53F80AA1201
          BA8E82AAC7FC47C465A36BF8BE6AFD8DA1969F38D0D68EA8101B88C3BCFBBF42
          A8AB2E0D80F712B70D5EF891CA6B1D0C353751F36838DE015858B616A07EB581
          9AA1A6D43C7C0210C3B913DDC521A2790A8988C75C3A3ABEE93E1A2B5BB85BD9
          AA2A00F1DF54C2E429987A417C862FF7EF43D38B106A9A400099C62021481E80
          1CC02FA5B323E30383DF9A282A2114801AC32AB990E6860F19790A38804F5AC3
          D2E4891DA0CA0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000025744558745469746C65004275696C643B53657474696E67733B4375
          73746F6D697A3B4F7074696F6E735909A0980000025D49444154785E7D925D48
          93511CC69F779B9A3934BBC824322F46068B5D54CC2883463147177E80455988
          5D5430D0A61051E068E8AC4408620586D44544DD2461D287358DCA542A29B40F
          28E913523021D4CDBD7BCFF977DEB30DB6643DBC0FE7E2FD3F3FFE3CE7284404
          5D8AA2C8E3DC85EB414EE4E09C81330223790A6B837EAF7B170012424226A44A
          51B5A8E364E321506C12887DF0B677390018888801480B3044222AC29128BEFD
          9C96442E491C6A4495FFC5A62C79034372D8D7D1ED2D2C2CC0DDFE118C8D7FC2
          E8D87B0CBF7C8BA7C36F90979F8B23C7DBBCA999F89A71A2E9957F2B25F4E4D9
          00B5B405E8D1C0434AE871530901C890999853680AE71C3C3484B9A163282D9C
          C4194F1976147DC7FCF3A3D066FBC0199773E93A10000245C3D06626853F233C
          7E538E130199A159304EFF0580732E01C43424CB685E0B646F40B1D30D049A8D
          B12B5F5AA2429C406A08E04CDAB4623D8CABB6432928C3EB89699C0DE6A0A2CE
          57052053E7EA99D40E180357E741FA298CE5C5087E5D832BFD515CEEF981164F
          259665E75DAD3E7CFE56459DBF4987989694B83827010402E31A5EBC5B44B96B
          37F654AE84A5B800EE7A67D6C2FC4275E7A5DB45002EA676C074C01FD901C54A
          41B98DA1F7C1284E79F6C2B5BF151DBE7A745DEBC5CCD497CE7F4A1459950D06
          03DD8EC4135E2D603746396AF639F06BEA375A4FD7C248844D360B3E4C7C3C01
          E04ED24392856609E7089BE3CEB7DA0F745AEDB5F7B6B99AD59EFB23642DAD8B
          946CAEE9B3D8AADAE53C11A5B590126FDCBCD17EB061CBCE065A57E26C04902B
          C38041D103E914BFEF6450867054581596C1BFE1835724A64193920000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001B744558745469746C6500466F72636520546573743B546573743B43
          6865636B643340A40000021349444154785E75914D48D44118C67FE34608DD24
          0B3C28D1C741C8F01008650605AD7AEAB4D02D0F665069A675AB08FAA2200A31
          284ACC0A4C92D23EB584D8F022AD41411F17B753749088A2D49D799FC4FDD3C6
          EA0EBC33032FCF6F9E795E2709E75CACFBCEE44B172BAA03402029BAE636097C
          6636D9B6B766A7A4398065004011CED5B524AA1689C001395857DF642D1003F8
          1FE042302498F3068094DDBE7D9FA2EB7E0BD5EB7791D8D181CFF68B207A3907
          C80907C6CE71E27A035FA7D3740FEEA3B1AE9ED487571822580020DF01DE8410
          6662E2FD18BBE3712EF737B1B16A1537FA063879B01F89C8016EB1834CF817DE
          A1C435EE0D0F51B1AE98D147698E1FE86765495904084B037C080830A0B4A49C
          D63D3D249FFCE054DB40566C2041261339C80FD17B43021320583D0FB9792189
          2164220882091F0A38C88480244C227DBB9737FB9B994EA548B53493BED58BA4
          85F25188F9007CC61020139F4746A96CD8CAA7AB97A8ACDFC2C7916798C024BC
          57811043C02C6B73536B3BEFEE3E607355D9FCF990EAC3C790810942C1107DF4
          05136FCF9C65ED865286075F53B1A684E79DED980C19848263F4C2242447714D
          0D43E353549FBFC2E3892F94C71BA38045084B4F61A1618215C531B61F6D675B
          E71124A3E9C528864396ED9B1980F20199DF33BF921DA79FD6223003E7040006
          06380980D9999FE3C05C3E60B6E762220E2C075C5439ABB9BB22F11FA2F5176F
          EA42A456BAAC9C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000018744558745469746C650050726F6A6563743B506F7274666F6C696F
          3BFE964F2D0000023049444154785EA5934F4814511CC73F6F76D75D352D4DD1
          4A6DB72DCA423A88051D3C154487CE79A863A74023E81C7428BA49044145A788
          4E457408A44B7F0E151E0C84FE916241A6EEAEFB67FEBC793BF39AD7AE2B8597
          F0337C1FBF992FF399790323B4D66C86381B706DB43F038C07D5E07455299454
          4F95EF4FDEF8E8CCF10F96A8118B92584BA0F594E7070BBF2AF2E4521457FA0B
          BE5F9D8ABAA6284993FA6C0920FEE3E1C40B4F06A3A0315BFAFA65916CB6C7CC
          51C02CB31FE6181CDA0DA1C61CD1035E0F8FDF3F2E80E4ABEBE7BC91B3E7F91F
          6E5FB8C8C4E3F75BE28055295690A51CA56F6FD1A1C6202C0B216860AEAF7DF0
          F6EC51CAF90280F547B09A5B65F9F3346F9E3C27B75222996A62E4D87E128918
          68088290D999F97A97E0C4580CBB585E177C9F5F64E6CA1DBAFB5A197F7097AB
          A7C67874EF25026A8230A06F6F57A3BB797992E6E62480659925D5DA42FA4006
          E9FAC84FB7705DC58E9D5BC9A43B49673AE8EFEFFCABCB1ECCD0D5DBBD2E686B
          6F63DFA10C859CCDA533CF08AB01E9810ED24630B09DDD03DBC82F974D47A0AA
          64F6F4924A25D7B7E0D90EEE6A81E1A15D4815121320AA0A695741878481E6F0
          600FCA8FBA18C87219E9B800310B23701C567E2E512C54D05282F2716D0FE99A
          483CC723F415A1F229175DF22B05D335DE40189B63F948DBC5A68ED680406B8D
          391A688807E07B0A4018819F2FD9EFA4631D41D76F300108839AA72E69CC5A51
          51C134E009C048DA8016C0A286A0C186E71A7080E2A67FE7DFD252350B0B7C2A
          750000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000D744558745469746C65005363726970743B20739562000002C74944
          4154785E65926B48545B14C7FF7BCEF8CA46274DFC6031F73222927621218840
          6C2C02CBA2880A2F42505051E1872453B49486B85C23D24C8DA6A730A4D50719
          2F5EB42912C3C452CB473AA8541A85688F191B1FE7B177EE7D46135BE7ACCDDA
          87F3FFFDD7DA6C0240AA710D3E9124298D8141040318D36BB664E19F54596E3D
          B2FFAF6D8C3119008C000C8490B4BF77C40BC17211C03D7EC1EED57B52B92944
          E800A269BA9BAC50B00508D317FEE82F41489001AA4AC14DF9B2586854A75306
          F47A2670FAE2533E82D89F2A798CEE81717019C76B54C3D230E81D288B73DF7E
          D8834BF93650CAC4BEFCFC76543BBB4019DF63A103B20CA04FF8DD370B45D540
          032D534A8450D328BE7967C44829EB620020881022CD27110055D1C408E7CA5A
          91B1C5AA8BF80884893A736B026ED57641D334C81E27DCC51BBFD6E524DB0118
          390072E0108B735251EFF6885619653C056070781C27B253F0E1F94DAC5DD101
          5B711D9236590BAEEEB5D84507545585C8141E0C2A4660E26055CAC48C097F44
          62B2F32EA42937FEDC550AE55D19BEF68F606E6AEEAC00280AE500213C7C6003
          8E17B8442D198086E67E5855378C3E37AC7B2E63E66D29DAAE37433547E3F397
          D92B4601D00440B8AE4F8C45853D538835454672C83384785B90905501DF2B3B
          3A9DADD056C7A2A1A6BBFC5AAFAF8803C429030C2B4325B0C0E5D15405EFDB1C
          304E3421F15035265B0AF1FA513B64730C5CCE37158EC11F4500663940F54FFB
          5B4ACADBD21820009638134CD2042CA3CDD89C5B8D4F8DB9E8FBAF0B33E15168
          A8EBABBC333C5D08603A2B3678F15A860188001009C03C34349477EC4CD54BD7
          8D7F987FAC9D351EB5B0DA93492CDB125619F8CF30723F03FBA28384E36F09C0
          94B23D6FB8E74513ABF9379F5DB0C5B38371A1550103C380231D030E1B769B25
          102E581E849088556BD2BD9AE21F55E5A9FFA3E8D8838FDEA90EDEF6CE088902
          0163003F019691912C8A9E6FB60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000F744558745469746C65005461736B3B45646974B88F66B3000002E7
          49444154785E5D926B6C145518869F33B3DB2DA59D6E6F016C53240563237F4C
          2CC66B690921686820808931C61FFCF607412B71636A5A63420DD868B41B5B03
          AD268242620D31145705121634582E5241CD5230A58616DD5EDCEEECCECC399E
          E9A663F04B9E9C9333799F79E7229452083D8001089F8E03C787F5510B807F5D
          4979AAF395B64D1446029ED20310A230C6EF075FFC56A09A511E8369C5AE179E
          62FCCE0C9E541C1A38B1FEC7B737E42291221CD739F3C86B890D800B602C0A0C
          219B57B6ED266C45098B1CB1AE4FF830FE25BD9AA2B0603E9B27B2A28ECC5CE6
          69C0A4304103E1791E4A6AF41ADBBD9DE1EF2F736B7C0AA14001E64D13D31408
          2501C4FF05A8058183F45C508AC7D735B2A6E13EA6EECE02109E8C6086829C38
          FBCE13D81987A081941264DE17F8798DA2BAD2221432999EC9E02229B696B3A4
          6615F043E8C9F6A409482368E07A3AEC20FD55290D3E94959550A545C595F568
          03399921D1D1347BF8E5B56F0161237807D203D7F62585062864614369490463
          493993374759DE10A1A5E3086B1F6BD8FBDEB6FAAE40A03CBF414E5368A03468
          04907372CCA4C729599A66D5966E9CB11EFE1E4D919BCBB72F0A0ACFEEDA28E9
          22A52F0004E4F33613C98F89D6D8346CDD4FF6976E92F193B8D12A26FEB27B82
          06FE9D959B43390E9E9F16E0D836E3C97E22B3DFF1C08E1E662F7471BE2F8163
          55716CE0E2FBEF5E9C7E23143470FD0659A47419EBDF09E5754CA7FF246A6578
          F0A55EEE9E8E71E9E879F2D11A863EBDFC41FFAFFFC480F9FF04D24339595634
          DE8F8A54333609229FE2211D9EF87A0F578F8F905D5AC9D0E1ABBD03A9F91890
          797E5951F019BD4CD639353AF405BF9DFE89D485EB7CFE4D9A747933F6ED497E
          FE6A8419B3946347AFC775F875602EF5D96699770B3F0C80011403A5401950FB
          F0C6576F5C3937AC06F7ED559D2DABD573B5C571A00230AEF5B572ADAF85B6A8
          B920B887C49B4D00D18ABA56652D7BF48F928AC68F6AADD28D800518CF5A263E
          CF94196CD6FC0BD5B583BDB8F0059F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000F744558745469746C650054696D656C696E653B41176E63000002C8
          49444154785E6D525B48944D187E66F75B1336CB5C74D194223A51D922745537
          C15E4507C3A28345C162D245049A66FA5B3F1D30D6CE98D101F1B0DE6468879B
          C02823B535ACD40A6989D4B2C4755D155BDDDDEF34CD8CEB5AD0CB3CDF3C3CEF
          CCFB3E33F3910B15CD2DC4403683820F80D2BF66CAE6882C344D535F9D2FD86E
          67BA2A1245171FD1D928297F12E5C5CE397ECAF938CA0B2E345100B18C824352
          551D415983AC6AE03CC47848E15C63BA2A729AA2633AAC72081D80019190B8A0
          736B3A6549557055D32174C12914A653CE751A2DD0B22B13BACE1DB06E9AAE43
          139BE68AE94C131D0C807DD34A105098184FB12E1405C6F3AE893CC92DAAA7CE
          D3BB855D502189116304C63B3BE07BDE8CA9813EB00E884D5B0A5FEA1A64E5E5
          2402F037B67EA5C471A29696FFBFE78F02C03C89E09BAB0A23AD6D90B665C39A
          61039124787B3E21D85407FF8F815A87BB23178022690AB7CF41672C130A6F7B
          3B865A5EC0FADF156CC85806A381889CB62A15DDE936A8E70A0FDF0C85DCC7BA
          BAAB247641E272B4998786C430D8F800923D0BCB572C16AF4230174BD212E0DB
          7910B1CEE223005C5270FAD7EBFC92FA8D94125160AB7D354C1E0FAC8E93E8C9
          DEC19C69C2E19B79561C755583F799BFD6062325EB0198A48735F95BF8B1236F
          4B1AEE22AEDA66EB62B6CD96CAFB30C79840085079FC0C82618D395261341A20
          CB0A01D8E928A5930C3E066FCDBAF46100C38160C813FCF0166159FC6408AB14
          3C045774843F7FC46420E001A01BF04728B2CC89DC1708DC19AAAA000213A004
          DC81082331802861F4575E46FFF4D43D00A17F16B836F4B3E1CBE0F7DBEF1C7B
          31FAEC2914FF082E9DCDC768DB4BB8F767A2B7FB7DDDADB151175F0B663D8A1B
          2969B89E9C2A9A312C3AB020FE50A925B1A3CC923456969038511A6FE9DC678E
          CB0160E16BDCBD5E10BE7136AE2625835230E828F48F90C8E59AC51C31C91060
          089799E3750A8ADF87B8C799F8EA9A820000000049454E44AE426082}
      end>
  end
  object dxAlertWindowManager1: TdxAlertWindowManager
    OptionsButtons.Buttons = <>
    OptionsButtons.Images = cxImageList1
    OptionsMessage.Caption.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Caption.Font.Color = clWindowText
    OptionsMessage.Caption.Font.Height = -13
    OptionsMessage.Caption.Font.Name = 'Tahoma'
    OptionsMessage.Caption.Font.Style = [fsBold]
    OptionsMessage.Images = cxImageList1
    OptionsMessage.Text.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Text.Font.Color = clWindowText
    OptionsMessage.Text.Font.Height = -11
    OptionsMessage.Text.Font.Name = 'Tahoma'
    OptionsMessage.Text.Font.Style = []
    OptionsNavigationPanel.Font.Charset = DEFAULT_CHARSET
    OptionsNavigationPanel.Font.Color = clWindowText
    OptionsNavigationPanel.Font.Height = -11
    OptionsNavigationPanel.Font.Name = 'Tahoma'
    OptionsNavigationPanel.Font.Style = []
    Left = 56
    Top = 162
    PixelsPerInch = 96
  end
end

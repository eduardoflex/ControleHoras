object dmRegistrar: TdmRegistrar
  OldCreateOrder = False
  Height = 167
  Width = 98
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://104.236.197.223/sac/time_entries.json'
    ContentType = 'application/json'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 32
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'X-Redmine-API-Key'
      end
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 32
    Top = 64
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 32
    Top = 112
  end
end

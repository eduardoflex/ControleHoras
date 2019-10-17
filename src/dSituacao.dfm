object DmSituacao: TDmSituacao
  OldCreateOrder = False
  Height = 171
  Width = 177
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://104.236.197.223/sac/issues/38395.json'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 32
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'X-Redmine-API-Key'
        Value = 'd0b61f4a2f8f765a4da9d011103947eb3c8f6184'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 32
    Top = 64
  end
  object RESTResponse1: TRESTResponse
    Left = 32
    Top = 112
  end
  object RESTClient2: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://104.236.197.223/sac/issues/38395.json'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 112
    Top = 16
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Method = rmPUT
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'X-Redmine-API-Key'
        Value = 'd0b61f4a2f8f765a4da9d011103947eb3c8f6184'
      end
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Value = '{"issue": {"status_id": 9}}'
      end>
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 112
    Top = 64
  end
  object RESTResponse2: TRESTResponse
    ContentType = 'application/json'
    Left = 112
    Top = 112
  end
end

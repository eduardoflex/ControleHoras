object DmTarefas: TDmTarefas
  OldCreateOrder = False
  Height = 162
  Width = 98
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'http://104.236.197.223/sac/projects/desenvolvimento-flextotal/is' +
      'sues.json?c[]=project&c[]=subject&c[]=tracker&c[]=priority&c[]=s' +
      'tatus&c[]=assigned_to&c[]=cf_28&f[]=status_id&f[]=&group_by=stat' +
      'us&op[status_id]=%3D&per_page=100&set_filter=1&utf8=%E2%9C%93&v[' +
      'status_id][]=14&v[status_id][]=15&v[status_id][]=20&v[status_id]' +
      '[]=8&v[status_id][]=9&v[status_id][]=27&v[status_id][]=45&v[stat' +
      'us_id][]=46'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 32
    Top = 8
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'X-Redmine-API-Key'
      end
      item
        Kind = pkQUERY
        Name = 'limit'
        Value = '100'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 32
    Top = 56
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 32
    Top = 104
  end
end

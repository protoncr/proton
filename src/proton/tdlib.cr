module Proton
  {% if flag?(:static) %}
  @[Link(ldflags: "-ltdjson_static -ltdjson_private -ltdclient -ltdcore -ltdactor -ltddb -ltdsqlite -ltdnet -ltdutils -lstdc++ -lssl -lcrypto -ldl -lz -lm")]
  {% else %}
  @[Link(ldflags: "-ltdjson -lstdc++ -lssl -lcrypto -ldl -lz -lm")]
  {% end %}
  lib TDLib
      alias Client = Void*
      fun client_create = td_json_client_create() : Client
      fun client_send = td_json_client_send(client : Client, request : LibC::Char*)
      fun client_receive = td_json_client_receive(client : Client, timeout : LibC::Double) : LibC::Char*
      fun client_execute = td_json_client_execute(client : Client, request : LibC::Char*) : LibC::Char*
      fun client_destroy = td_json_client_destroy(client : Client)
  end
end

-module (erl_js_websocket_rabbitmq).

-export ([start/0]).


start() ->
	io:format("erl_js_websocket_rabbitmq.erl starting"),
	rabbit_client:start().
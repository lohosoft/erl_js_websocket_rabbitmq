-module(erl_js_websocket_rabbitmq_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
	io:format("~p\n",["erl_js_websocket_rabbitmq_app starting"]),
	erl_js_websocket_rabbitmq_sup:start_link().

stop(_State) ->
	ok.

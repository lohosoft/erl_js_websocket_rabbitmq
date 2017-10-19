-module (rabbit_client).

-include ("../deps/amqp_client/include/amqp_client.hrl").


-export ([start/0]).

start() -> 
	ok.
	% test_send(),
	% test_receive().


% test_receive() ->
% 	{ok, Connection} = amqp_connection:start(#amqp_params_network{}),
%     {ok, Channel} = amqp_connection:open_channel(Connection),

%     amqp_channel:call(Channel, #'queue.declare'{queue = <<"hello">>}),
%     io:format(" [*] Waiting for messages. To exit press CTRL+C~n"),

%     amqp_channel:subscribe(Channel, #'basic.consume'{queue = <<"hello">>,no_ack = true}, self()),
%     receive
%         #'basic.consume_ok'{} -> ok
%     end,
%     loop(Channel).


% loop(Channel) ->
%     receive
%         {#'basic.deliver'{}, #amqp_msg{payload = Body}} ->
%             io:format(" [x] Received ~p~n", [Body]),
%             loop(Channel)
%     end.


% test_send() ->
%     {ok, Connection} =
%         amqp_connection:start(#amqp_params_network{host = "localhost"}),
%     {ok, Channel} = amqp_connection:open_channel(Connection),

%     amqp_channel:call(Channel, #'queue.declare'{queue = <<"hello">>}),

%     amqp_channel:cast(Channel,
%                       #'basic.publish'{
%                         exchange = <<"">>,
%                         routing_key = <<"hello">>},
%                       #amqp_msg{payload = <<"Hello World!">>}),
%     io:format(" [x] Sent 'Hello World!'~n"),
%     ok = amqp_channel:close(Channel),
%     ok = amqp_connection:close(Connection),
%     ok.


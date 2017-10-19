{application, 'erl_js_websocket_rabbitmq', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['erl_js_websocket_rabbitmq','erl_js_websocket_rabbitmq_app','erl_js_websocket_rabbitmq_sup','rabbit_client']},
	{registered, [erl_js_websocket_rabbitmq_sup]},
	{applications, [kernel,stdlib,cowboy,amqp_client,sync]},
	{mod, {erl_js_websocket_rabbitmq_app, []}},
	{env, []}
]}.
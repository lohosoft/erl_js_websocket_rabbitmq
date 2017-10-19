PROJECT = erl_js_websocket_rabbitmq
PROJECT_DESCRIPTION = New project
PROJECT_VERSION = 0.1.0

DEPS = cowboy amqp_client sync
dep_cowboy_commit = master
dep_amqp_client = git https://github.com/jbrisbin/amqp_client.git
DEP_PLUGINS = cowboy

include erlang.mk

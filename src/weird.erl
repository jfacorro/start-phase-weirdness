-module(weird).

-behaviour(application).

-export([ start/0
        , stop/0
        , start/2
        , start_phase/3
        , stop/1
        ]).

-spec start() -> {ok, _} | {error, term()}.
start() -> application:ensure_all_started(?MODULE).

-spec stop() -> ok | {error, term()}.
stop() -> application:stop(?MODULE).

-spec start(application:start_type(), any()) -> {ok, pid()} | {error, term()}.
start(_StartType, _Args) ->
  weird_sup:start_link().

-spec start_phase(atom(), application:start_type(), []) -> ok | {error, _}.
start_phase(start_some_stuff, _StartType, []) ->
  {error, badarg}.

-spec stop(atom()) -> ok.
stop(_State) -> ok.

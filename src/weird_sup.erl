-module(weird_sup).
-behaviour(supervisor).

-export([init/1]).
-export([start_link/0]).

-spec start_link() -> {ok, pid()} | {error, term()}.
start_link() -> supervisor:start_link({local, ?MODULE}, ?MODULE, []).

-spec init([]) -> {ok, {{one_for_one, 10, 60}, [supervisor:child_spec()]}}.

init([]) -> {ok, {{one_for_one, 10, 60}, []}}.

# Building

```
$ make
```

# Weirdness

Start an Erlang shell:

```
$ make shell
```

Evaluate the following expressions:

```
application:ensure_all_started(weird).

%% fails because the start_phase returns
%% {error,{weird,{badarg,{weird,start_phase,
%%                              [start_some_stuff,normal,[]]}}}}

application:ensure_all_started(weird).
%% fails because the supervisor is still alive
%% {error,{weird,{{already_started,<0.45.0>},
%%               {weird,start,[normal,[]]}}}}
```

Shouldn't the supervisor be killed. It seems that it is never actually linked to the process.
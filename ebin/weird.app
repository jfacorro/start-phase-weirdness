{application, weird,
 [
  {description, "Start phases weirdness"},
  {vsn, "0.0.1"},
  {applications,
    [ kernel
    , stdlib
    ]},
  {modules, ['weird','weird_sup']},
  {mod, {weird, []}},
  {registered, []},
  {start_phases, [{start_some_stuff, []}]}
 ]
}.

-module(erlang).
-export([hello_world/0]).

hello_world() ->
    receive
        hello ->
            io:fwrite("hello, world!\n");
        {hello, Pid} ->
            Pid ! hello
    end.

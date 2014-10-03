-module(main).

-export([messageRec/0,factorial/2]).

messageRec() ->
  receive
    {factorial, Int} ->
      io:format("Factorial for ~p is ~p~n", [Int, factorial(Int, 1)]),
      messageRec();
    Other ->
      io:format("Invalid match for ~p~n", [Other]),
      messageRec()
  end.

factorial(Int, Acc) when Int > 0 ->
  factorial(Int - 1, Acc * Int);
factorial(0, Acc) ->
  Acc.

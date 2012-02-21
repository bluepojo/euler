%% Each new term in the Fibonacci sequence is generated by adding the
%% previous two terms. By starting with 1 and 2, the first 10 terms
%% will be:

%% 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

%% By considering the terms in the Fibonacci sequence whose values do
%% not exceed four million, find the sum of the even-valued terms.


-module(two).
-export([calc_two/0]).


calc_two_r(AnswerAcc, _FibbAcc, _Last) when AnswerAcc > 4000000 ->
    AnswerAcc;
calc_two_r(AnswerAcc, FibbAcc, Last) when AnswerAcc =< 4000000 ->
    if (FibbAcc rem 2) == 0 ->
	    Answer = AnswerAcc + FibbAcc;
       true -> 
	    Answer = AnswerAcc
    end,
    calc_two_r(Answer, FibbAcc + Last, FibbAcc). 
    
calc_two() ->
    calc_two_r(0, 1, 1).
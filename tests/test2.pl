:- use_module(library(fnotation)).
:- fnotation_ops($>,<$).
:- op(900,fx,<$).



sample3(5, a).
sample2(5, r).
sample1(A,R) :- gtrace,sample2($> sample3($<, A), R) .



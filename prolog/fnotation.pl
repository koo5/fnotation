:- module(fnotation,[op(_,_,$>),fnotation_ops/2]).

:- ['fnotation_implementation.pl'].

system:term_expansion(F,T) :- fn_expand(F,T) .



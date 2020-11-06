:- ['../prolog/fnotation_implementation.pl'].
:- fnotation_ops($>,<$).
:- op(900,fx,<$).



sample3(5, a).
sample2(5, r).
sample1(A,R) :- sample2($> sample3($<, A), R) .



:- begin_tests(fnotation).



test(0, [all(A = [a])]) :- 
	%gtrace,
	fn_expand(
		(sample1(A,R) :- true,sample2($> sample3(<$, A), R)),
		(sample1(A,R) :- true,sample3(B, A), sample2(B, R))
	),
	A = a,
	B = b,
	R = r,
%	writeq(What),
	nl.



%test(10) :- gtrace,sample1(a,r).



:- end_tests(fnotation).



delta(q0,[a|_],[z],q0,[a|z]).
delta(q0,[a|_],[a|X],q0,[a|a]).
delta(q1,[b|_],[a|X],q1,lambda).
delta(q1,[b|_],[b|_],q1,lambda).
delta(q1,[lambda|_],[z],qf,z).


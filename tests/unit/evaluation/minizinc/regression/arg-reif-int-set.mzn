% RUNS OM minizinc_fd

var 1..3: a;

predicate test_pred(set of 2..4: x, var int: y) = y = 3;

constraint test_pred({11}, a) == false;

solve satisfy;

output ["a = ", show(a), ";\n"];

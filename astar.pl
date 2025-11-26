edge(s,a).
edge(s,b).
edge(s,c).
edge(a,d).
edge(a,e).
edge(c,f).
edge(e,g).
edge(f,h).

heuristic(s,10).
heuristic(a,7).
heuristic(b,8).
heuristic(c,6).
heuristic(d,5).
heuristic(e,4).
heuristic(f,3).
heuristic(g,2).
heuristic(h,0).


a_star(Start, Goal, Path, Cost) :-
    heuristic(Start, H),
    a_star_search([[Start, 0, H, [Start]]], Goal, Path, Cost).

a_star_search([[Goal, G, _, Path] | _], Goal, Path, G).

a_star_search([[Node, G, _, Path] | Rest], Goal, FinalPath, FinalCost) :-
    findall([Next, NewG, NewF, [Next|Path]],
            (edge(Node, Next),
             \+ member(Next, Path),
             NewG is G + 1,
             heuristic(Next, H),
             NewF is NewG + H),
            Children),
    append(Rest, Children, OpenList),
    sort(3, @=<, OpenList, SortedList),   
    a_star_search(SortedList, Goal, FinalPath, FinalCost).
















































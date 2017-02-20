\STATE matched $\gets$ 0

\FORALL {$Q$ $\epsilon$ $T$}
	\STATE found $\gets$ \FALSE
	\FORALL {$y$ $\epsilon$ $Q$}
		\IF{$d_{H}(x,y) \leq$ $d$}
			\STATE found $\gets$ \TRUE
			\STATE break the inner loop
		\ENDIF
	\ENDFOR
	\IF {found $=$ \TRUE}
		\STATE matched $\gets$ matched $+$ 1
		\IF{matched $\geq$ $q'$}
			\RETURN \TRUE
		\ENDIF
	\ENDIF	
\ENDFOR
\RETURN \FALSE

\endinput

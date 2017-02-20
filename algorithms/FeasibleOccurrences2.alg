\STATE $Q' \gets \emptyset$
\FORALL {$y$ $\epsilon$ $Q$}
	\IF{$d_{H}(x_{k},y)$ $\leq$ $2d-k$}
		\STATE $Q'$ $\leftarrow$ $Q'$ $\cup$ $\{y\}$
	\ENDIF
\ENDFOR
\RETURN $Q'$
\endinput

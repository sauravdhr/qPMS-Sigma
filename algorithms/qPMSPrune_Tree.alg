\STATE $T' \leftarrow \emptyset$

\FORALL{$Q$ $\epsilon$ $T$}
	\STATE $Q' \leftarrow$ FeasibleOccurrences2($k,x_{k}, Q$)
	\IF{$Q' \neq \emptyset$}
		\STATE $T \leftarrow T' \cup \{Q'\}$
	\ENDIF
	
\ENDFOR

\IF{$|T'|$ $<$ $q-1$}
	\RETURN
\ENDIF

\IF{IsMotif($x_{k},q-1,T'$) $=$ \TRUE}
	\STATE $M$ $\leftarrow$ $M$ $\cup$ $\{x_{k}\}$
\ENDIF

\IF{$k$ $=$ $d$}
	\RETURN
\ENDIF

\FOR{$p_{k+1}$ $=$ $p_{k}+1$ \TO $l$}
	\FORALL{$\alpha$ $\epsilon$ $\Sigma$ $\backslash$ $\{x_{k}[p_{k+1}]\}$}
		\STATE $x_{k+1} \leftarrow x_{k}$
		\STATE $x_{k+1}[p_{k+1}] \leftarrow \alpha$
		\STATE qPMSPruneI\_Tree($k+1,x_{k+1},p_{k+1}, T'$)
	\ENDFOR
\ENDFOR

\endinput

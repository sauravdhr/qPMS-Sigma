\STATE $\mathcal{T'} \leftarrow \emptyset$
\STATE missed $\gets$ $0$

\FORALL{$Q$ $\epsilon$ $T$}
	\STATE $Q' \leftarrow$ FeasibleOccurrencesReordered3($k,x_0,r,x_{k},p_k,Q,J$)
	\IF{$Q' \neq \emptyset$}
		\STATE $\mathcal{T} \leftarrow \mathcal{T'} \cup \{Q'\}$
	\ELSE
		\STATE missed $\gets$ missed$+$ 1
		\IF{ missed $>$ $\lvert \mathcal{T} \rvert -q + 2$}
			\RETURN
		\ENDIF
	\ENDIF
\ENDFOR

\IF{IsMotifFast($x_{k},q-2,\mathcal{T'}$) $=$ \TRUE}
	\STATE $\mathcal{M}$ $\leftarrow$ $\mathcal{M}$ $\cup$ $\{x_{k}\}$
\ENDIF

\IF{$k$ $=$ $d$}
	\RETURN
\ENDIF

\IF{$|\mathcal{T'}|$ $<$ $q-2$}
	\RETURN
\ENDIF

\STATE Sort the elements of $\mathcal{T'}$ in the nonincreasing order of $\min_{y\epsilon \mathcal{Q}} d_{H}(x_k,y)$(20)	\COMMENT{The reference needs to be corrected}

\FOR {$p_{k+1}$ $=$ $p_{k}+1$ \TO $l$}
	\FORALL{$\alpha$ $\epsilon$ $\Sigma$ $\backslash$ $\{x_{k}[J(p_{k+1})]\}$}
		\STATE $x_{k+1}$ $\gets$ $x_k$
		\STATE $x_{k+1}[J(p_{k+1})]$ $\gets$ $\alpha$
		\STATE $d_0$ $\gets$ $d+d_H(x_{0}|_{J_{-}(p_{k+1})},r|_{J_{-}(p_{k+1})})$
		
		\IF{$d_H(x_{k+1},r)$ $\leq$ min($d_0,2d-k-1)$}
			\STATE TraverStringRef\_Tree($k+1,x_0,r,x_{k+1},p_{k+1},\mathcal{T'},J$)
		\ENDIF
	\ENDFOR
\ENDFOR

\endinput

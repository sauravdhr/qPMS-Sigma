\STATE $\mathcal{T}' \leftarrow \emptyset$

\FORALL{$Q$ $\epsilon$ $\mathcal{M}$}
	\STATE $Q' \leftarrow$ FeasibleOccurrences3($x_0,r,x_{k},p_k,Q$)
	\IF{$Q' \neq \emptyset$}
		\STATE $\mathcal{T} \leftarrow \mathcal{T}' \cup \{Q'\}$
	\ENDIF
	
\ENDFOR

\IF{$|\mathcal{T}'|$ $<$ $q-2$}
	\RETURN
\ENDIF

\IF{$d_H(x_k,x_0) \leq d$ and $d_H(x_k,r) \leq d$ and IsMotif($x_k,q-2,\mathcal{T'}$)$=$\TRUE}
	\STATE $\mathcal{M}$ $\leftarrow$ $\mathcal{M}$ $\cup$ $\{x_{k}\}$
\ENDIF

\IF{$k$ $=$ $d$}
	\RETURN
\ENDIF

\FOR{$p_{k+1}$ $=$ $p_{k}+1$ \TO $l$}
	\FORALL{$\alpha$ $\epsilon$ $\Sigma$ $\backslash$ $\{x_{k}[p_{k+1}]\}$}
		\STATE $z|_{I_{+}(p_{k+1}-1)} \gets x_k|_{I_{+}(p_{k+1}-1)}$
		\STATE $z[p_{k+1}] \gets \alpha$
		\STATE $x_{k+1}|_{I_{+}(p_{k+1})} \gets z$
		
		\IF{$d_H(z,x_0|_{I_{+}(p_{k+1})}) > d_H(z,r|_{I_{+}(p_{k+1})}) $}
			\STATE $x_{k+1}|_{I_{-}(p_{k+1})} \gets x_k|_{I_{-}(p_(k+1))}$
		\ELSE
			\STATE $x_{k+1}|_{I_{-}(p_{k+1})} \gets r|_{I_{-}(p_(k+1))}$
		\ENDIF
		\STATE qPMS7\_Tree($k+1,x_{0},r,x_{k+1},p_{k+1}, \mathcal{T}'$)
	\ENDFOR
\ENDFOR

\endinput

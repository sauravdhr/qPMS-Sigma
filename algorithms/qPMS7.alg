\STATE $\mathcal{M} \leftarrow \emptyset$

\FOR{$i_{1} = 1$ \TO $n-q+1$}
	\FOR{$j_{1}=1$ \TO $m-l+1$}
		\FOR{$i_{2}=i_{1}+1$ \TO $n-q+1$}
			\FOR{$j_{2}=1$ \TO $m-l+1$}
				\STATE $\mathcal{T} \gets \{S_{h} | 1\leq h \leq N, h\neq i_{1}, h\neq i_{2}\}$
				\STATE qPMS7\_Tree($0,s_{i_{1},j_{1}}^{l},s_{i_{2},j_{2}}^{l},s_{i_{1},j_{1}}^{l},0,\mathcal{T}$)
			\ENDFOR
		\ENDFOR
	\ENDFOR
\ENDFOR
\STATE Output $\mathcal{M}$
\endinput

\STATE $M \leftarrow \emptyset$

\FOR{$i = 1$ \TO $n-q+1$}
	\FOR{$j=1$ \TO $m-l+1$}
		\STATE $T \leftarrow \{S_{h}|1\leq h \leq N, h\neq i\}$
		\STATE qPMSPruneI\_Tree(0,$s_{ij}^{l},0,T$)
	\ENDFOR
\ENDFOR
\STATE Output $M$

\endinput

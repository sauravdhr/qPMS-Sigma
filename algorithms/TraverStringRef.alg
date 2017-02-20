\STATE $\mathcal{M} \leftarrow \emptyset$
\FOR {$i_{1} \leftarrow 1$ \TO $n-q+1$}
	\FOR { $j_{1} \leftarrow 1$ \TO $m-l+1$}

		\STATE $T \leftarrow \{S_{h}|i_{1}+1 \leq h \leq n\}$

		\STATE \text{Sort the elements of $\mathcal{T}$ in the nonincreasing order}

		\WHILE {$\lvert \mathcal{T} \rvert \geq q-2$}

			\STATE $\mathcal{R} \gets $ first element of $\mathcal{T}$
			\STATE $\mathcal{T} \leftarrow \mathcal{T}\backslash \mathcal{R}$

			\FORALL {$r\in \mathcal{R}$}

				\STATE \text{Initialize the vector $J$}

				\IF {$d_{H}(s^l_{i_{1}j_{1}},r) \leq 2d$}

					\STATE TraverStringRef\_Tree(0,$s^l_{i_{1}j_{1}},r,s^l_{i_{1}j_{1}},0,\mathcal{T},J$)

				\ENDIF
			\ENDFOR
		\ENDWHILE 
	\ENDFOR
\ENDFOR
\STATE Output $\mathcal{M}$
\endinput

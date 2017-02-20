\STATE $Q' \gets \emptyset$
\STATE $d_x \gets d - d_H(x_k|_{I_{+}(p_k)},x_0|_{I_{+}(p_k)}) $
\STATE $d_r \gets d - d_H(x_k|_{I_{+}(p_k)},r|_{I_{+}(p_k)}) $

\FORALL {$y$ $\epsilon $ $Q$}
	\STATE $d_y \gets d - d_{H}(x_{k}|_{I_{+}(p_k)}, y|_{I_{+}(p_k)}) $

	\IF { $B(x_0|_{I_{-}(p_k)},d_x)$ $\cap$ $B(r|_{I_{-}(p_k)},d_r)$ $\cap$ $B(y|_{I_{-}(p_k)},d_y)$ $\neq$ $\emptyset$}
		\STATE $Q' \gets Q' \cup \{y\}$
	\ENDIF
\ENDFOR
\RETURN $Q'$
\endinput

# The four subspaces

## Column and null spaces

Given matrix ${\boldsymbol A}_{m\times n}$, we have four subspaces:

- column space $col({\boldsymbol A})$
- row space $col({\boldsymbol A}^T)$
- null space $null({\boldsymbol A})$
- left null space $null({\boldsymbol A}^T)$

Suppose that 
$$
\hbox{rank}({\boldsymbol A})=r,
$$
then
$$
col({\boldsymbol A}) \oplus null({\boldsymbol A}^T)={\boldsymbol R}^m,
$$
and
$$
col({\boldsymbol A}^T) \oplus null({\boldsymbol A})={\boldsymbol R}^n,
$$
where $\oplus$ is for *direct sum*.

## Ranks inequalities

1.
$$
\hbox{rank}({\boldsymbol A}{\boldsymbol B})\le \min\{\hbox{rank}({\boldsymbol A}),\ \hbox{rank}({\boldsymbol B})\}
$$
1. 
$$
\hbox{rank}({\boldsymbol A}+{\boldsymbol B})\le \hbox{rank}({\boldsymbol A})+ \hbox{rank}({\boldsymbol B})
$$
1.
$$
\hbox{rank}({\boldsymbol A})=\hbox{rank}({\boldsymbol A}^T)=\hbox{rank}({\boldsymbol A}{\boldsymbol A}^T)=\hbox{rank}({\boldsymbol A}^T{\boldsymbol A})
$$
1.
Given ${\boldsymbol A}_{m\times r}$ and ${\boldsymbol B}_{r\times n}$, if
$$
\hbox{rank}({\boldsymbol A})=\hbox{rank}({\boldsymbol B})=r,
$$
then
$$
\hbox{rank}({\boldsymbol A}{\boldsymbol B})=r.
$$

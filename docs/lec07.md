# Singular value decomposition (SVD)

## Key ideas

If matrix ${\boldsymbol A}_{m\times n}$ is not square, then ${\boldsymbol Ax}=\lambda{\boldsymbol x}$ is impossible and eigenvectors fail (the left side in ${\boldsymbol R}^m$, the right side in ${\boldsymbol R}^n$.)

The key idea is that we need two sets of singular vectors, the ${\boldsymbol u}$'s and ${\boldsymbol v}$'s. For a real $m$-by-$n$ matrix, the $n$ right singular vectors ${\boldsymbol v}_1,\ldots, {\boldsymbol v}_n$ are orthogonal in ${\boldsymbol R}^n$; the $m$ left singular vectors ${\boldsymbol u}_1,\ldots, {\boldsymbol u}_m$ are orthogonal in ${\boldsymbol R}^m$. The right and left singular vectors are connected in the following way:
$$
\left\{
\begin{array}{l}
{\boldsymbol Av}_1=\sigma_1{\boldsymbol u}_1, \ldots, {\boldsymbol Av}_r=\sigma_r{\boldsymbol u}_r,\\
{\boldsymbol Av}_{r+1}=\ldots {\boldsymbol Av}_n={\boldsymbol 0},
\end{array}
\right.
$$
where $r$ is the rank of ${\boldsymbol A}$, 
$$
\sigma_1\ge \sigma_2\ge \cdots \ge \sigma_r>0.
$$
The last $n-r$ ${\boldsymbol v}$'s are in the null space of ${\boldsymbol A}$, and the last $m-r$ ${\boldsymbol u}$'s are in the null space of ${\boldsymbol A}^T$. The matrix format is:
$$
{\boldsymbol AV}={\boldsymbol U\Sigma},
$$
i.e.
$$
{\boldsymbol A}\left[
{\boldsymbol v}_1, \ldots, {\boldsymbol v}_r, \ldots, {\boldsymbol v}_n
\right] = \left[
{\boldsymbol u}_1, \ldots, {\boldsymbol u}_r, \ldots, {\boldsymbol u}_n
\right]=\left[
\begin{array}{c|c}
\begin{array}{ccc}
\sigma_1 & &\\
& \vdots &\\
&& \sigma_r
\end{array} & {\boldsymbol 0}\\
\hline\\
{\boldsymbol 0} & {\boldsymbol 0}
\end{array}
\right].
$$
The singular value decomposition of ${\boldsymbol A}$ is
$$
{\boldsymbol A}={\boldsymbol U\Sigma V}^T=\sum_{i=1}^r \sigma_i {\boldsymbol u}_i{\boldsymbol v}_i^T.
$$

## Proof of SVD (a sketch)

## The first singular vector

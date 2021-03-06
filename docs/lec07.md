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

The **reduced form of the SVD**: The heart of the SVD is in the first $r$ ${\boldsymbol v}$'s and ${\boldsymbol u}$'s and $\sigma$'s. We can reduce
$$
{\boldsymbol AV}={\boldsymbol U\Sigma V}
$$
to
$$
{\boldsymbol AV}_r={\boldsymbol U}_r{\boldsymbol \Sigma}_r,
$$
where ${\boldsymbol \Sigma}_r$ is now square;
this is the reduced SVD. We still have
$$
{\boldsymbol A}={\boldsymbol U}_r{\boldsymbol \Sigma}_r{\boldsymbol V}^T_r;
$$
this is because
$$
LHS = \sum_{i=1}^r \sigma_i {\boldsymbol u}_i{\boldsymbol v}_i^T
$$
and 
$$
RHS = \sum_{i=1}^r \sigma_i {\boldsymbol u}_i{\boldsymbol v}_i^T.
$$

**Why is the SVD so important?** Answer: Like the other factorizations, SVD separates the matrix into rank one pieces. A special property of the SVD is that those pieces come **in order of importance**. The first piece $\sigma_1{\boldsymbol u}_1{\boldsymbol v}_1^T$ is the closest rank one matrix to ${\boldsymbol A}$. More than that is true:
$$
{\boldsymbol A}_k=\sum_{i=1}^k \sigma_i {\boldsymbol u}_k{\boldsymbol v}_k^T
$$
is the best rank $k$ approximation to ${\boldsymbol A}$.


## Proof of SVD (a sketch)

1. We need the two facts:

    - $\hbox{rank}({\boldsymbol A})=\hbox{rank}({\boldsymbol A}^T)=\hbox{rank}({\boldsymbol AA}^T)=\hbox{rank}({\boldsymbol A}^T{\boldsymbol A})$
    - ${\boldsymbol BA}$ has the same non-zero eigenvalues as ${\boldsymbol AB}$.
    
1. If
$$
{\boldsymbol A}={\boldsymbol U\Sigma V}^T,
$$
then
$$
{\boldsymbol A}^T{\boldsymbol A}={\boldsymbol V \Sigma}^T{\boldsymbol U}^T{\boldsymbol U\Sigma V}^T={\boldsymbol V\Sigma}^T{\boldsymbol \Sigma V}^T,
$$
and 
$$
{\boldsymbol A}^T{\boldsymbol A}={\boldsymbol U\Sigma V}^T{\boldsymbol V\Sigma}^T{\boldsymbol U}^T={\boldsymbol U\Sigma\Sigma}^T{\boldsymbol U}^T.
$$

1. We choose that 

    - ${\boldsymbol V}$ contains orthonormal eigenvectors of ${\boldsymbol A}^T{\boldsymbol A}$
    - ${\boldsymbol U}$ contains orthonormal eigenvectors of ${\boldsymbol AA}^T$
    - $\sigma_1^2$ to $\sigma_r^2$ are the non-zero eigenvalues of both ${\boldsymbol A}^T{\boldsymbol A}$ and ${\boldsymbol AA}^T$.

1. Details about choosing ${\boldsymbol V}$, ${\boldsymbol U}$

    - Choosing orthonormal eigenvectors of ${\boldsymbol v}_1, \ldots, {\boldsymbol v}_r$ of ${\boldsymbol A}^T{\boldsymbol A}$, making sure that eigenvalues $\lambda_1,\ldots, \lambda_r$ are all positive.
    - $\sigma_k=\sqrt{\lambda_k}$.
    - ${\boldsymbol u}_k={\boldsymbol Av}_k/\sigma_k,$ $k=1,\ldots, r$.
    - Choosing the last $n-r$ vectors ${\boldsymbol v}_{r+1}$ to ${\boldsymbol v}_n$ and the last $m-r$ vecotrs ${\boldsymbol u}_{r+1}$ to ${\boldsymbol u}_m$; those ${\boldsymbol v}$'s and ${\boldsymbol u}$'s are in the null spaces of ${\boldsymbol A}$ and ${\boldsymbol A}^T$, respectively.
    
Now, let's do some checking. Firstly, we check ${\boldsymbol u}$'s are eigenvalues of ${\boldsymbol AA}^T$.
\begin{align}
{\boldsymbol AA}^T{\boldsymbol u}_k=&{\boldsymbol AA}^T\left(\frac{{\boldsymbol A v}_k}{\sigma_k}\right)\\
=&{\boldsymbol A}\left(\frac{{\boldsymbol A}^T{\boldsymbol A v}_k}{\sigma_k}\right)\\
=&{\boldsymbol A}\left(\frac{\sigma^2_k{\boldsymbol v}_k}{\sigma_k}\right)\\
=&\sigma^2_k{\boldsymbol u}_k.
\end{align}
Next, we check that ${\boldsymbol u}$'s are orthonormal:
\begin{align}
{\boldsymbol u}_j^T{\boldsymbol u}=&\left(
\frac{{\boldsymbol Av}_j}{\sigma_j}
\right)^T \left(
\frac{{\boldsymbol Av}_k}{\sigma_k}
\right)\\
=&\frac{{\boldsymbol v}_j^T{\boldsymbol A}^T{\boldsymbol Av}_k}{\sigma_j\sigma_k}\\
=&\frac{\sigma_k}{\sigma_j}{\boldsymbol v}_j^T{\boldsymbol v}_k\\
=&\left\{
\begin{array}{cl}
1, & \hbox{if}\ j=k;\\
0, & \hbox{if}\ j\neq k.
\end{array}
\right.
\end{align}

## The first singular vector

Maximize the ratio
$$
\frac{||{\boldsymbol Ax}||}{||{\boldsymbol x}||}.
$$
The maximum is $\sigma_1$ (the largest singular value) at the vector ${\boldsymbol x}={\boldsymbol v}_1$.

**Proof:** It's equivalent to show that
$$
\begin{array}{cl}
&\frac{||{\boldsymbol Ax}||^2}{||{\boldsymbol x}||^2}\le \sigma_1^2\\
\Leftrightarrow & {\boldsymbol x}^T{\boldsymbol A}^T{\boldsymbol Ax}\le \sigma_1^2{\boldsymbol x}^T{\boldsymbol x}\\
\Leftrightarrow & {\boldsymbol x}^T\left(
\sigma_1^2{\boldsymbol I}-{\boldsymbol A}^T{\boldsymbol A}\right){\boldsymbol x}\ge 0.
\end{array}
$$
Since the eigenvalues of $\sigma_1^2{\boldsymbol I}-{\boldsymbol A}^T{\boldsymbol A}$ are all non-negative,
$$
{\boldsymbol x}^T\left(
\sigma_1^2{\boldsymbol I}-{\boldsymbol A}^T{\boldsymbol A}\right){\boldsymbol x}\ge 0,
$$
and the equality holds when ${\boldsymbol x}={\boldsymbol v}_1$.

# Orthogonal matrices and subspaces

## Definition

${\boldsymbol Q}$ is an orthogonal matrix, if

1. ${\boldsymbol Q}$ is square;
1. ${\boldsymbol Q}^T{\boldsymbol Q}={\boldsymbol I}\Longleftrightarrow {\boldsymbol Q}{\boldsymbol Q}^T={\boldsymbol I}$.

## Hadamard matrices

The Wikipedia link is: https://en.wikipedia.org/wiki/Hadamard_matrix

Hadamard conjecture: There is an $n$-by-$n$ $\pm 1$ matrix with orthogonal columns whenever $4$ divides $n$.

## Orthogonal basis

- Every subspace of ${\boldsymbol R}^n$ has an orthogonal basis (this can be done by using Gram-Schmidt procedure)
- The row space of ${\boldsymbol A}$ is orthogonal to the null space of ${\boldsymbol A}$. The column space of ${\boldsymbol A}$ is orthogonal to the null space of ${\boldsymbol A}^T$.
- SVD (Singular Value Decomposition) finds orthogonal bases ${\boldsymbol v}_1, \ldots, {\boldsymbol v}_r$ for the row space of ${\boldsymbol A}$ and ${\boldsymbol u}_1, \ldots, {\boldsymbol u}_r$ for the column space such that
$$
{\boldsymbol Av}_i=\sigma_i{\boldsymbol u}_i,\ \hbox{for}\ i=1, \ldots, r,
$$
where $r$ is the rank of ${\boldsymbol A}$. That is, for the bases from the SVD, multiplying by ${\boldsymbol A}$ takes an orthogonal basis of ${\boldsymbol v}$'s to an orthogonal basis of ${\boldsymbol u}$'s.

## Projection matrix

If ${\boldsymbol P}^2={\boldsymbol P}={\boldsymbol P}^T$, then ${\boldsymbol Pb}$ is the *orthogonal projection* of ${\boldsymbol b}$ onto the column space of ${\boldsymbol P}$.

## In ${\boldsymbol R}^2$

- Rotation matrix (rotation through an angle $\theta$)
$$
{\boldsymbol Q}_{rot}=\left[
\begin{array}{rr}
\cos\theta & -\sin\theta\\
\sin\theta & \cos\theta
\end{array}
\right]
$$
- Reflection matrix (reflection across $\theta/2$-line)
$$
{\boldsymbol Q}_{ref}=\left[
\begin{array}{rr}
\cos\theta & \sin\theta\\
\sin\theta & -\cos\theta
\end{array}
\right]
$$

## Orthogonal basis (or orthogonal axes) in ${\boldsymbol R}^n$

Suppose that orthogonal matrix ${\boldsymbol Q}$ has columns ${\boldsymbol q}_1,\ldots, {\boldsymbol q}_n$. Those unit vectors are a basis of space ${\boldsymbol R}^n$. Every vector in ${\boldsymbol R}^n$ can be expressed as a linear combination of ${\boldsymbol q}$'s:
$$
v=\sum_{i=1}^n c_i{\boldsymbol q}_i,
$$
where 
$$
c_i = {\boldsymbol q}^T{\boldsymbol v}.
$$
Note that when basis vectors are orthogonal, each coefficient $c_1$ to $c_n$ can be found *independently*.

## Householder matrices

$$
{\boldsymbol H}_n={\boldsymbol I}_n - 2{\boldsymbol u}{\boldsymbol u}^T,
$$
where ${\boldsymbol u}\in {\boldsymbol R}^n$ and 
$||{\boldsymbol u}||=1$. It can be shown that
$$
{\boldsymbol H}_n {\boldsymbol u} = - {\boldsymbol u},
$$
and
$$
{\boldsymbol H}_n {\boldsymbol w} = {\boldsymbol w},
$$
if ${\boldsymbol w}$ is perpendicular to ${\boldsymbol u}$.

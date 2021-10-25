# Eigenvalues and eigenvectors

## Basics

${\boldsymbol A}$ is an $n$-by-$n$ matrix. If
$$
{\boldsymbol A\xi}=\lambda {\boldsymbol \xi},
$$
then $\lambda$ is an eigenvalue and ${\boldsymbol \xi}$ is an eigenvector of ${\boldsymbol A}$. Notice that
$$
{\boldsymbol A}^k{\boldsymbol \xi}=\lambda^k {\boldsymbol \xi},
$$
that is, $\lambda^k$ is eigenvalue and ${\boldsymbol \xi}$ is eigenvector of ${\boldsymbol A}^k$.

Suppose that $\lambda_1,\ldots, \lambda_n$ are eigenvalues of ${\boldsymbol A}$.
Three facts:

1. 
$$
\hbox{trace}({\boldsymbol A})=\sum_{i=1}^n \lambda_i.
$$
1.
$$
\hbox{det}({\boldsymbol A})=\prod_{i=1}^n \lambda_i.
$$
1. The eigenvectors of a real matrix ${\boldsymbol A}$ are orthogonal if and only if
$$
{\boldsymbol A}^T{\boldsymbol A}={\boldsymbol A}{\boldsymbol A}^T.
$$


Quick proof for Facts 1 and 2. The characteristic polynomial is
$$
|\lambda {\boldsymbol I} - {\boldsymbol A}|=\prod_{i=1}^n (\lambda - \lambda_i).
$$
In the LHS the coefficient of $\lambda^{n-1}$ is $-\hbox{trace}({\boldsymbol A})$, and in the RHS the coefficient of $\lambda^{n-1}$ is $-\sum_{i=1}^n \lambda_i$. Thus we have Fact 1. Let $\lambda$ be 0 in the characteristic polynomial, we have
$$
(-)^n|{\boldsymbol A}| = (-1)^n \prod_{i=1}^n \lambda_i,
$$
which implies Fact 2.

## Similar matrices

For every invertible matrix ${\boldsymbol B}$, the eigenvalues of ${\boldsymbol BAB}^{-1}$ are the same as eigenvalues of ${\boldsymbol A}$. The eigenvector ${\boldsymbol x}$ of ${\boldsymbol A}$ are multiplied by ${\boldsymbol B}$ to give eigenvectors of ${\boldsymbol BAB}^{-1}$.

The matrices ${\boldsymbol BAB}^{-1}$ (for every invertible ${\boldsymbol B}$) are **similar** to ${\boldsymbol A}$.

${\boldsymbol A}$ is an $n$-by-$n$ matrix. ${\boldsymbol A}$ is similar to a diagonal matrix if and only if it has $n$ independent eigenvectors, ${\boldsymbol x}_1, \ldots, {\boldsymbol x}_n$.
\begin{align}
{\boldsymbol A}\left[{\boldsymbol x}_1, \ldots, {\boldsymbol x}_n\right]=&\left[{\boldsymbol A}{\boldsymbol x}_1, \ldots, {\boldsymbol A}{\boldsymbol x}_n\right]\\
=&\left[\lambda_1{\boldsymbol x}_1, \ldots, \lambda_n{\boldsymbol x}_n\right]\\
=&\left[{\boldsymbol x}_1, \ldots, {\boldsymbol x}_n\right]\left[
\begin{array}{ccc}
\lambda_1 & &\\
& \ddots &\\
&& \lambda_n
\end{array}
\right],
\end{align}
which implies 
$$
{\boldsymbol A}=\left[{\boldsymbol x}_1, \ldots, {\boldsymbol x}_n\right]
\left[
\begin{array}{ccc}
\lambda_1 & &\\
& \ddots &\\
&& \lambda_n
\end{array}
\right]
\left[{\boldsymbol x}_1, \ldots, {\boldsymbol x}_n\right]^{-1}
$$
and 
$$
{\boldsymbol A}^k=\left[{\boldsymbol x}_1, \ldots, {\boldsymbol x}_n\right]
\left[
\begin{array}{ccc}
\lambda_1^k & &\\
& \ddots &\\
&& \lambda_n^k
\end{array}
\right]
\left[{\boldsymbol x}_1, \ldots, {\boldsymbol x}_n\right]^{-1}.
$$

Geometric multiplicity (= GM) counts the independent eigenvectors for $\lambda$; we look at the dimension of null space of $\lambda{\boldsymbol I}-{\boldsymbol A}$. Algebraic multiplicity (= AM) counts the repetitions of $\lambda$ among eigenvalues; we look at the roots of ${\hbox{det}(\lambda{\boldsymbol I}-{\boldsymbol A})}=0.$ The shortage of eigenvectors when $\hbox{GM}<\hbox{AM}$ means that ${\boldsymbol A}$ is not diagonalizable (or in other words, it's not similar to a diagonal matrix).

## Homogeneous linear difference equation

Let's have an example. For integer sequence $\{a_n\}$, $a_0=a_1=a_2=1$ and if $n\ge 3$
$$
a_n = pa_{n-1} + qa_{n-2}+ra_{n-3}.
$$
Find an expression of $a_n$.

**Solution:** 
\begin{align}
\left[
\begin{array}{l}
a_{n+2}\\
a_{n+1}\\
a_n
\end{array}
\right]=&
\left[
\begin{array}{ccc}
p & q & r\\
1 & 0 & 0\\
0 & 1 & 0
\end{array}
\right]\left[
\begin{array}{l}
a_{n+1}\\
a_{n}\\
a_{n-1}
\end{array}
\right]\\
=&\left[
\begin{array}{ccc}
p & q & r\\
1 & 0 & 0\\
0 & 1 & 0
\end{array}
\right]^2\left[
\begin{array}{l}
a_{n}\\
a_{n-1}\\
a_{n-2}
\end{array}
\right]\\
\vdots&\\
=&\left[
\begin{array}{ccc}
p & q & r\\
1 & 0 & 0\\
0 & 1 & 0
\end{array}
\right]^n\left[
\begin{array}{l}
a_{2}\\
a_{1}\\
a_{0}
\end{array}
\right]:={\boldsymbol A}^n\left[
\begin{array}{l}
a_{2}\\
a_{1}\\
a_{0}
\end{array}
\right].
\end{align}
Note that if ${\boldsymbol A}$ is diagonalizable, then it's easy to compute ${\boldsymbol A}^n$, and we can find a closed-form expression of $a_n$. Also notice that
\begin{align}
|\lambda {\boldsymbol I}-{\boldsymbol A}|=&
\begin{array}{|rrr|}
\lambda-p & -q & -r\\
-1 & \lambda & 0\\
0 & -1 & \lambda
\end{array}\\
=& -r
\begin{array}{|rr|}
-1 & \lambda\\
0 & -1
\end{array}+\lambda
\begin{array}{|rr|}
\lambda-p & -q\\
-1 & \lambda
\end{array}\\
=&-r + \lambda\left[(\lambda-p)\lambda - q\right]\\
=&-r+\lambda\left[\lambda^2-p\lambda-q\right]\\
=&\lambda^3-p\lambda^2-q\lambda-r.
\end{align}

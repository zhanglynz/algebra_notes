# Elimination and LU

## Elimination

To solve
$$
{\boldsymbol Ax}={\boldsymbol b},
$$
we use the (Gaussian) elimination method.
Elimination means that a) we "knock out" a variable each time, and finally we have an equation like
$$
kx_n=b^\ast,
$$
from which we have
$$
x_n=\frac{b^\ast}{k};
$$
(b) working backwards to have $x_{n-1},\ldots, x_1$. We do **elementary row operation** in the elimination process.

**Example:** Express 
$$
\left[
\begin{array}{ccc}
1 & 2 & 3\\
4 & 5 & 6\\
7 & 8 & 9
\end{array}
\right]
$$
as LU, i.e. a product of lower and upper triangular matrices.

**Solution:**
\begin{align}
&\left[
\begin{array}{ccc|ccc}
1 & 2 & 3 &  1 & 0 & 0\\
4 & 5 & 6 &  0 & 1 & 0\\
7 & 8 & 9 &  0 & 0 & 1
\end{array}
\right]\\
\longrightarrow & \left[
\begin{array}{crr|rcc}
1 & 2 & 3 &  1 & 0 & 0\\
0 & -3 & -6 &  -4 & 1 & 0\\
0 & -6 & -12 &  -7 & 0 & 1
\end{array}
\right]\\
\longrightarrow & \left[
\begin{array}{crr|rrc}
1 & 2 & 3 &  1 & 0 & 0\\
0 & -3 & -6 &  -4 & 1 & 0\\
0 & 0 & 0 &  1 & -2 & 1
\end{array}
\right]=\left[{\boldsymbol U} | {\boldsymbol L}^{-1}\right].
\end{align}
Next we find ${\boldsymbol L}$.
\begin{align}
&\left[
\begin{array}{rrc|ccc}
1 & 0 & 0 &  1 & 0 & 0\\
-4 & 1 & 0 &  0 & 1 & 0\\
1 & -2 & 1 &  0 & 0 & 1
\end{array}
\right]\\
\longrightarrow & \left[
\begin{array}{crc|rcc}
1 & 0 & 0 &  1 & 0 & 0\\
0 & 1 & 0 &  4 & 1 & 0\\
0 & -2 & 1 &  -1 & 0 & 1
\end{array}
\right]\\
\longrightarrow & \left[
\begin{array}{ccc|rrc}
1 & 0 & 0 &  1 & 0 & 0\\
0 & 1 & 0 &  4 & 1 & 0\\
0 & 0 & 1 &  7 & 2 & 1
\end{array}
\right]=\left[{\boldsymbol I} | {\boldsymbol L}\right].
\end{align}

## About permutation matrices

- There are $n!$ ($n$ factorial) permutation matrices of size $n$.
- The inverse of every permutation matrix is its transpose (because permutation matrix is orthogonal matrix.)

# Looking into matrices

If not specifically stated, all the numbers that we use are real.

## Column and row vectors

We use bold lowercase letters to denote vectors. All the vectors are *column vectors*; if we need *row vector*, then we use *transpose* $T$. 

**Examples:**

-  ${\boldsymbol a}^T = (1,\ 2,\ 3)$
-  ${\boldsymbol b}^T= (1,\ 0,\ 0)$
- ${\boldsymbol x}^T= (1/2,\ 1/3,\ 1/4)$

## Definition of a matrix

Let $m$ and $n$ be positive integers. ${\boldsymbol A}_{m\times n}$ is *matrix*---it's an $m$-by-$n$ table, containing $m\times n$ numbers.

**Element picture:**
$$
{\boldsymbol A}_{m\times n} = \left[a_{ij}\right].
$$

**Column picture:**
$$
{\boldsymbol A}_{m\times n} = 
\left[
{\boldsymbol c}_1,\ \ldots,\ {\boldsymbol c}_n
\right],
$$
where ${\boldsymbol c}_i\in {\mathbf R}^n$ for $i=1,\ldots,\ n.$

**Row picture:**
$$
{\boldsymbol A}_{m\times n} = 
\left[
\begin{array}{c}
{\boldsymbol r}_1^T\\
\vdots\\
{\boldsymbol r}_m^T
\end{array}
\right],
$$
where ${\boldsymbol r}_i\in {\mathbf R}^n$ for $i=1, \ldots, m$.

## Transpose

$$
{\boldsymbol A}^T=
\left[
\begin{array}{c}
{\boldsymbol c}_1^T\\
\vdots\\
{\boldsymbol c}_n^T
\end{array}
\right]=
\left[
{\boldsymbol r}_1,\ \ldots,\ {\boldsymbol r}_m
\right],
$$
which is an $n$-by-$m$ matrix.


## A matrix times a vector

By row: it's *inner product* of rows; by column: it's **linear combination of columns**. For example
$$
\left[
\begin{array}{ccc}
1 & 2\\
3 & 4\\
5 & 6
\end{array}
\right]
\left[
\begin{array}{c}
x_1\\
x_2
\end{array}
\right]=\left[
\begin{array}{r}
x_1+2x_2\\
3x_1+4x_2\\
5x_1+6x_2
\end{array}
\right],
$$
or
$$
\left[
\begin{array}{ccc}
1 & 2\\
3 & 4\\
5 & 6
\end{array}
\right]
\left[
\begin{array}{c}
x_1\\
x_2
\end{array}
\right]=x_1\left[
\begin{array}{c}
1\\
3\\
5
\end{array}
\right]+
x_2\left[
\begin{array}{c}
2\\
4\\
6
\end{array}
\right].
$$

## Column space of ${\boldsymbol A}_{m\times n}$

The column space is
$$
Col({\boldsymbol A}_{m\times n})= \left\{
{\boldsymbol y}: {\boldsymbol y} = {\boldsymbol A}{\boldsymbol x},\ \hbox{where}\ {\boldsymbol x}\in {\mathbf R}^n  
\right\}.
$$

A bunch of vectors are *linearly independent*, if there is only **one way** to represent the zero vector as a linear combination of these vectors; or, equivalently, if any one of them cannot be represented as a linear combination of the others.

The **basis** of $Col({\boldsymbol A})$ consists of a subset of the columns of ${\boldsymbol A}$, such that a) these columns are linearly independent, b) any a column of ${\boldsymbol A}$ is a linear combination of these columns. 

## Rank of a matrix

The rank of a matrix is the dimension of its column space.

To find rank of a matrix, we need to find a basis of its column space, for this, an algorithm is: if column 1 is not all zeros, keep it; if column 2 is not a multiple of column 1, keep it; if column 3 is not a linear combination of columns 1 and 2, keep it. *Continue* this way until find all the columns that forms a basis.

**It can be shown that**
$$
\hbox{rank}({\boldsymbol A})=
\hbox{rank}({\boldsymbol A}^T)=
\hbox{rank}({\boldsymbol A}^T{\boldsymbol A})=\hbox{rank}({\boldsymbol A}{\boldsymbol A}^T).
$$

## Representing a matrix as CR and CMR

The letters in CR and CMR stand for **C**olumn, **R**ow and **M**ixing.

In the CR and CMR expressions, columns of matrix ${\boldsymbol C}$ is a basis of $Col({\boldsymbol A})$ and they are directly from ${\boldsymbol A}$. In the CMR expression, rows of matrix ${\boldsymbol R}$ is a basis of row space of ${\boldsymbol A}$ and they are directly from the rows of ${\boldsymbol A}$.

The CR and CMR expressions both show that column and row ranks of a matrix are the same.

**Example:** CR expression
$$
\left[
\begin{array}{ccc}
1 & 2 & 3\\
4 & 5 & 6\\
7 & 8 & 9
\end{array}
\right]=
\left[
\begin{array}{cc}
1 & 2\\
4 & 5\\
7 & 8
\end{array}
\right]\left[
\begin{array}{ccr}
1 & 0 & -1\\
0 & 1 & 2
\end{array}
\right].
$$

**Example:** CMR expression
$$
\left[
\begin{array}{ccc}
1 & 2 & 3\\
4 & 5 & 6\\
7 & 8 & 9
\end{array}
\right]=
\left[
\begin{array}{cc}
1 & 2\\
4 & 5\\
7 & 8
\end{array}
\right]\left[
\begin{array}{rr}
-\frac{5}{3} & \frac{2}{3}\\
\frac{4}{3} & -\frac{1}{3}
\end{array}
\right]\left[
\begin{array}{ccc}
1 & 2 & 3\\
4 & 5 & 6
\end{array}
\right].
$$



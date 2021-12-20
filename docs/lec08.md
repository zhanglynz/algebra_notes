# Principal Component Analysis (PCA)

PCA is an important topic in multivariate analysis and it's useful for dimension reduction, clustering and other purposes (e.g. multivariate quality control). In this note, we will look at PCA from a data analysis perspective.

Suppose we have obtained raw data, and they are shown as follows:


|ID | $X_1$ | $X_2$ | $\cdots$ | $X_p$ |
|:---:|:-------:|-------:|----------:|:------:
|1  | $x_{11}$ | $x_{12}$ | $\cdots$ | $x_{1p}$
|2  | $x_{21}$ | $x_{22}$ | $\cdots$ | $x_{2p}$
|$\vdots$ | $\vdots$ | $\vdots$ | $\vdots$ | $\vdots$
|$n$  | $x_{n1}$ | $x_{n2}$ | $\cdots$ | $x_{np}$

So we have variables
$$
{\boldsymbol X} = (X_1, \ldots, X_p)^T.
$$
To have a picture in our mind, we can think that $p=3$ and 
$X_1,\ X_2,\ X_3$ are *height*, *weight* and *blood pressure* of a normal person. We standardizing the raw data and we have
$$
Z_i = \frac{X_i-\mu_{X_i}}{\sigma_{X_i}},\ \hbox{for}\ i=1, \ldots, p.
$$
Or in terms of data, the transformed data are

|ID | $Z_1$ | $Z_2$ | $\cdots$ | $Z_p$ |
|:---:|:-------:|-------:|----------:|:------:
|1  | $z_{11}$ | $z_{12}$ | $\cdots$ | $z_{1p}$
|2  | $z_{21}$ | $z_{22}$ | $\cdots$ | $z_{2p}$
|$\vdots$ | $\vdots$ | $\vdots$ | $\vdots$ | $\vdots$
|$n$  | $z_{n1}$ | $z_{n2}$ | $\cdots$ | $z_{np}$

Note that
$$
z_{ij} = \frac{x_{ij}-\bar{x}_{.j}}{s_j},
$$
where
$$
\bar{x}_{.j}=\sum_{i=1}^n x_{ij}/n,
$$
and
$$
s_j = \sqrt{\sum_{i=1}^n\left(x_{ij}-\bar{x}_{.j}\right)^2/(n-1)}.
$$
We do standardizing, because we want to do linear combination of $Z_1,\ \ldots, Z_p$, i.e. we can have a new variable, say
$$
U = a_1Z_1 + a_2Z_2 + \ldots + a_pZ_p,
$$
which has a meaningful interpretation if we interpret $Z_i$ as some an "index".

Using the standardized data, we next calculate the *covariance* (*correlation*) matrix
$$
{\boldsymbol \Sigma}=\left[
\begin{array}{cccc}
\sigma_{11} & \sigma_{12} & \ldots & \sigma_{1p}\\
\sigma_{21} & \sigma_{22} & \ldots & \sigma_{2p}\\
\vdots & \vdots & \vdots & \vdots\\
\sigma_{p1} & \sigma_{p2} & \ldots & \sigma_{pp}
\end{array}
\right],
$$
where
$$
\sigma_{ij} = \frac{\sum_{k=1}^n z_{ki}z_{kj}}{\sqrt{\sum_{k=1}^n z_{ki}^2\sum_{k=1}^n z_{kj}^2}}.
$$
We should notice that

- $\sigma_{ij}=1$ if $i=j$ and $\le 1$ if $i\neq j$
- $\sigma_{ij}=\sigma_{ji}$, that is, ${\boldsymbol \Sigma}$ is a symmetric matrix
- ${\boldsymbol \Sigma}$ is (semi) positive definite

According to the **Spectral Theorem**, ${\boldsymbol \Sigma}$ has eigenvalues
$\lambda_1\ge \lambda_2\ge \ldots \ge \lambda_p\ge 0$ and orthonormal eigenvectors ${\boldsymbol v}_1,\ \ldots, {\boldsymbol v}_p$, such that
$$
{\boldsymbol \Sigma}\left[{\boldsymbol v}_1, \, \ldots,\ {\boldsymbol v}_p\right]=\left[
\begin{array}{ccc}
\lambda_1 & &\\
& \ddots &\\
&& \lambda_p
\end{array}
\right]\left[{\boldsymbol v}_1, \, \ldots,\ {\boldsymbol v}_p\right].
$$
Define matrix
$$
{\boldsymbol A}:=\left[
\begin{array}{c}
{\boldsymbol v}_1^T\\
{\boldsymbol v}_2^T\\
\vdots\\
{\boldsymbol v}_p^T\\
\end{array}
\right].
$$
Define
$$
{\boldsymbol U}:=\left[
\begin{array}{c}
U_1\\
\vdots\\
U_p
\end{array}
\right]={\boldsymbol A}
\left[
\begin{array}{c}
Z_1\\
\vdots\\
Z_p
\end{array}
\right]={\boldsymbol A}{\boldsymbol Z}.
$$
Then, the covariance matrix of ${\boldsymbol U}$ is
$$
{\boldsymbol A}{\boldsymbol \Sigma}{\boldsymbol A}^T=\left[
\begin{array}{ccc}
\lambda_1 & &\\
& \ddots &\\
&& \lambda_p
\end{array}
\right],
$$
which shows that $U_1,\ \ldots,\ U_p$ are un-correlated variables. Let's have a careful look:
$$
\begin{array}{ccc}
U_1 & = & {\boldsymbol v}_1^T{\boldsymbol Z}\\
U_2  & = & {\boldsymbol v}_2^T{\boldsymbol Z}\\
& \vdots &\\
U_p  & = & {\boldsymbol v}_p^T{\boldsymbol Z}
\end{array}
$$
So, based on $Z_1,\ \ldots, Z_p$ we have new variables $U_1,\ \ldots, \ U_p$; we call them the first, second, ..., principal components, respectively.

In practice, we use the first $r$ (e.g. $r=2$) principal components such that
$$
\frac{\sum_{i=1}^r \lambda_i}{\sum_{i=1}^p \lambda_i}>0.8\ \hbox{or}\ 0.9.
$$
For example, we can plot $U_1$ and $U_2$ to understand cluster structure of the $n$ observed data points.

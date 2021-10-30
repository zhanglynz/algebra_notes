# Symmetric positive definite matrices

## Spectral theorem

Two important facts: For an $n$-by-$n$ symmetric matrix ${\boldsymbol S}$,

1. all its $n$ eigenvalues are real numbers;
1. it has $n$ **independent** eigenvectors and they can be made *orthonormal* (perpendicular to each other and each of them has length 1);
1. eigenvectors that belong to different eigenvalues are orthogonal.

**Spectral Theorem:** Every real symmetric matrix has the form
$$
{\boldsymbol S}={\boldsymbol Q\Lambda Q}^T,
$$
where ${\boldsymbol \Lambda}$ is a diagonal matrix with eigenvalues of ${\boldsymbol S}$ on the diagonal positions, ${\boldsymbol Q}^T{\boldsymbol Q}={\boldsymbol I}$ and columns of ${\boldsymbol Q}$ are eigenvectors of ${\boldsymbol S}$.

## Positive definite matrices

**Definitions:** {\boldsymbol S} is a symmetric real matrix. If for any non-zero vector ${\boldsymbol x}\in {\boldsymbol R}^n$,
$$
{\boldsymbol x}^T{\boldsymbol Sx}>0,
$$
then we say ${\boldsymbol S}$ is a *positive definite* matrix.

Testing if ${\boldsymbol S}$ is positive definite:

1. definition;
1. all eigenvalues of ${\boldsymbol S}$ are positive;
1. all the **leading determinants** of ${\boldsymbol S}$ are positive;
1. ${\boldsymbol S}={\boldsymbol A}^T{\boldsymbol A}$ for a matrix ${\boldsymbol A}$ with independent columns.

An **inequality**: Suppose that ${\boldsymbol S}$ is positive definite with eigenvalues $\lambda_1\ge \lambda_2\ge \ldots \ge \lambda_n$. Then for any ${\boldsymbol x}\in {\boldsymbol R}^n$,
$$
{\boldsymbol x}^T{\boldsymbol Sx}\le \lambda_1 {\boldsymbol x}^T{\boldsymbol x}.
$$
(Hint: RHS minus LHS is ${\boldsymbol x}^T(\lambda_1{\boldsymbol I- S}){\boldsymbol x}$, and the eigenvalues of $\lambda_1{\boldsymbol I- S}$ are all non-negative.)


## Application

Minimize $f(x, y)$.

Minimum is at $x_0,\ y_0$, which are solutions to
$$
\frac{\partial f}{\partial x}=\frac{\partial f}{\partial y}=0,
$$
and
$$
\left[
\begin{array}{cc}
\partial^2f/\partial x^2 & \partial^2f/\partial x \partial y\\
\partial^2f/\partial x \partial y & \partial^2f/\partial y^2  
\end{array}
\right]
$$
is positive definite at $x_0,\ y_0$.

**Gradient descent:** Each step takes the steepest direction toward the target. 

> 
Machine learning produces "loss functions" with hundreds of thousands of variables. They measure the error---which we minimize. But computing all the second derivatives is completely impossible. We use first derivatives to tell us a direction to move---the error drops fastest in the steepest direction. Then we take another descent step in a new direction. This is the central computation in least squares and neural nets and deep learning.
>



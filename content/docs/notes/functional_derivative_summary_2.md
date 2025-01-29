---
title: "Functional Derivative"
---

The goal of this section is to discover a suitable definition of a
*functional derivative*, such that we can take the derivative of a
functional and still have the same rules of differentiation as normal
calculus. For example, we wish to find a definition for
$\frac{\delta J}{\delta y}$, where $J[y(x)]$ is a functional of $y(x)$
such that things like
$$\frac{\delta}{\delta y} J^2 = 2J \frac{\delta J}{\delta y}$$ are still
true.

## Definitions {#definitions .unnumbered}

## - Functional {#functional .unnumbered}

Stone's definition of local functional where $f$ is a multivariable
function:
$$J[y] = \int_{x_1}^{x_2} f(x, y(x), y'(x), y''(x), \ldots, y^{(n)}(x)) \ dx = \int_{x_1}^{x_2} f \ dx \tag{1}$$

Notice the functional $J$ "eats" an entire function $y$, which is
defined using its local values $y(x)$, $y'(x)$, etc., and spits out a
number through integration. In short, a functional is just a number that
depends on an input function.

## - Variation {#variation .unnumbered}

A variation of the functional is the amount the functional changes when
the input function is changed by a little bit. Suppose we let
$y(x) \to y(x) + \delta y(x)$, then since $\frac{d}{dx}$ is linear
$$y'(x) \to y'(x) + \frac{d}{dx} \delta y(x) = y'(x) + \delta y'(x),$$
$$y''(x) \to y''(x) + \frac{d^2}{dx^2} \delta y(x) = y''(x) + \delta y''(x),$$
$$\vdots$$
$$y^{(n)}(x) \to y^{(n)}(x) + \frac{d^n}{dx^n} \delta y(x) = y^{(n)}(x) + \delta y^{(n)}(x)\tag{2}$$

Thus the integrand of the new output $J[y + \delta y]$ can
be expanded to first order using Taylor expansion of a multivariable
function around the old input $y$
$$J[y + \delta y] = \int_{x_1}^{x_2} f(x, y + \delta y, y' + \delta y', \ldots, y^{(n)} + \delta y^{(n)}) \ dx$$
Expanding
$$J[y + \delta y] = \int_{x_1}^{x_2} f + \frac{\partial f}{\partial y} \delta y + \frac{\partial f}{\partial y'} \delta y' + \cdots + \frac{\partial^{(n)} f}{\partial y^{(n)}} \delta y^{(n)} \ dx\tag{3}$$

The variation of the functional is thus, by definition, the new output
minus the old output taken to first order
$$\delta J = J[y + \delta y] - J[y]$$ 

Simplifying
$$\delta J = \int_{x_1}^{x_2} \frac{\partial f}{\partial y} \delta y + \frac{\partial f}{\partial y'} \delta y' + \cdots + \frac{\partial^{(n)} f}{\partial y^{(n)}} \delta y^{(n)} \ dx\tag{4}$$
Using integration by parts, we move all $\frac{d}{dx}$ on $\delta y$ to $f$

$$\delta J = \frac{\partial f}{\partial y'} \delta y(x)\vert_{x_1}^{x_2} +  \frac{\partial f}{\partial y''} \delta y'(x)\vert_{x_1}^{x_2} - \frac{d}{dx}\frac{\partial f}{\partial y''} \delta y(x) \vert_{x_1}^{x_2} + \cdots + (-1)^{n-1}\frac{d^{n-1}}{dx^{n-1}} \frac{\partial f}{\partial y^{(n)}} \delta y(x) \vert_{x_1}^{x_2}$$

$$+ \int_{x_1}^{x_2} \left( \frac{\partial f}{\partial y} - \frac{d}{dx} \frac{\partial f}{\partial y'} + \frac{d^2}{dx^2} \frac{\partial f}{\partial y''} - \cdots + (-1)^n\frac{d^n}{dx^n} \frac{\partial f}{\partial y^{(n)}} \right) \delta y(x) \ dx\tag{5}$$

## Functional Derivative {#functional-derivative .unnumbered}

For a normal multivariable function $f(x_1, x_2, \ldots, x_n)$, we have
$$df = \sum_{i=1}^n \frac{\partial f}{\partial x_i} dx_i\tag{6}$$ We
wish to rewrite the variation $\delta J$ in a similar form
$$\delta J = \int_{x_1}^{x_2} \frac{\delta J}{\delta y}(x) \delta y(x) \ dx\tag{7}$$
Under fixed-end
conditions$(\delta y^{(n)}(x_1)= \delta y^{(n)}(x_2)=0)$, comparing
terms gives
$$\frac{\delta J}{\delta y} = \frac{\partial f}{\partial y} - \frac{d}{dx} \frac{\partial f}{\partial y'} + \frac{d^2}{dx^2} \frac{\partial f}{\partial y''} - \cdots + (-1)^n\frac{d^n}{dx^n} \frac{\partial f}{\partial y^{(n)}}\tag{8}$$
As long as $\delta J$ can be written as (7), we will have our nice rules
of differentiation. For example
$$\delta J^2 \equiv (J + \delta J)^2 - J^2 = 2J\delta J + O((\delta J)^2)$$
$$= \int_{x_1}^{x_2} dx \ 2J \frac{\delta J}{\delta y}(x) \delta y(x) \implies$$
$$\frac{\delta J^2}{\delta y} = 2J \frac{\delta J}{\delta y} \tag{9}$$

A word of caution: This definition of functional derivative is nice, but
as $f$ involves higher derivatives of $y$, the fixed-end condition
becomes harsher and the range of $y$ this derivative applies to quickly
diminishes. Therefore it is sometimes more useful to make variations by
hand according to (5).

## Lagrangian Mechanics {#lagrangian-mechanics .unnumbered}

When the integrand of the functional depends only on $y$ and $y'$
($f(y, y')$), the functional derivative simplifies to
$$\frac{\delta J}{\delta y} = \frac{\partial f}{\partial y} - \frac{d}{dx} \frac{\partial f}{\partial y'}\tag{10}$$
This form is foundational in Lagrangian mechanics. For a typical
classical mechanics problem, we minimize the action $S$, which is a
functional of a configuration function $q(t)$
$$S[q] = \int_{t_1}^{t_2} L(q(t), \dot{q}(t)) \ dt\tag{11}$$ Setting
the derivative to zero gives the Euler-Lagrange equation
$$\frac{\delta S}{\delta q} = 0 \implies \frac{\partial L}{\partial q} = \frac{d}{dt} \frac{\partial L}{\partial \dot{q}}\tag{12}$$

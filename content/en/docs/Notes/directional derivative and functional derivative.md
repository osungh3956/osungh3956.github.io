---
title: "Directional Derivative & Functional Derivative"
---

## 1. Definition of Directional Derivative {#definition-of-directional-derivative .unnumbered}

Let $f : \mathbb{R}^n \to \mathbb{R}$. The directional derivative in the
direction of the $i$-th standard basis vector $\mathbf{e}_i$ is defined
as: 

$$ D_{\mathbf{e}_i} f = \frac{\partial f}{\partial x^i} $$

$$ = \lim_{h \to 0} \frac{f(\mathbf{x} + h \mathbf{e}_i) - f(\mathbf{x})}{h} $$

## 2. Linearity of Directional Derivative {#linearity-of-directional-derivative .unnumbered}

The directional derivative is linear. For a scalar $c$, we have:

$$ D_{c \mathbf{e}_i} f $$

$$ = \lim_{h \to 0} \frac{f(\mathbf{x} + h c \mathbf{e}_i) - f(\mathbf{x})}{h} $$
 
$$ = c D_{\mathbf{e}_i} f $$

For a combination of directions $\mathbf{e}_i$ and $\mathbf{e}_j$, we have:
 
$$ D_{\mathbf{e}_i + \mathbf{e}_j} f $$

$$ = \lim_{h \to 0} \frac{f(\mathbf{x} + h \mathbf{e}_i + h \mathbf{e}_j) - f(\mathbf{x})}{h} $$

$$ = \lim_{h \to 0}  \frac{f( (\mathbf{x} + h \mathbf{e}_j) + h \mathbf{e}_i ) - f(\mathbf{x} + h \mathbf{e}_j)}{h} + \frac{f(\mathbf{x} + h \mathbf{e}_j) - f(\mathbf{x})}{h} $$

$$ = \quad D_{\bsub{e}{i}} f \  + \  D_{\bsub{e}{j}} f $$ 

## 3. Directional Derivative in Arbitrary Direction {#directional-derivative-in-arbitrary-direction .unnumbered}

Let $\mathbf{v} = v^i \mathbf{e}_i$ be an arbitrary direction. The directional derivative in the direction $\mathbf{v}$ is given by:

$$ D_{\mathbf{v}} f = D_{v^i \mathbf{e}_i} f $$

$$ = v^i D_{\mathbf{e}_i} f $$

$$ = v^i \frac{\partial f}{\partial x^i} $$

$$ = \nabla f \cdot \mathbf{v}$$ 

,which represents the inner product and increment in $\mathbf{v}$-direction.

## 4. Functional Derivative {#functional-derivative .unnumbered}

If we replace the function $f$ with a functional $J$ and the direction $\mathbf{v}$ with $\delta y$, then the functional derivative is defined as: 

$$ \delta J = D_{\delta y} J $$
$$ = \int \mathrm{d}x \frac{\delta J}{\delta y}(x) \delta y(x) $$
$$ = \lim_{h \to 0} \frac{J[y + h \delta y] - J[y]}{h} $$

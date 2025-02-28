---
title: "Spherical Laplacian & Angular Momentum"
---

## 1. $\tilde{f}(x, y, z)$ & $f(r, \theta, \phi)$

The space of complex-coefficient polynomial functions of degree $l$ in $ℝ^3$, denoted as $P_l(ℝ^3)$, contains elements $f(x, y, z)$ which can be expressed as:
$$\tilde{f}(x, y, z) = \sum_{i+j+k=l} c_{ijk} x^i y^j z^k$$
Rewriting this function in spherical coordinates gives:
$$f(r, \theta, \phi) = r^l Y^l(\theta, \phi)$$

## 2. $Y^l(\theta, \phi)$ & $f(r, \theta, \phi)$

Since $Y^l(\theta, \phi) = f(r=1, \theta, \phi)$, the function $Y^l(\theta, \phi)$ can be interpreted as the restriction of $f$ to the surface of the unit sphere.

There is a one-to-one correspondence between $f$ and $Y^l$, meaning that for every function $f$, there exists a unique $Y^l$, and vice versa.

## 3. Harmonic Function

If a function $f$ satisfies $\Delta f = 0$, it is called a harmonic function of degree $l$, forming the vector space $H_l(ℝ^3)$.

Computing the Laplacian in spherical coordinates yields:
$$\Delta f = \frac{1}{r^2} \frac{\partial}{\partial r} ( r^2 \frac{\partial f}{\partial r} ) + \frac{1}{r^2 \sin \theta} \frac{\partial }{\partial \theta} ( \sin \theta \frac{\partial f }{\partial \theta} ) + \frac{1}{r^2 \sin^2 \theta} \frac{\partial^2 f }{\partial \phi^2}$$
Rewriting this expression:
$$\Delta f = \frac{\partial^2 f }{\partial r^2} + \frac{2}{r} \frac{\partial f}{\partial r} + \frac{1}{r^2} \Delta_{S^2} f$$
where
$$\Delta_{S^2} = \frac{\partial^2}{\partial \theta^2} + \cot \theta \frac{\partial}{\partial \theta} + \frac{1}{\sin^2 \theta} \frac{\partial^2}{\partial \phi^2}$$

Applying $f = r^l Y^l(\theta, \phi)$ and $\Delta f = 0$ results in:
$$\Delta_{S^2} Y^l(\theta, \phi) = -l(l+1) Y^l(\theta, \phi)$$

## 4. Spherical Harmonics Vector Space $\tilde{H}_l$

The set of all functions $Y^l(\theta, \phi)$ satisfying $\Delta_{S^2}Y^l(\theta, \phi) = -l(l+1)Y^l(\theta, \phi)$ forms the spherical harmonics vector space, denoted as $\tilde{H}_l$.

Since there is a one-to-one correspondence between $H_l(ℝ^3)$ and $\tilde{H}_l$, and because one-to-one corresponding vector spaces are isomorphic, the two vector spaces are isomorphic.

## 5. $\Delta_{S^2}$ & $\mathbf{L}$

Considering the operator $\Delta_{S^2}$ in the vector space of square-integrable functions, we note that $Y^l(\theta, \phi)$ is an eigenfunction of $\Delta_{S^2}$ with eigenvalue $-l(l+1)$.

Defining the angular momentum operator as $\mathbf{L^2} = -\hbar^2 \Delta_{S^2}$, we obtain:
$$\mathbf{L^2} Y^l_m(\theta, \phi) = \hbar^2 l(l+1) Y^l_m(\theta, \phi)$$
where the additional parameter $m$ arises from the further constraint:
$$L_z Y^l_m(\theta, \phi) = \hbar m Y^l_m(\theta, \phi)$$


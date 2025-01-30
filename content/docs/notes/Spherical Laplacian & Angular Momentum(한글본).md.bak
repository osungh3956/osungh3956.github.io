---
title: "Spherical Laplacian & Angular Momentum"
---

## 1. $\tilde{f}(x, y, z)$ & $f(r, \theta, \phi)$

Degree $l$의 $\mathbb{R}^3$ 위에서의 복소계수 다항함수 벡터공간
$P_l(\mathbb{R}^3)$의 원소 $f(x, y, z)$ 를 표현하면
$$\tilde{f}(x, y, z) = \sum_{i+j+k=l} c_{ijk} x^i y^j z^k$$ 이를 구면좌표계
함수로 나타내면 $$f(r, \theta, \phi) = r^l Y^l(\theta, \phi)$$

## 2. $Y^l(\theta, \phi)$ & $f(r, \theta, \phi)$

$Y^l(\theta, \phi) = f(r=1, \theta, \phi)$이므로, $Y^l(\theta, \phi)$는
함수 $f$를 단위구(unit sphere)의 표면으로 제한(restriction)하여 다룬
함수로 생각할 수 있다.

함수 $f$에 대해 함수 $Y^l$는 하나로 정해지고, 함수 $Y^l$에 대해 함수
$f$가 하나로 정해지므로 $f$와 $Y^l$은 일대일 대응한다.

## 3. harmonic function

함수 $f$가 $\Delta f = 0$이면 degree $l$의 조화함수(harmonic
function)이고, 이 또한 벡터공간 $H_l(\mathbb{R}^3)$을 이룬다.

함수 $f$를 구면좌표계로 변환하여 Laplacian을 계산하면
$$\Delta f = \frac{1}{r^2} \frac{\partial}{\partial r} ( r^2 \frac{\partial f}{\partial r} ) + \frac{1}{r^2 \sin \theta} \frac{\partial }{\partial \theta} ( \sin \theta \frac{\partial f }{\partial \theta} ) + \frac{1}{r^2 \sin^2 \theta} \frac{\partial^2 f }{\partial \phi^2}$$
이를 다시 정리하면
$$\Delta f = \frac{\partial^2 f }{\partial r^2} + \frac{2}{r} \frac{\partial f}{\partial r} + \frac{1}{r^2} \Delta_{S^2} f$$
여기서
$$\Delta_{S^2} = \frac{\partial^2}{\partial \theta^2} + \cot \theta \frac{\partial}{\partial \theta} + \frac{1}{\sin^2 \theta} \frac{\partial^2}{\partial \phi^2}$$

$f = r^l Y^l(\theta, \phi)$와 $\Delta f = 0$을 적용하면
$$\Delta_{S^2} Y^l(\theta, \phi) = -l(l+1) Y^l(\theta, \phi)$$

## 4. spherical harmonics vector space $\tilde{H}_l$

$\Delta_{S^2}Y^l(\theta, \phi) = -l(l+1)Y^l(\theta, \phi)$을 만족하는
모든 $Y^l(\theta, \phi)$ 함수들의 집합은 구면조화함수 집합으로 이 또한
벡터공간을 형성하며, 이를 $\tilde{H}_l$이라 한다.

$H_l(\mathbb{R}^3)$과 $\tilde{H}_l$은 일대일 대응(one-to-one
correspondence)이며, 일대일 대응하는 벡터공간은 동형(isomorphism)이므로,
두 벡터공간은 동형이다.

## 5. $\Delta_{S^2}$ & $\mathbf{L}$

Square integrable한 함수로 구성된 벡터공간에서의 선형연산자
$\Delta_{S^2}$를 생각하면, $Y^l(\theta, \phi)$는 $\Delta_{S^2}$의
고윳값이 $-l(l+1)$인 고유벡터(함수)이다.

$\mathbf{L}^2 = -\hbar^2 \Delta_{S^2}$라 정의하면 $\mathbf{L}$은 각운동량
연산자가 되고
$$\mathbf{L}^2 Y^l_m(\theta, \phi) = \hbar^2 l(l+1) Y^l_m(\theta, \phi)$$
이때, $m$은 $Y^l(\theta, \phi)$이 다음 조건을 하나 더 만족해야함을
의미한다. $$L_z Y^l_m(\theta, \phi) = \hbar m Y^l_m(\theta, \phi)$$

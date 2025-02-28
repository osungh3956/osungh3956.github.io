---
title        : "🚀 QFT 없이 중성미자 진동 연구 시작하기"
date         : 2025-01-30
description  : "진동연구 시작하기"
draft        : false
tags         : ["QFT", "연구구", "Blog", "중성미자 neutrino"]
categories   : ["Physics"]
contributors : []
math         : true  # MathJax 지원 (수식 필요 시)
seo          :
  title      : "" # custom title (optional)
  description: "" # custom description (recommended)
  canonical  : "" # custom canonical URL (optional)
  robots     : "" # custom robot tags (optional)
---

## 1. QFT가 필요 없는 이유
- 중성미자 진동의 핵심:

섭동론 (Sakurai 5장)

입자물리학 기초 (Griffiths 2장, 9장)

PMNS 행렬과 진동 공식

- QFT의 역할:

중성미자 질량 생성 메커니즘 (Seesaw mechanism), 비표준 상호작용 (NSI) 이론적 배경 
→ 초기 연구 단계에서는 필수 아님

## 2. QFT 없이 할 수 있는 연구 주제 예시
- 진동 확률의 에너지/거리 의존성 분석

- 실험 데이터 (Daya Bay, IceCube)와 이론값 비교

- PMNS 행렬 파라미터의 최신 측정값 업데이트

- 진동에 대한 교육용 시뮬레이션 도구 개발

## 3. 📚 QFT 없이 전략적 학습하는 방법
A. 핵심 교재 집중 공략
[ Sakurai "Modern Quantum Mechanics" ]

5장 (섭동론) → 진동 확률 공식 유도

3장 (각운동량) → SU(2) 군 이해

[ Griffiths "입자물리학" ]

2장 (중성미자 역사)

9장 (표준모형과 중성미자)

[ Bilenky "Neutrino Physics" ]

4장 (진동 공식)

부록 B (PMNS 행렬 파라미터화)

B. QFT 대체 학습법
- 필요한 QFT 개념만 골라 학습:

Tong의 QFT 강의노트에서 1장(양자화), 5장(페르미온)만 선택
학습 팁:
* Dirac 방정식 → 중성미자 질량 항 이해  
* Feynman diagram → 중성미자 산란 과정 시각화  

 - QFT 없이 이해 가능한 예시:

중성미자 진동은 양자역학의 섭동론으로 설명 가능

PMNS 행렬은 행렬 대수만으로 충분히 분석 가능

## 4. 🛠 QFT 없이 연구를 시작하는 도구
A. 시뮬레이션 코드 활용
- GLoBES: 중성미자 진동 시뮬레이션 도구

## 설치 및 예제 실행  
git clone https://www.mpi-hd.mpg.de/personalhomes/globes/  
cd examples  
./run_all.sh 

Python 예제:
import numpy as np  
## 2-flavor 진동 확률 계산  
def P_ee(L, E, theta, dm2):  
    return 1 - np.sin(2*theta)**2 * np.sin(1.267*dm2*L/E)**2 

B. 실험 데이터 분석
- Daya Bay 데이터셋:

공식 사이트에서 데이터 다운로드

sin²2θ₁₃ 값 추정 연습

- IceCube 데이터:

IceCube 데이터 포털 활용

에너지 분포 히스토그램 작성

## 5. 🎯 QFT 없이 달성 가능한 목표
- 6개월 후 체크리스트
Sakurai 5장의 섭동론으로 2-flavor 진동 확률 유도 가능

Griffiths 표 9.2의 실험값을 사용해 PMNS 행렬 직접 구성

GLoBES로 간단한 진동 시뮬레이션 실행

- 1년 후 목표
자신만의 "진동 확률 계산기" Python 코드 개발

국내 학회에서 10분 발표 (예: 한국물리학회 춘계학회)

## 💡 핵심 조언
QFT는 연구의 깊이를 더하는 도구일 뿐, 시작을 막는 장벽이 아닙니다.
"나는 QFT를 배우는 것이 아니라, QFT로 중성미자의 비밀을 배운다."

오늘부터 이 문구를 되새기세요:
"QFT 없이도 중성미자 진동의 아름다움을 탐구할 수 있다."
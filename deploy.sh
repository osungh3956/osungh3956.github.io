#!/bin/bash
# 프로젝트 루트 디렉토리에서 실행

# Hugo 사이트 빌드
hugo --minify

# public 디렉토리로 이동
cd public

# Git 초기화 및 설정
git init
git checkout -b main
git config user.name "Your Name"
git config user.email "your.email@example.com"

# 모든 변경사항 스테이징
git add .

# 커밋
git commit -m "Deploy site $(date)"

# 원격 저장소 추가 및 푸시
git remote add origin git@github.com:osungh3956/osungh3956.github.io.git
git push -f origin main:gh-pages

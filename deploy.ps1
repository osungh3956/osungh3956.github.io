# PowerShell 배포 스크립트 for Hugo Doks GitHub Pages
# 모든 변경 사항을 반영하고 배포 실행

# 실행 중 오류 발생 시 중단
$ErrorActionPreference = "Stop"

# Git 저장소 확인
if (-Not (Test-Path ".git")) {
    Write-Host "Error: This directory is not a Git repository." -ForegroundColor Red
    exit 1
}

# 최신 변경 사항 가져오기 (충돌 방지)
Write-Host "Pulling latest changes from GitHub..." -ForegroundColor Cyan
git pull origin main --rebase

# Git 상태 확인
$gitStatus = git status --porcelain

if ($gitStatus -eq "") {
    Write-Host "No changes detected. Exiting." -ForegroundColor Yellow
    exit 0
}

# 모든 변경된 파일 추가
Write-Host "Staging all changes..." -ForegroundColor Cyan
git add .  # 모든 변경 사항을 포함하여 추가

# 자동 커밋 메시지 생성
$commitMessage = "Update site content - $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Write-Host "Committing changes with message: $commitMessage" -ForegroundColor Cyan
git commit -m $commitMessage

# GitHub에 푸시
Write-Host "Pushing changes to GitHub..." -ForegroundColor Cyan
git push origin main

Write-Host "Deployment complete! GitHub Actions will now build and deploy your site." -ForegroundColor Green

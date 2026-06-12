# Push automatique vers GitHub
param(
    [string]$Message = "Update: $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
)

git add .
$status = git status --porcelain
if (-not $status) {
    Write-Host "Rien a committer."
    exit 0
}

git commit -m $Message
git push origin main
Write-Host "Push termine : https://github.com/Abdelbarben/bankingbackend-main"

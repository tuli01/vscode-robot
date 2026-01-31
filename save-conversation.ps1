# Save Conversation to GitHub
# Usage: .\save-conversation.ps1 -Title "Session Title" -Content "Your Q&A content"

param(
    [Parameter(Mandatory=$true)]
    [string]$Title,
    
    [Parameter(Mandatory=$true)]
    [string]$Content
)

$date = Get-Date -Format "yyyy-MM-dd"
$filename = "$date-$($Title -replace '\s+', '-').md"

# Create the markdown content
$markdown = @"
# $Title
**Date:** $(Get-Date -Format "MMMM dd, yyyy")

$Content

---
*Saved via GitHub Copilot workflow*
"@

# Save to repository
$repoPath = "$env:USERPROFILE\Documents\vscode-setup-docs"
Set-Location $repoPath

# Write file
$markdown | Out-File -FilePath $filename -Encoding UTF8

# Git operations
git add $filename
git commit -m "Add conversation: $Title"
git push origin main

Write-Host "✓ Conversation saved and pushed to GitHub!" -ForegroundColor Green
Write-Host "File: $filename" -ForegroundColor Cyan
Write-Host "Repository: https://github.com/tuli01/vscode-robot" -ForegroundColor Cyan

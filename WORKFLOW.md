# Conversation Saving Workflow

## Simple Method: Just Ask Me!

At the end of any important conversation, simply say:
- **"Save this conversation to GitHub"**
- **"Add this session to the repository"**
- **"Document this Q&A on GitHub"**

I'll create a markdown file with the conversation and push it to your repository automatically.

---

## Manual Method: Using PowerShell Script

If you want to save content manually, use the `save-conversation.ps1` script:

### Usage:
```powershell
cd C:\Users\NA\Documents\vscode-setup-docs

.\save-conversation.ps1 -Title "Your Session Title" -Content @"
## Question 1
Your question here

**Answer:** Your answer here

## Question 2
Another question

**Answer:** Another answer
"@
```

### Example:
```powershell
.\save-conversation.ps1 -Title "Python Package Installation" -Content @"
## Q: How do I install numpy?
**A:** Run: pip install numpy

## Q: How do I check installed packages?
**A:** Run: pip list
"@
```

---

## Repository Location

- **Local Path:** `C:\Users\NA\Documents\vscode-setup-docs`
- **GitHub URL:** https://github.com/tuli01/vscode-robot
- **Files:** All conversations are saved as markdown files with dates

---

## Quick Commands

```powershell
# View your repository
cd C:\Users\NA\Documents\vscode-setup-docs

# List all saved conversations
Get-ChildItem *.md

# Open repository on GitHub
Start-Process "https://github.com/tuli01/vscode-robot"

# Pull latest changes (if editing on GitHub)
git pull

# Push manual changes
git add .
git commit -m "Your message"
git push origin main
```

---

## Tips

1. **Ask me to save important conversations** - I'll format them nicely
2. **Use descriptive titles** when saving manually
3. **The script automatically adds dates** to filenames
4. **All conversations are versioned** with git history

---

*Last updated: January 31, 2026*

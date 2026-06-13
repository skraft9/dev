# Notes for Git

---

### Fetch all tags
git fetch --tags

### Check Current version checked out
git describe --tags

### Check Current Branch
git branch --show-current

### Checkout new version
git checkout v9.3.5

### Check Current version checked out
git describe --tags

### Get DIFF of File Change
git diff app/Lib/Tools/TmpFileTool.php

### Clean Slate
git reset --hard v9.3.5 && git clean -fdx

### Make sure nothing experimental is staged/modified
git status            

### Safety net for any stray edits (drop later if unneeded)
git stash -u                       
### Land on the 2.5.40 release as your base
git checkout v2.5.40                # detached HEAD at the tag
### create your feature branch from it:
git checkout -b feature/mass-event-tagging

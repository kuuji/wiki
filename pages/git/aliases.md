# Convenient git aliases

```
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.undo "reset --hard"
git config --global alias.changes "diff --name-status -r"
git config --global alias.diff "diff --stat -r"
git config --global alias.br branch
git config --global alias.tree "log --graph --oneline --all --pretty=format:'%C(yellow)%h%Creset -%Cred%d%Creset %s %Cgreen%cr%Creset %Cblue%an%Creset %gn'"
```

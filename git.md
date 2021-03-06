# GIT

### How to find out where is my global config file
```
git config --global --edit
```
- it will open an editor, where you can see the path

## Aliases

### SQUASH
- in git config:
- squashes "n" last commits, does not ignore merge commits
- usage: `git squash 4`
```
[alias]
squash = "!f(){ git reset --soft HEAD~${1} && git commit --edit -m\"$(git log --format=%B --reverse HEAD..HEAD@{1})\"; };f"
```
- With merge commits better to use interactive rebase
  - `git rebase -i HEAD~4` // 4 is number without merge commits
  - first leave as `pick`
  - others set to `squash`
  - save and close editor
  - update commit message
  - save and close editor

### FIX
- when you need just to add some fixes without creating a commit message
- usage: `git fix`
- has to be followed by: `git push -f`
```
[alias]
fix = "!f(){ git add . && git commit --amend --no-edit && echo \"Fixes added\"; };f"
```

## Set ssh auth for windows git bash
- https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh
- test your ssh with
  - `ssh -T git@github.com`
- if you can't push despite successful test check url for remote
  - `git remote -v`
- you can set remote url with
  - `git remote set-url origin git@github.com:<Username>/<Project>.git`
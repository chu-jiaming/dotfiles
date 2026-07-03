# Dotfiles

![terminal](./assets/terminal.png)

## Daily workflow

```zsh
chezmoi edit ~/.zshrc
chezmoi diff
chezmoi apply -nv
chezmoi apply -v
chezmoi cd
git add .
git commit -m "Update dotfiles"
git push
```

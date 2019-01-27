Install https://github.com/twpayne/chezmoi

Clone this into ~/.local/share/chezmoi

## Add file:

```
chezmoi add ~/.config/alacritty/alacritty.yml
```

Apply the changes

```
chezmoi -v apply
```

Commit:

```
chezmoi cd
git add -A
git ci -m ".."
```

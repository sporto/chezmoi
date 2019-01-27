Install https://github.com/twpayne/chezmoi

Clone this into ~/.local/share/chezmoi

## Add file:

```
chezmoi add ~/.config/alacritty/alacritty.yml
```

Change permission

```
chmod 700 ./chezmoi/
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

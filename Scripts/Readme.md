
# Scripts

## Clean-up git branches
```bash
!func(){ git remote prune origin; \
    git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D; \
}; func
```

## Xcode project sort script

- [Article](https://stackoverflow.com/questions/31532460/how-to-automatically-sort-by-name-in-xcode-project/)
- [Script](https://github.com/WebKit/webkit/blob/main/Tools/Scripts/sort-Xcode-project-file)

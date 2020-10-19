# iOS

## Clean-up
- 🔨 &nbsp; [Periphery](https://github.com/peripheryapp/periphery): Unused code cleanup tool.
- 🔨 &nbsp; [LSUnusedResources](https://github.com/tinymind/LSUnusedResources): Unused assets cleanup tool.
- 🔨 &nbsp; [Abandoned-strings](https://github.com/ijoshsmith/abandoned-strings): Unused strings cleanup tool.

## Utils
- 🔨 &nbsp; [xcdiff](https://github.com/bloomberg/xcdiff): xcproject comparison tool.
- 🔨 &nbsp; [MakeAppIcon.com](https://makeappicon.com/): All sizes icons exporter for Apps.
- 🔨 &nbsp; [Quicktype.io](https://app.quicktype.io/): Model print from json strings.
- 🔨 &nbsp; [Diagrams.net](https://app.diagrams.net/): Flowchart diagrams maker.

## Practices
- 📝 &nbsp; [Markdown Basic Syntax](https://www.markdownguide.org/basic-syntax/)
- 📝 &nbsp; [Ray Wenderlich Swift Best Practices](https://github.com/raywenderlich/swift-style-guide)

<br />

# Bash Scripts

## Clean-up git branches
```bash
!func(){ git remote prune origin; \
    git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D; \
}; func
```

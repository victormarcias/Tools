# iOS

## Clean-up
- 🔨 &nbsp; Unused code cleanup tool: [Github](https://github.com/peripheryapp/periphery)
- 🔨 &nbsp; Unused assets cleanup tool: [Github](https://github.com/tinymind/LSUnusedResources)
- 🔨 &nbsp; Unused strings cleanup tool: [Github](https://github.com/ijoshsmith/abandoned-strings)

## Utils
- 🔨 &nbsp; xcproject comparison tool: [Github](https://github.com/bloomberg/xcdiff)
- 🔨 &nbsp; App all size icons exporter: [Website](https://makeappicon.com/)
- 🔨 &nbsp; Model print from json strings: [Website](https://app.quicktype.io/)
- 🔨 &nbsp; Flowchart diagrams maker: [Website](https://app.diagrams.net/)

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
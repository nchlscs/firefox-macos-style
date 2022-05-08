# Firefox macOS style
Firefox style inspired by Safari. Only works properly on macOS.

![Preview](https://raw.githubusercontent.com/nchlscs/firefox-macos-style/main/Preview.jpg)

## Installing

1. Open terminal and run the following script. It will download and place the contents of Sources folder to Firefox user folder. **Attention!** This will overwrite the current Firefox style, back it up first, if needed.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/nchlscs/firefox-macos-style/main/install.sh)"
```

2. Manually drag the new tab button to the navigation toolbar.

## Upgrading

To upgrade to the latest version, run the script above again.

## Uninstalling

Remove `chrome` folder from the Firefox user folder.

## Centering URL bar

Centering URL bar can be done in two ways:

1. Use the same number of toolbar items on both sides of the URL bar.
1. Uncomment experimental CSS in `userChrome.css` and manually set dimensions in `center-url-bar.css` for your set of toolbar items.
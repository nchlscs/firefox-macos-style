# Firefox profile folder path
firefox_path=$(ls -d ~/Library/Application\ Support/Firefox/Profiles/* | grep "release")

# Download a repository
curl -LJO https://github.com/nchlscs/firefox-macos-style/archive/refs/heads/main.zip

# Unzip the repository
unzip "firefox-macos-style-main.zip"
rm "firefox-macos-style-main.zip"

# Remove the installed Firefox style
rm -rf "$firefox_path/chrome"
rm -f "$firefox_path/user.js"

# Install new style
mv "firefox-macos-style-main/Sources/chrome" "$firefox_path/chrome"
mv "firefox-macos-style-main/Sources/user.js" "$firefox_path/user.js"

# Restart Firefox
osascript -e 'quit app "Firefox"'
osascript -e 'tell application "Firefox" to activate'

# Remove temp files
rm -r "firefox-macos-style-main"
rm "$firefox_path/user.js"

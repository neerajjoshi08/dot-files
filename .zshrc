autoload -Uz compinit
compinit

unsetopt BEEP
setopt NO_LIST_BEEP
setopt AUTO_LIST
setopt NO_AUTO_MENU
setopt NO_MENU_COMPLETE

# Local binaries
export PATH=$PATH:$HOME/.local/bin/

# Android SDK paths
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/36.0.0
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin

# Node & npm paths
export PATH=$PATH:$HOME/.nvm/versions/node/v26.12.1/bin/

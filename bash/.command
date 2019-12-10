export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# ANDROID COMMAND LINE TOOLS
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:/opt/gradle/gradle-5.6.1/bin
export PATH=${PATH}:$HOME/Android/Sdk/build-tools/29.0.2
export ANDROID_HOME=$ANDROID_SDK_ROOT

# FLUTTER SDK
export PATH=$PATH:$HOME/flutter/bin

# FZF for vim plugin
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

# DOTNET root directory
export DOTNET_ROOT=/usr/share/dotnet

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

set -x GO_PATH "$HOME/dev/go/bin/"
set -x FLUTTER_PATH "$HOME/dev/flutter/bin"
set -x ANDROID_PATH "$HOME/dev/Android/Sdk/cmdline-tools/latest/bin/"
set -x ANDROID_STUDIO "$HOME/dev/android-studio/bin/"
set -x LOCAL_BIN "$HOME/.local/bin"
set -x DART_BIN "$HOME/.pub-cache/bin"
set -x HASKELL_BIN "$HOME/.ghcup/bin"
set -x HLS_BIN "$HOME/.ghcup/hls/2.9.0.1/bin"

# Add all paths to Fish's PATH variable
set -x PATH $PATH \
    $GO_PATH \
    $FLUTTER_PATH \
    $ANDROID_PATH \
    $ANDROID_STUDIO \
    $LOCAL_BIN \
    $DART_BIN \
    $HASKELL_BIN \
    $HLS_BIN

#!/usr/bin/env bash

echo "
asdf_setup_fluter_environment() {
  local flutter_path
  flutter_path=\"\$(asdf which flutter 2>/dev/null)\"

  if [[ -n \"\$flutter_path\" ]] && [[ -f \"\$flutter_path\" ]]; then
    export FLUTTER_ROOT
    FLUTTER_ROOT=\"\$(dirname \"\$(dirname \"\$flutter_path\")\")\"

    export DART_ROOT
    DART_ROOT=\"\$FLUTTER_ROOT/bin/cache/dart-sdk\"
  fi
}

autoload -U add-zsh-hook
add-zsh-hook precmd asdf_setup_fluter_environment
"

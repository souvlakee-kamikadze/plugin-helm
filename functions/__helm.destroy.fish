function __helm.destroy
  for ab in $__helm_plugin_abbreviations
      abbr -e $ab
  end
  set -Ue __helm_plugin_abbreviations
  set -Ue __helm_plugin_initialized
end
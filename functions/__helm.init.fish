function __helm.init
  function __helm.create_abbr -d "Create helm plugin abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]
    abbr -a $name $body
    set -a __helm_plugin_abbreviations $name
  end

  set -q __helm_plugin_initialized; and exit 0

  set -U __helm_plugin_abbreviations

  # helm abbreviations

  # Commands
  __helm.create_abbr h           helm
  __helm.create_abbr hi          helm install
  __helm.create_abbr hin         helm install --namespace
  __helm.create_abbr hui         helm upgrade --install
  __helm.create_abbr huin        helm upgrade --install --namespace
  __helm.create_abbr hu          helm uninstall
  __helm.create_abbr hun         helm uninstall --namespace
  __helm.create_abbr hl          helm ls
  __helm.create_abbr hsc         helm show chart
  __helm.create_abbr hra         helm repo add
  __helm.create_abbr hru         helm repo update
  __helm.create_abbr hrl         helm repo list
  __helm.create_abbr hdu         helm dep update
  __helm.create_abbr hsr         helm search repo

  # Cleanup declared functions
  functions -e __helm.create_abbr

  # Mark helm plugin as initialized
  set -U __helm_plugin_initialized (date)
end
function _helm_install --on-event helm_install
  __helm.init
end

function _helm_update --on-event helm_update
  __helm.reset
end

function _helm_uninstall --on-event helm_uninstall
  __helm.destroy
end
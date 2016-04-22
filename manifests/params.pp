class supervisor::params {
  case $::osfamily {
    'debian': {
      $conf_file      = '/etc/supervisor/supervisord.conf'
      $conf_dir       = '/etc/supervisor'
      $conf_ext       = '.ini'
      $system_service = 'supervisor'
      $package        = 'supervisor'
      $provider       = 'apt'
    }
    'redhat': {
      $conf_file      = '/etc/supervisord.conf'
      $conf_dir       = '/etc/supervisord.d'
      $conf_ext       = '.ini'
      $system_service = 'supervisord'
      $package        = 'supervisor'
      $provider       = 'yum'
    }
    default: {
      fail("Unsupported platform: ${::osfamily}")
    }
  }
}

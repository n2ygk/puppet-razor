# Class: razor::params
#
# Contains system-specific parameters
#
# Parameters:
#   * client_package_name (string): Package name for Razor Client
#   * server_package_name (string): Package name for Razor Server
#   * torquebox_package_name (string): Package name for Torquebox
#   * server_config_file (string): Path to configuration file for Razor Server
#   * server_service_name (string): Name of the service that manages Razor Server
#   * microkernel_url (string): URL of where to download Microkernel (tarball). Set undef to skip.
#   * repo_store (string): Path where microkernel and OS images are stored.
#   * server_http_port (string): HTTP server port name/number
#   * server_https_port (string): HTTPS server port name/number
#
class razor::params {
  $client_package_name    = 'razor-client'
  $server_package_name    = 'razor-server'
  $torquebox_package_name = 'razor-torquebox'

  $server_config_file  = '/etc/razor/config.yaml'
  $server_service_name = 'razor-server'

  $root_dir = '/opt/razor'
                      # /opt/puppetlabs/server/apps/razor-server on Razor Server >= 1.4.0
  $data_dir = '/opt/razor'
                      # /opt/puppetlabs/server/data/razor-server on Razor Server >= 1.4.0

  $microkernel_url   = 'http://links.puppetlabs.com/razor-microkernel-latest.tar'
  $repo_store        = '/var/lib/razor/repo-store/'
                      # /opt/puppetlabs/server/data/razor-server/repo on Razor Server >= 1.4.0
  $server_http_port  = 8080
  $server_https_port = 8081
}

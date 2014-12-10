# == Class: php::extension::xhprof::params
#
# Defaults file for the xhprof PHP extension
#
# === Parameters
#
# No parameters
#
# === Variables
#
# [*ensure*]
#   The version of the package to install
#   Could be "latest", "installed" or a pinned version
#   This matches "ensure" from Package
#
# [*package*]
#   The package name in your provider
#
# [*provider*]
#   The provider used to install the package
#
# [*install_dir*]
#   The path of the installed xhprof.so binary
#
# [*inifile*]
#   The path to the extension ini file
#
# [*settings*]
#   Hash with 'set' nested hash of key => value
#   set changes to agues when applied to *inifile*
#
# === Examples
#
# No examples
#
# === Authors
#
# Christian "Jippi" Winther <jippignu@gmail.com>
#
# === Copyright
#
# Copyright 2012-2013 Christian "Jippi" Winther, unless otherwise noted.
#
class php::extension::xhprof::params {
  $ensure   = $php::params::ensure
  $package  = 'xhprof-beta'
  $provider = 'pecl'
  $inifile  = "${php::params::config_root_ini}/xhprof.ini"
  $settings = [
    'set ".anon/extension" "xhprof.so"'
  ]
}
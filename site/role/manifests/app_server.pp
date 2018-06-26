class role::app_server {
  include profile::web
  include profile::base
  includes profile::app
 }

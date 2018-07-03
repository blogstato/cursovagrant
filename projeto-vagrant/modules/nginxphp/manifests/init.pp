class nginxphp(
	$server_name = 'localhost',
	$doc_root = '/vagrant',
){

package { ["nginx", "php5-fpm"  , "php5-cli", "php5-curl" ]:
  	ensure => "installed"
  	}

  service { "nginx":
	ensure => running,
	enable => true,
	require => Package["nginx"],
 	}
	
 service { "php5-fpm":
	ensure => running,
	enable => true,
	require => Package["php5-fpm"],
 	}

 file { "/etc/nginx/sites-available/default":
	ensure => 'present',
	content => template("nginxphp/vhost.erb"),
	require => Package['nginx'],
	notify => Service['nginx'],
	}

}

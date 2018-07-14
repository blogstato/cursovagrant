exec {'apt-get update':
	command => "/usr/bin/apt-get update",
}

package { ["vim", "curl", "git"]:
	ensure	=> installed,
	require => Exec["apt-get update"],
}

class { "nginxphp":
	doc_root => "/vagrant/web/server1",
	server_name => 'server1',
	require => Exec["apt-get update"],

}



notice("Seu ip é $ipaddress_eth0")
	


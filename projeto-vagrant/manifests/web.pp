#$system_packages = ['vim', 'curl', 'git']

exec { "apt-get update":
	command => "/usr/bin/apt-get update",
}

package { ["vim", "curl", "git"]:
	ensure => installed,
}

class { "nginxphp":
	server_name => $ipaddress_eth1,
	doc_root => "/vagrant/web",
	require => Exec["apt-get update"],
}



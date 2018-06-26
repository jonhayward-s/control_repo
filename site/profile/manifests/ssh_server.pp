class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCkSayus6i3bp3qF2WlbKtl+Vc7FJDhHvtDHn3KeKv8HL74u8hjdk6km/rkV/x6SlDR5X6hpA65Kh9haf5tMeS85uJYzeSR7NS4m6V/lIuCtep/uzoZoe5ynm9Bo3CqtUpm7VKlOafxOCAYw/vwKPCSDWk3FODvz7wxfhaife8rxCLnDAy+C7YAel768MshPZgDqOeDrCJ+7xBPHr6BvD9u/9FP83Ls5LuhbFtKucyFGuoucKU80sVjcGOjc6utEH3j26IwsBMgbn+8GLjcbht+CgKNioLiCAwv/6xzmn9mp3KrEoW/tLc+ah4IRhXuilwtuwbQ4m1pMLYNrHCCwqKl',
	}  
}

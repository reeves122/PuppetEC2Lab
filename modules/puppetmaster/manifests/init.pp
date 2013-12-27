class puppetmaster {

  cron { git_pull :
    command => "cd /etc/puppet/;/usr/bin/git pull",
    user    => root,
    minute  => '*/1'
    }


}

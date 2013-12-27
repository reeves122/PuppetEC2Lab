class puppetmaster {

  cron { git_pull :
    command => "cd /etc/puppet/;git pull",
    user    => root,
    minute  => '*/1'
    }


}

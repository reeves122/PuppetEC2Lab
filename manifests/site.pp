node /^jr-puppet/ {
 include osbase
 include puppetmaster
}

node /^jr-template/ {
  include osbase
  include amibase
}



node /^jr-puppet/ {
 include osbase
 include osbase::puppetagent
 include puppetmaster
}

node /^jr-template/ {
  include osbase
  include osbase::puppetagent
  include amibase
}

node default {
  include osbase
  include osbase::puppetagent
} 



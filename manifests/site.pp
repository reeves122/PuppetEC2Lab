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

node /^jr-node0[1-5]/ {
  include osbase
  include osbase::puppetagent
}

node /^jr-mysql/ {
  include osbase
  include osbase::puppetagent
  include mysql
}

node default {
  include osbase
  include osbase::puppetagent
} 



resource_name :mongodb

#property :gpgcheck, Boolean, default: true
#property :gpgkey, String, default: 'https://www.mongodb.org/static/pgp/server-3.2.asc'
#property :description, String, default: 'MonoDB Repository'
#property :baseurl, String, default: 'https://repo.mogodb.org/yum/redhat/$releasever/mogodb-org/3.2/x86_64/'

action :create do
  package 'mongodb-org'
  service 'mongod' do
    action [ :enable, :start ]
  end
end

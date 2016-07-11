resource_name :mongodb

action :create do
  yum_repository 'mongodb-org-3.2' do
    baseurl 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.2/x86_64/'
    description 'MongoDB Repository'
    gpgcheck true
    gpgkey 'https://www.mongodb.org/static/pgp/server-3.2.asc'
    enabled true
    action :create
  end

  package 'mongodb-org'

  service 'mongod' do
    action [:enable, :start]
  end
end

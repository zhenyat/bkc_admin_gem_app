class User < ActiveRecord::Base
  enum role: ['guest', 'manager', 'admin', 'sysadmin']
  enum status: ['active', 'archived']
end

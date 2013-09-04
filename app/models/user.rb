class User < ActiveRecord::Base
  
  has_many :comments
  has_many :versions
  has_many :assertions

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end

class Utility < ActiveRecord::Base
    has_many :versions
    has_many :assertions
    has_many :comments
end

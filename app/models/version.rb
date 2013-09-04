class Version < ActiveRecord::Base
    belongs_to :utility
    belongs_to :user
    has_many :comments
    has_many :assertions
end

class Project < ActiveRecord::Base
  attr_accessible :name ,:user_id
  has_many :tasks , :dependent => :destroy
  belongs_to :user
end

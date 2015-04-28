class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  devise :cas_authenticatable, :trackable

  has_many :issues
  has_many :resolved_issues, class_name: "Issue"
end

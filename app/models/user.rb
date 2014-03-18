class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable
  # :registerable has been removed to make the site by invitation only
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :invitable
end

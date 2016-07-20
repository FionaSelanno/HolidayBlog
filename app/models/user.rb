class User < ActiveRecord::Base
  has_many :posts

  def handle
   self.email.split('@')[0]
  end
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable and :omniauthable

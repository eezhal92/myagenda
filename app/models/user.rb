class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #, :confirmable

  has_many :agendas 

  belongs_to :role


  # @parama = string (administrator or general_user)
  def has_role?(role)
   	self.role.name == role   	
  end
end

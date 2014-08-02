class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #, :confirmable

  has_many :agendas 
  belongs_to :role
  before_create :set_default_role

  # @parama = string (administrator or general_user)
  def has_role?(role)
   	self.role.name == role   	
  end

  private
    def set_default_role
      self.role ||= Role.find_by_name('general_user')
    end
end

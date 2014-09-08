class User < ActiveRecord::Base
  enum :role => [:user, :architect, :admin]
  after_initialize :set_default_role, :if => :new_record?
    
  def set_default_role
    self.role ||= :user
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:account_number]
         
  def email_required?
    false
  end
  
  def email_changed?
    false
  end
  
end

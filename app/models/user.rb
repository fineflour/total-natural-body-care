class User  < ActiveRecord::Base 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :user
  #attr_accessible :email, :password, :password_confirmation, :remember_me, :encrypted_password
  ROLES = [:user, :admin]
  enum role: ROLES
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  def admin?
    true if self.role == 1 || self.role =="admin"
  end
end

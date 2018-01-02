class User < ActiveRecord::Base
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  #
  #                # making dc_office obsolete
  ROLES = [:user, :admin, :dc_office, :dc_admin]
  #                    enum role: ROLES
  #                      after_initialize :set_default_role, :if => :new_record?
  #                        has_many :local_materials
  #                          has_many :distribution_centers, :through => :user_distribution_centers
  #                            has_many :user_distribution_centers, :dependent => :destroy
  #
  #                              def set_default_role
  #                                  self.role ||= :user
  #                                    end
end

class Contact < ApplicationRecord
  SUBJECT = ['Appointment', 'Nutritional Counsel', 'Health Question', 'General Question']
  validates_presence_of :name, :email, :phone, :subject
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }

end

class Contact < ActiveRecord::Base
	belongs_to :user
  has_many :contact_for_deals, :dependent => :destroy

  validates :full_name,     presence: true
  validates :email,         presence: true
  validates :phone_number,  presence: true
  validates :job_title,     presence: true
  validates :company,       presence: true
end

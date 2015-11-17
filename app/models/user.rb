class User < ActiveRecord::Base

  has_many :contacts,
    primary_key: :id,
    foreign_key: :user_id,
    dependent: :destroy,
    class_name: "Contact"

  has_many :contact_shares,
    primary_key: :id,
    foreign_key: :user_id,
    dependent: :destroy,
    class_name: "ContactShare"

  has_many :shared_contacts,
    through: :contact_shares,
    source: :contact

  validates :user_name, presence: true, uniqueness: true

end

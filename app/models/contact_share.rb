class ContactShare < ActiveRecord::Base

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "User"

  belongs_to :contact,
    primary_key: :id,
    foreign_key: :contact_id,
    class_name: "Contact"

  validates :user_id, uniqueness: {scope: :contact_id}
  validates :contact_id, :user_id, presence: true

end

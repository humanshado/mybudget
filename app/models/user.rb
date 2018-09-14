class User < ApplicationRecord

  has_many :incomes, dependent: :destroy
  has_many :expenses, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates_presence_of :first_name, :last_name, :email, :password_digest
  validates_uniqueness_of :email
  validates_length_of :email, maximum: 255, format: { with: VALID_EMAIL_REGEX }
  validates_confirmation_of :password

  has_secure_password

  def self.new_guest
    new(first_name: "Guest",
        last_name: "Guest",
        email: "#{Time.now}@notevenreal.com",
        password_digest: 'notevenreal',
        guest: true)
  end

  def guest?
    email.include?('notevenreal.com')
  end

  def username
    guest ? "Guest" : first_name
  end

  def move_to(user)
    incomes.update_all(user_id: user.id)
    expenses.update_all(user_id: user.id)
  end

end

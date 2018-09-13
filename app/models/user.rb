class User < ApplicationRecord
  # before_save { self.email = email.downcase }

  has_many :incomes, dependent: :destroy
  has_many :expenses, dependent: :destroy

  attr_accessor :first_name, :last_name, :email, :password, :password_confirmation

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  # validates :email, presence: true, uniqueness: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, unless: :guest?
  # validates :password, presence: true, length: { minimum: 6 }

  validates_presence_of :first_name, :last_name, :email, :password_digest, unless: :guest?
  validates_uniqueness_of :email, allow_blank: true
  validates_confirmation_of :password

  # override has_secure_password to customize validation
  require 'bcrypt'
  attr_reader :password
  include ActiveModel::SecurePassword::InstanceMethodsOnActivation

  # override has_secure_password to customize validation until Rails 4.
  require 'bcrypt'
  attr_reader :password
  include ActiveModel::SecurePassword::InstanceMethodsOnActivation


  def self.new_guest
    new { |u| u.guest = true }
  end

  def name
    guest ? "Guest" : user.first_name
  end

  def move_to(user)
    incomes.update_all(user_id: user.id)
    expenses.update_all(user_id: user.id)
  end

end

class User < ActiveRecord::Base

  before_create :encrypt_password

  validates :username, :password, presence: true
  validates :username, :uniqueness => {:case_sensitive => false}

  has_many :decks, :through => :rounds
  has_many :rounds

  def self.authenticate(args)
    user = self.find_by_username(args[:username])
    if user
      temp_encryption = Digest::SHA1.hexdigest("#{args[:password]}")
      user.password == temp_encryption ? user : nil
    end
  end

  def encrypt_password
    encrypted_password = Digest::SHA1.hexdigest("#{password}")
    self.password = encrypted_password
    password = nil
  end

end

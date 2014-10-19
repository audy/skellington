class User < Sequel::Model

  attr_accessor :password

  before_save do
    encrypt_password
    super
  end

  private

  def encrypt_password
    self[:encrypted_password] = BCrypt::Password.create(self.password)
  end

end

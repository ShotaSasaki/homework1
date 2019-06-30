class User < ApplicationRecord
  has_many :statuses
  has_many :friendships

  def encrypt_password
    if self.password.present?
      self.password = Digest::SHA2.hexdigest(self.password)
    else
      self.password = self.password_was
    end
  end

  def registered?
    # ここを考えて下さい。email/passwordで認証できれば true を認証できなければ falseを戻します。
    # さらに、認証できた場合はインスタンスのidに認証されたユーザーのidが入るようにします
    user = User.where(screen_name: self.screen_name)
    puts "User:#{Digest::SHA2.hexdigest(user.first.password)} Self:#{self.password}"
    if user.size > 0
      if Digest::SHA2.hexdigest(self.password) == user.first.password
        self.id = user.first.id
        return true
      else
        return false
      end
    else
      return false
    end
  end
end

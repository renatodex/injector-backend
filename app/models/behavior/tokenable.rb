module Behavior
  class Tokenable
    def self.validate(token)
      u = Account.find_by_token(token)

      if u.nil?
        raise AppExceptions::InvalidToken
      end

      true
    end
  end
end

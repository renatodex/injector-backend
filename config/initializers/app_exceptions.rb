module AppExceptions
  InvalidToken = Class.new(StandardError)
  ResourceNotFound = Class.new(StandardError)
  Unauthorized = Class.new(StandardError)
end

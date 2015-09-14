module Behavior
  class Resourceable
    def self.validate(id, class_type)
      if class_type.where(id: id).pluck(:id).first.nil?
        raise AppExceptions::ResourceNotFound
      else
        true
      end
    end
  end
end

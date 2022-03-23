# frozen_string_literal: true

class ApplicationService
  Result = Struct.new(:success?, :error, :value)

  def create_result(success, error, value)
    Result.new(success, error, value)
  end

  def self.call(*args)
    new(*args).call
  end
end

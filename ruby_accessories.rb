class RubyAccessories
  def self.try_until_success(error_to_catch:, error_msg: "Retrying...")
    unless block_given?
      raise ArgumentError, "Needs block!"
    end

    while true
      begin
        yield
        break
      rescue error_to_catch
        print error_msg
      end
    end
  end
end
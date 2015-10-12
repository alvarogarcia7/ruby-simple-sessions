def call_all_methods(object)
  object.methods.map { |x|
    begin
      # remove pry method as this modifies the PRY environment
      if x.to_s != "pry" then
        [method(x), object.send(x)]
      end
    rescue StandardError => ex;
    end
  }.select { |x| not x.nil?}
end

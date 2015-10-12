def call_all_methods(dest)
  dest.methods.map { |x|
    begin
      if x.to_s != "pry" then
        [method(x), dest.send(x)]
      end
    rescue StandardError => ex;
    end
  }.select { |x| not x.nil?}
end

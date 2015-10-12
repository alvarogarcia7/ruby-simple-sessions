def call_all_methods(object, *args) 
  # remove methods that modify the PRY environment or are too verbose
  exclusions = [:pry,
                :methods,
                :private_methods,
                :public_methods].map { |x| x.to_s}
  object.methods.map { |x|
    begin
      unless exclusions.include? x.to_s then
        [method(x), object.send(x, *args)]
      end
    rescue StandardError => ex;
      [x, ex]
    end
  }.select { |x| not x.nil?}
end

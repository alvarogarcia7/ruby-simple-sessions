require 'RSpec'

def call_all_methods(object, *args)
  # remove methods that modify the PRY environment or are too verbose
  success = {}
  error = {}
  exclusions = [:pry,
                :methods,
                :private_methods,
                :public_methods,
                :gem].map { |x| x.to_s}
  object.methods.each { |x|
    unless exclusions.include? x.to_s then
      begin
        if (args.empty?) then
          success[x] = object.__send__(x)
        else
          success[x] = object.__send__(x, *args)
        end
      rescue StandardError => ex
        error[x] = ex
      end
    end
  }

  success.select! { |x| not x.nil?}
  error.select! { |x| not x.nil?}

  {success: success, error: error}
end

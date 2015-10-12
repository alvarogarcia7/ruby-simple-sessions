def variadic(*args)
  p ([]==args)
  puts "p args"
  p args
  puts "p *args"
  p *args
  puts "map p x"
  args.map {|x| p x}
end

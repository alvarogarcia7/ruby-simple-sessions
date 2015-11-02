# Investigating the pattern "collection's group by"

{a: 1, b:1}.group_by{|x| x.first}
[:a, :b].map { |x| 1}
[:a, :b].map { |x| [x, 1]}
[:a, :b].map { |x| [x, 1] }.group_by
[:a, :b].map { |x| [x, 1] }.group_by{|x| x}
[:a, :b].map { |x| [x, 1] }.group_by{|x| x.first}
[:a, :b].map { |x| [x, 1] }.group_by{|x,j| x.first}
[:a, :b].map { |x| [x, 1] }.group_by{|x, j| x.first}
[:a, :b].map { |x| [x, 1] }.group_by{|x, l| x.first}
[:a, :b].map { |x| [x, 1] }.group_by{|x, l| x}
[:a, :b].map { |x| [x, 1] }.group_by{|x, l| l}
[:a, :b].map { |x| [x, 1] }.group_by{|x, l| x}
[:a, :b].map { |x| [x, 1] }.group_by{|x, l, m| x}
[:a, :b].map { |x| [x, 1] }.group_by{|x, l, m| m}
[:a, :b].map { |x| [x, 1] }.group_by{|x, l| l}
[2, 1].group_by{|x| x.even?}
[2, 1].group_by{|x| [2, x.even?]}
[2, 1].group_by{|x,i| [2, x.even?]}
[2, 1].group_by{|x,i| [x.even?]}
[2, 1].group_by{|x,i| [i, x.even?]}
[2, 1].map{|x| {x: x.even?}}
[2, 1].map{|x| {x: x.even?}}[0]
[2, 1].map{|x| {x: x.even?}}.to_set
[2, 1].map{|x| {x: x.even?}}.flatten
[2, 1].map{|x| {x: x.even?}}.to_set
[2, 1].map{|x| {x: x.even?}}.to_set.each {|x| p x}
[2, 1].map{|x| {x: x.even?}}
[2, 1].map{|x| {x => x.even?}}
[2, 1].map{|x| {x => x.even?}}.to_set
[2, 1].map{|x| {x => x.even?}}.to_set.each
[2, 1].map{|x| {x => x.even?}}.to_set.each{|x| p x}
[2, 1,3].map{|x| {x => x.even?}}.to_set.each{|x| p x}
[2, 1,2].map{|x| {x => x.even?}}.to_set.each{|x| p x}

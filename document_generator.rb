VAR_NUM = 1
STR_NUM = 1
ARRAY_NUM = 1
HASH_NUM = 1

open('README.md', 'w') do |f|
  f.puts '# Ruby Dojo'
end

Dir.glob('/Users/katsuki/Desktop/Ruby/ruby_dojo/variables/*.rb') do |rb_file|
  file = File.open(rb_file)
  open('README.md', 'a') do |f|
    f.puts "# Variables(#{VAR_NUM})"
    f.puts '```'
    f.puts file.read
    f.puts '```'
  end
  VAR_NUM += 1
end

Dir.glob('/Users/katsuki/Desktop/Ruby/ruby_dojo/String/*.rb') do |rb_file|
  file = File.open(rb_file)
  open('README.md', 'a') do |f|
    f.puts "# String(#{STR_NUM})"
    f.puts '```'
    f.puts file.read
    f.puts '```'
  end
  STR_NUM += 1
end

Dir.glob('/Users/katsuki/Desktop/Ruby/ruby_dojo/Array/*.rb') do |rb_file|
  file = File.open(rb_file)
  open('README.md', 'a') do |f|
    f.puts "# Array(#{ARRAY_NUM})"
    f.puts '```'
    f.puts file.read
    f.puts '```'
  end
  ARRAY_NUM += 1
end

Dir.glob('/Users/katsuki/Desktop/Ruby/ruby_dojo/Hash/*.rb') do |rb_file|
  file = File.open(rb_file)
  open('README.md', 'a') do |f|
    f.puts "# Hash(#{HASH_NUM})"
    f.puts '```'
    f.puts file.read
    f.puts '```'
  end
  HASH_NUM += 1
end

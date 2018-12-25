PWD = Dir.pwd

open('README.md', 'w') do |f|
  f.puts '# Ruby Dojo'
end

Dir.open(Dir.pwd).each do |dir|
  if File.directory?(dir)
    next if dir == '.' || dir == '..' || dir == '.git'
    num = 1
    Dir.glob("#{PWD}/#{dir}/*.rb") do |rb_file|
      file = File.open(rb_file)
      open('README.md', 'a') do |f|
        f.puts "# #{dir}(#{num})"
        f.puts '```ruby'
        f.puts file.read
        f.puts '```'
      end
      num += 1
    end
  end
end

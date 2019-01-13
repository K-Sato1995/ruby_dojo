PWD = Dir.pwd

## Create the title
open('README.md', 'w') do |f|
  f.puts "# Ruby Dojo\n\n"
  f.puts "# Table of contents"
end

## Create the table of contents (Refactoring needed)
Dir.open(Dir.pwd).each do |dir|
  if File.directory?(dir)
    next if dir == '.' || dir == '..' || dir == '.git'
      num = 1
    Dir.glob("#{PWD}/#{dir}/*.rb") do |rb_file|
      # file = File.open(rb_file)
      file_name = File.basename(rb_file).sub(/.rb/, '').sub(/_/, ' ')
      open('README.md', 'a') do |f|
        f.puts "- [#{dir}(#{num}) #{file_name.capitalize}](##{dir.downcase}#{num}-#{file_name.split(' ').join('-')})"
      end
      num += 1
    end
  end
end

## Create the actualy contents
Dir.open(Dir.pwd).each do |dir|
  if File.directory?(dir)
    next if dir == '.' || dir == '..' || dir == '.git'
    num = 1
    Dir.glob("#{PWD}/#{dir}/*.rb") do |rb_file|
      file = File.open(rb_file)
      file_name = File.basename(rb_file).sub(/.rb/, '').sub(/_/, ' ').capitalize
      open('README.md', 'a') do |f|
        f.puts "# #{dir}(#{num}) #{file_name}\n\n"
        f.puts '```ruby'
        f.puts file.read
        f.puts "```\n\n"
      end
      num += 1
    end
  end
end

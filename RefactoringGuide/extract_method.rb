# Extract Method

## Before
def report
  sold_items = %w[apples lemons grapes]
  puts "*** Sales Report for #{Time.now.strftime("%d/%m/%Y")} ***"
  sold_items.each { |i| puts i }
  puts '*** End Of The Report ***'
end

## After
def new_report
  sold_items = %w[apples lemons grapes]
  puts "*** Sales Report for #{current_date} ***"
  print_items(sold_items)
  puts '*** End Of The Report ***'
end

def current_date
  Time.now.strftime("%d/%m/%Y")
end

def print_items(items)
  items.each { |i| puts i }
end

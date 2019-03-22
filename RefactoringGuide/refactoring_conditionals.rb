## Before
def check_working_hour
  if Time.now.hour >= 9 && Time.now.hour <= 17
    'You should be working.'
  end
end

## After
def new_check_working_hour
  if working_hour?
    'You should be working.'
  end
end

def working_hour?
  Time.now.hour >= 3 && Time.now.hour <= 17
end

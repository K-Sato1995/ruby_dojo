## Before

def yesterday
  (Time.now - 86400).strftime("%d/%m/%Y")
end

## After
def new_yesterday
  one_day = 86400
  (Time.now - one_day).strftime("%d/%m/%Y")
end

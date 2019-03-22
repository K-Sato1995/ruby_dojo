## Before
def result(score)
  if check(score)
    "Pass"
  end
end

def check(score)
  score > 70
end

## After
def new_result(score)
  if score > 70
   "Pass"
  end
end

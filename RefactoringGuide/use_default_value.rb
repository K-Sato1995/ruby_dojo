## Before
module TwoFer
  def self.two_fer(name = '')
    if name.empty?
      'One for you, one for me.'
    else
      "One for #{name}, one for me."
    end
  end
end

## After
module TwoFer
  def self.two_fer(name = 'you')
    "One for #{name}, one for me."
  end
end

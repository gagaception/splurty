require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do 
  	quote = Quote.create(:author => 'Aziz Sharipov', :saying => 'Just start and you will succeed.')
  	expected = 'AS#' + quote.id.to_s
  	actual = quote.unique_tag
  	assert_equal expected, actual
  end
  	
  
end

require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
   test "qoute show page" do
     quote = Quote.create(:author => 'Aziz Sharipov', :saying => 'Everything is awesome' )
     get :show, :id => quote.id
     assert_response :success
   end

   test "quote show page, not found" do
   	 get :show, :id => 'OMG'
   	 assert_response :not_found
   end
end

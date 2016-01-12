require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
	test "quote show page" do
		quote = FactoryGirl.create(:quote)
		#trigger the show page with valid id
		get :show, :id => quote.id
		#result expected is success
		assert_response :success
	end


	test "quote show page not_found" do
		#trigger the show page but id that is invalid
		get :show, :id => "omg"
		#result expected is not_found 404 error
		assert_response :not_found
	end


end
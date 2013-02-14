require '~/Appli_web/HTTP_debug_server/http_debug_server_object.rb'

describe Response do
	context "when just created" do
		its(:version) {should_not be_empty}
		its(:response_code) {should_not be_empty}
		its(:meaning_code) {should_not be_empty}
	end

   describe "validation" do
	before (:each) do
		@response = mock(Response)
	end

	context "should have filled status line" do
		it "is valid" do
			@response.should_be_valid
		end
	end

	context "with empty status line" do
		it "should not be valid" do
			@response.should_not_be_valid
		end
	end
   end

end

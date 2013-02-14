require '~/Appli_web/HTTP_debug_server/http_debug_server_object.rb'

describe Request do 
	context "when juste created" do
		its(:type_requete) {should_not be_empty}
		its(:ressource_path) {should_not be_empty}
		its(:version) {should_not be_empty}
	end

   describe "validation" do
	before (:each) do
		@request = mock(Request)
	end

	context "should have filled headers" do
		it "is valid" do
			@request.should_be_valid
		end

	end

	context "with empty headers" do
		it "should not be valid" do
			@request.should_not_be_valid
		end
	end
   end

end
	

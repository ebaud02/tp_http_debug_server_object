require '~/Appli_web/HTTP_debug_server/http_debug_server_object.rb'

describe Response do
	context "when just created" do
		its(:version) {should be_empty}
		its(:code) {should be_empty}
		its(:code_message) {should be_empty}
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

   it "should write parameter given" do
	subject.write.with("toto").should == "toto"
   end

   it "should be a string" do
	test = "this is a test."
	subject.to_s.with(test).should == "this is a test."
   end
	
   

end

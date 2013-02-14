module HTTP

class Request
	attr_reader :headers, :type_request, :ressource_path, :version

	def initialize(socket)
		request_line = socket.gets
		@type_request, @ressource_path, @version = request_line.split(' ')
		begin
			@headers = {}
			header = socket.gets
			header_name, header_val = header.chomp.split(': ')
			@headers[header_name] = header_val
 		end until header.chomp.empty?

	end
	
	

end


class Response
	attr_accessor :version, :code, :code_message

	def initialize
		@version = @code = @code_message = ""
	end

	def valid?
    		not (version.nil?|| version.empty? || code.nil? || code.empty? || code_message.nil? || code_message.empty?)
 	end


	def write s
		
	end



	def to_s

	end


end

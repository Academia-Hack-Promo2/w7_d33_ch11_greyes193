require 'httparty'
class Users
	include HTTParty
	base_uri '45.55.172.121:3000/api/users'

	def get(username)
		self.class.get('/'+username)
	end
	def add(user)
		options = {body: user}
		self.class.post('', options)
	end
	def edit(username, user)
		options = {body: user}
		self.class.put('/'+username, options)	
	end
	def delete(username)
		self.class.delete('/'+username)		
	end
end
	# body = { 
	# 	gender: 'female', email: 'gen.reyest@gmail.com', 'firstname': 'Genesis', 'lastname': 'Reyes', username: '@genesisrt', address: 'Palo Verde'
	# }
def main()
	user = Users.new
	print user.edit("@genesisrt", {"status": "active"})
end
main()

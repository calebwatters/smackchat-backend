User.destroy_all
Channel.destroy_all
Message.destroy_all

User.create(username: 'calebwatters', name: 'Caleb Watters', email: 'caleb.watters@flatironschool.com')
c = Channel.create(name: 'Random Channel')
m= Message.create(content: 'stuff')
c.messages = [m]



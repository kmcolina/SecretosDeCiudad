admin = User.create(email: 'admin@admin.com', password: '123456', rol: 'admin')
admin.save!
guide = User.create(email: 'guide@guide.com', password: '123456', rol: 'guide')
guide.save!


a = Connections.new
place1 = Place.new(name: 'plaza bolivar', description: 'plaza en el casco historico', address: 'av este 2, caracas' )
place1.save!

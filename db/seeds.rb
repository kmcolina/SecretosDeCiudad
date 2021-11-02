# admin = User.new(email: 'admin@admin.com', password: '123456', rol: 'admin')
# admin.save!
# guide = User.new(email: 'guide@guide.com', password: '123456', rol: 'guide')
# guide.save!

# route = Route.new(name: 'Ruta 1', description: 'Ruta 1 description', duration: 2, places_interest: 'Plaza, Sambil, Edificio', available_dates: ['2021-10-06', '2021-11-06'])
# route.save!

route2 = Route.new(name: 'Ruta 2', description: 'Ruta 2 description', duration: 4, places_interest: 'Plaza 2, Sambil 2, Edificio 2', available_dates: ['2021-10-02', '2021-11-06'])
route2.save!

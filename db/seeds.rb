

#limpiando la bd

puts "eliminando todo de la BD"
#elimino las referencias entre lugares y rutas
# Connection.destroy_all
#elimino lugares
Place.destroy_all

#elimino bookings
Booking.destroy_all
#elimino reviews
Review.destroy_all

#elimino rutas
Route.destroy_all

#elimino los usuarios
User.destroy_all

puts "Proceso de limpieza completo"
#########################################################################################
### inicio creacion de la bd
puts ""
puts "Iniciando creacion de datos en la BD"

#creo users por defauls
  # admin
    admin = User.new(email: 'admin@admin.com', password: '123456', rol: 'admin')
    admin.save!

  # guias
    guide = User.new(email: 'guide@guide.com', password: '123456', rol: 'guide')
    guide.save!

    guide1 = User.new(email: 'guide1@guide.com', password: '123456', rol: 'guide')
    guide1.save!

    guide2 = User.new(email: 'guide2@guide.com', password: '123456', rol: 'guide')
    guide2.save!

    guide3 = User.new(email: 'guide3@guide.com', password: '123456', rol: 'guide')
    guide3.save!

  #usuarios finales
    usuario = User.new(email: 'usuario@usuario.com', password: '123456')
    usuario.save!

    usuario1 = User.new(email: 'usuario1@usuario.com', password: '123456')
    usuario1.save!

    usuario2 = User.new(email: 'usuario2@usuario.com', password: '123456')
    usuario2.save!

    usuario3 = User.new(email: 'usuario3@usuario.com', password: '123456')
    usuario3.save!


# creando rutas
  route1 = Route.new(name: 'Casco Historico de Caracas', description: 'Una caminata al pasado, Casa del libertador Simon Bolivar, Plaza bolivar, La Catedral de Caracas, estilo arquitectonico colonial y neoclasico en una ruta que te traslada a grandes momentos historicos pre y post independentistas.', duration: 4, places_interest: 'Cafeteria Paramo, Restaurante el Techo de la Ballena, Cocadas, Heladeria', available_dates: '20211007,20211108,20211109', price: 20)
  route1.save!

  route2 = Route.new(name: 'Ruta de los Museos - Caracas', description: 'Ruta por el Arte Contemporaneo, Arte nacional y Artes plasticas que se combinan con estructuras arquitectonicas neoclasicas de mas de 100 años y estructuras con diseño brutalista, una combinación unica', duration: 4, places_interest: 'Puesto de raspados, Panaderias, Restaurantes.', available_dates:'20211110,20211112', price: 15)
  route2.save!

  route2 = Route.new(name: 'Arquitectura con estilo', description: 'Una ruta llena de estructuras arquitectonicas de distintos estilos neogótico, Neoclásico y neobarroco que se encuentran muy cerca unos de otros y que ademas tienen una historia que contar', duration: 2, places_interest: 'Cafeteria, Centro Comercial', available_dates:'20211015,20211120', price: 10)
  route2.save!

  route3 = Route.new(name: 'Rascacielos', description: 'Toda gran ciudad tiene rascacielos, Caracas no se queda atras, las Torres de Parque central son los segundos rascacielos más alto de Sudamérica, muy cerca de ellos le siguen grandes edificios que no se quedan atras.', duration: 5, places_interest: 'Plaza 2, Sambil 2, Edificio 2', available_dates:'20211116,20211120', price: 8)
  route3.save!

  route4 = Route.new(name: 'Rascacielos', description: 'Toda ciudad tiene gr', duration: 4, places_interest: 'Plaza 2, Sambil 2, Edificio 2', available_dates:'20211002,20211106', price: 10)
  route4.save!

  route5 = Route.new(name: 'Ruta 2', description: 'Ruta 2 description', duration: 4, places_interest: 'Plaza 2, Sambil 2, Edificio 2', available_dates:'20211002,20211106', price: 9)
  route5.save!

  route6 = Route.new(name: 'Ruta 2', description: 'Ruta 2 description', duration: 4, places_interest: 'Plaza 2, Sambil 2, Edificio 2', available_dates:'20211002,20211106', price: 9)
  route6.save!

  route7 = Route.new(name: 'Ruta 2', description: 'Ruta 2 description', duration: 4, places_interest: 'Plaza 2, Sambil 2, Edificio 2', available_dates:'20211002,20211106', price: 9)
  route7.save!

# creado lugares
  place1 = Place.new(name: 'plaza bolivar', description: 'plaza en el casco historico', address: 'esquina la torre, caracas', route_id: route1.id, latitude: 10.5060739, longitude: -66.9150769  )
  place1.save!

  place2 = Place.new(name: 'Casa Amarilla', description: 'Antiguo palacio de gobierno, de gran importancia durante los años previos y posteriores a la independencia de la nacion', address: 'Esquina de Principal, lado Oeste de la Plaza Bolívar, Av. Este 0, Caracas', route_id: route1.id, latitude: 10.506335, longitude: -66.9161692)
  place2.save!

  place3 = Place.new(name: 'Concejo municipal', description: 'Dentro se ella se encuentra la capilla santa rosa de lima, donde se declaró la Independencia de Venezuela el 5 de julio de 1811.', address: 'esquina las monjas, caracas' , route_id: route1.id, latitude: 10.5053666, longitude: -66.9154536)
  place3.save!

# creo bookings
booking1 = Booking.new(user_id:usuario.id, check_in: '2021-10-30')
booking1.id

# creo reviews



puts "Proceso de creacion exitoso"

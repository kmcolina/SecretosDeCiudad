

#limpiando la bd

puts "eliminando todo de la BD"
#elimino las referencias entre lugares y rutas
Connection.destroy_all
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
admin = User.new(email: 'admin@admin.com', password: '123456', rol: 'admin')
admin.save!

guide = User.new(email: 'guide@guide.com', password: '123456', rol: 'guide')
guide.save!

usuario = User.new(email: 'usuario@usuario.com', password: '123456')
usuario.save!


# creado lugares
place1 = Place.new(name: 'plaza bolivar', description: 'plaza en el casco historico', address: 'esquina la torre, caracas' )
place1.save!

place2 = Place.new(name: 'Casa Amarilla', description: 'Antiguo palacio de gobierno, de gran importancia durante los años previos y posteriores a la independencia de la nacion', address: 'Esquina de Principal, lado Oeste de la Plaza Bolívar, Av. Este 0, Caracas' )
place2.save!

place3 = Place.new(name: 'Concejo municipal', description: 'Dentro se ella se encuentra la capilla santa rosa de lima, donde se declaró la Independencia de Venezuela el 5 de julio de 1811.', address: 'esquina las monjas, caracas' )
place3.save!

# creando rutas
route1 = Route.new(name: 'Ruta 1', description: 'Ruta 1 description', duration: 2, places_interest: 'Plaza, Sambil, Edificio', available_dates: ['2021-10-06', '2021-11-06'], price: 8)
route1.save!

route2 = Route.new(name: 'Ruta 2', description: 'Ruta 2 description', duration: 4, places_interest: 'Plaza 2, Sambil 2, Edificio 2', available_dates: ['2021-10-02', '2021-11-06'], price: 9)
route2.save!

route3 = Route.new(name: 'Ruta 3', description: 'Ruta 3 description', duration: 4, places_interest: 'Plaza 3, Sambil 3, Edificio 3', available_dates: ['2021-10-02', '2021-11-06'], price: 30, user_id: 2)
route3.save!

#creando coneccion

#asociando la ruta 1 con 3 places
conneccion1 = Connection.new(route_id: route1.id, place_id: place1.id  )
conneccion1.save!

conneccion2= Connection.new(route_id: route1.id, place_id: place2.id  )
conneccion2.save!

conneccion3= Connection.new(route_id: route1.id, place_id: place3.id  )
conneccion3.save!

#asociando la ruta 2 con 2 places
conneccion4 = Connection.new(route_id: route2.id, place_id: place1.id  )
conneccion4.save!

conneccion5 = Connection.new(route_id: route2.id, place_id: place2.id  )
conneccion5.save!


#creo bookings
booking1 = Booking.new(user_id:usuario.id, check_in: '2021-10-30')
booking1.id
#creo reviews

#asignar guía a ruta
# route3 = Route.find(1).update(user_id:2)
# route3.save!

puts "Proceso de creacion exitoso"


#ESTA LINEA ES NUEVA PRUEBA

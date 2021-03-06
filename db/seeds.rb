

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
  route0 = Route.new(name: 'Casco Historico de Caracas', description: 'Una caminata al pasado, Casa del libertador Simon Bolivar, Plaza bolivar, La Casa Amarilla, estilo arquitectonico colonial y neoclasico en una ruta que te traslada a grandes momentos historicos pre y post independentistas.', duration: 4, places_interest: 'Cafeteria Paramo, Restaurante el Techo de la Ballena, Cocadas, Heladeria', available_dates: '20211007,20211108,20211109', price: 20, user_id: guide.id)
  route0.save!

  route1 = Route.new(name: 'Ruta de los Museos - Caracas', description: 'Ruta por el Arte Contemporaneo, Arte nacional y Artes plasticas que se combinan con estructuras arquitectonicas neoclasicas de mas de 100 a??os y estructuras con dise??o brutalista, una combinaci??n unica', duration: 4, places_interest: 'Puesto de raspados, Panaderias, Restaurantes.', available_dates:'20211110,20211112', price: 15, user_id: guide1.id)
  route1.save!

  route2 = Route.new(name: 'Arquitectura con estilo', description: 'Una ruta llena de estructuras arquitectonicas de distintos estilos neog??tico, Neocl??sico y neobarroco que se encuentran muy cerca unos de otros y que ademas tienen una historia que contar', duration: 2, places_interest: 'Cafeteria, Centro Comercial', available_dates:'20211015,20211120', price: 10, user_id: guide2.id)
  route2.save!

  route3 = Route.new(name: 'Rascacielos', description: 'Toda gran ciudad tiene rascacielos, Caracas no se queda atras, las Torres de Parque central son los segundos rascacielos m??s alto de Sudam??rica, muy cerca de ellos le siguen grandes edificios que no se quedan atras.', duration: 5, places_interest: 'Plaza 2, Sambil 2, Edificio 2', available_dates:'20211116,20211120', price: 8, user_id: guide1.id)
  route3.save!

  route4 = Route.new(name: 'Los 7 Templos', description: 'Tradiciones de semana santa que son joyas arquitectonicas que guarda la ciudad, estilo Neoclasico, Neog??tico, historias y leyendas que se unen', duration: 4, places_interest: 'Plaza 2, Sambil 2, Edificio 2', available_dates:'20211002,20211106', price: 10,user_id: guide3.id)
  route4.save!

  route5 = Route.new(name: 'Las esquinas de Caracas', description: 'Una caracteristica particular de la ciudad, la torre, principal, las monjas, sociedad, descubre el porque de estos curiosos nombres', duration: 6, places_interest: 'Cafe bolivar, Restaurante, Cocada', available_dates:'20211018,20211120,20211121', price: 20,user_id: guide.id)
  route5.save!


# creado lugares
  #para la ruta 0 (casco historico)
    place1 = Place.new(name: 'plaza bolivar', description: 'uno de los espacios p??blicos m??s importantes y reconocidos de Venezuela, se encuentra ubicada en el centro hist??rico de esa ciudad, en ella se encuentra la Estatua ecuestre de Sim??n Bol??var, obra del escultor italiano Adamo Tadolini es una r??plica de la estatua de la Plaza Bol??var de Lima en Per?? realizada por la Fundici??n M??ller. Mide 4 metros de altura, en ella Bol??var est?? sobre un caballo encabritado sostenido por sus patas traseras apoyado sobre el pedestal que posee dos gradas.', address: 'Esquina La Torre, caracas', route_id: route0.id, latitude: 10.5060739, longitude: -66.9150769  )
    place1.save!

    place2 = Place.new(name: 'Casa Amarilla', description: 'Antiguo palacio de gobierno, de gran importancia durante los a??os previos y posteriores a la independencia de la nacion, es un edificio de arquitectura neocl??sica que data del siglo XIX, se utiliz?? como palacio de gobierno y residencia oficial de los presidentes. El 16 de febrero de 1979, la Casa Amarilla es designada como Monumento Hist??rico Nacional.', address: 'Esquina de Principal, lado Oeste de la Plaza Bol??var, Av. Este 0, Caracas', route_id: route0.id, latitude: 10.506335, longitude: -66.9161692)
    place2.save!

    place3 = Place.new(name: 'Concejo Municipal', description: 'De estilo arquitectonico Ecl??ctico, franc??s. Antiguo seminario  y universidad Rey Felipe V de Espa??a. la capilla del seminario y universidad son escenario de tres d??as de deliberaciones del Congreso Constituyente que culminaron con la Firma del Acta de Independencia de Venezuela el 5 de julio de 1811.', address: 'Esquina Las Monjas, Caracas' , route_id: route0.id, latitude: 10.5053666, longitude: -66.9154536)
    place3.save!

 #para la ruta 1
    place4 = Place.new(name: 'Museo de Bellas Artes', description: 'Su fundaci??n data de 1918. Las dos estructuras que albergan al museo fueron dise??adas por el arquitecto Carlos Ra??l Villanueva. En este espacio la Cinemateca Nacional dispone de una sala de exhibici??n.', address: 'Esquina La Torre, Caracas' , route_id: route1.id, latitude: 10.5007311, longitude: -66.8976947)
    place4.save!


  #para la ruta 2
    place5 = Place.new(name: 'Palacio de las Academias', description: 'Edificaci??n Colonial con estilo neog??tico de Caracas, Venezuela ubicada en la Avenida Universidad, Esquinas de La Bolsa a San Francisco', address: 'Esquina La Bolsa, Caracas' , route_id: route2.id, latitude: 10.5049881, longitude: -66.9157309)
    place5.save!

    place6 = Place.new(name: 'Palacio Federal Legislativo', description: 'De estilo arquitectonico Neocl??sico. El Capitolio Federal desde 1877 fue sede de los tres Poderes de la Naci??n el Ejecutivo Federal, Legislativo y Judicial. Pero desde 1961 es de uso exclusivo del Poder Legislativo Nacional. Debido a su importancia hist??rica y cultural, la edificaci??n fue declarada Patrimonio Nacional el 22 de agosto de 1997.', address: 'Esquina Las Mojas, Caracas' , route_id: route2.id, latitude: 10.505059, longitude: -66.9162468)
    place6.save!

  #para la ruta 3
    place7 = Place.new(name: 'Torres Parque Central', description: 'Nicolajs Sidorkovs y Federico Dubuc fueron los arquitectos de la Torre Este de Parque Central.??? Por m??s de 22 a??os, desde 1979 (cuando se inaugur?? la Torre Oeste) hasta 2003, ostentaron el t??tulo de los rascacielos m??s altos de Am??rica Latina.', address: 'Esquina La Torre, Caracas' , route_id: route3.id, latitude: 10.4986551, longitude: -66.9005484)
    place7.save!

  #para la ruta 4
    place8 = Place.new(name: 'Catedral de Caracas', description: 'Fue construida en 1665 por Juan de Medina, en sustituci??n de la peque??a iglesia destruida a causa del terremoto de 1641; concluida en el a??o 1674. Su fachada es de 1771, obra de Francisco Andr??s de Meneses. Da??ada por el terremoto de 1812 su torre (que da nombre a una de las esquinas de Caracas) fue reducida en tama??o.', address: 'Esquina La Torre, Caracas' , route_id: route4.id, latitude: 10.5061001, longitude: -66.9146226)
    place8.save!

   #para la ruta 5
    place9 = Place.new(name: 'Direcci??n de Archivos Bibliotecas y Divulgaci??n', description: 'se encarga de la administraci??n del Fondo Documental y Bibliogr??fico, relacionado con la memoria institucional y temas relacionados con la pol??tica exterior de nuestro pa??s, en el ??rea de la Gesti??n de la Informaci??n y el Conocimiento', address: 'Esquina El Conde, Caracas' , route_id: route5.id, latitude: 10.506699, longitude: -66.9157967)
    place9.save!


  # cargando imagen de cloudinary a mis rutas

  file_1 = URI.open('https://images.unsplash.com/photo-1596512489788-e9408b84274a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGNhc2NvJTIwaGlzdG9yaWNvfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

  route0.photo.attach(io: file_1, filename: 'route_0.jpg', content_type: 'image/jpg')
  route0.save!


  file_1 = URI.open('https://images.unsplash.com/photo-1491156855053-9cdff72c7f85?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG11c2V1bXxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

  route1.photo.attach(io: file_1, filename: 'route_1.jpg', content_type: 'image/jpg')
  route1.save!

  file_1 = URI.open('https://images.unsplash.com/15/castle.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGFsYWNpbyUyMGRlJTIwbGFzJTIwYWNhZGVtaWFzfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

  route2.photo.attach(io: file_1, filename: 'route_2.jpg', content_type: 'image/jpg')
  route2.save!

  file_1 = URI.open('https://images.unsplash.com/photo-1500228630616-d6905f33ad1a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGFycXVlJTIwY2VudHJhbCUyMGNhcmFjYXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

  route3.photo.attach(io: file_1, filename: 'route_2.jpg', content_type: 'image/jpg')
  route3.save!

  file_1 = URI.open('https://images.unsplash.com/photo-1594381006435-36a22f96087e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2F0ZWRyYWx8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

  route4.photo.attach(io: file_1, filename: 'route_2.jpg', content_type: 'image/jpg')
  route4.save!

  file_1 = URI.open('https://images.unsplash.com/photo-1590802810354-a785c3c50dcf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FyYWNhc3xlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

  route5.photo.attach(io: file_1, filename: 'route_2.jpg', content_type: 'image/jpg')
  route5.save!


  # imagenes para los lugares de la ruta 1

  file_1 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Casa_Natal_Del_Libertador_Simon_Bolivar.JPG/1280px-Casa_Natal_Del_Libertador_Simon_Bolivar.JPG')

  place1.photo.attach(io: file_1, filename: 'place_1.jpg', content_type: 'image/jpg')
  place1.save!


  file_1 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Casa_Amarilla_de_Caracas_-_2015.JPG/800px-Casa_Amarilla_de_Caracas_-_2015.JPG')

  place2.photo.attach(io: file_1, filename: 'place_1.jpg', content_type: 'image/jpg')
  place2.save!


  file_1 = URI.open('https://images.unsplash.com/photo-1593436243794-e0e6eefcef57?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y29sb25pYWx8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

  place3.photo.attach(io: file_1, filename: 'place_1.jpg', content_type: 'image/jpg')
  place3.save!

# creo bookings
  # para la ruta 0
    booking1 = Booking.new(user_id:usuario.id, check_in: '2021-11-08', route_id:route0.id )
    booking1.save!

    booking2 = Booking.new(user_id:usuario1.id, check_in: '2021-11-08', route_id:route0.id )
    booking2.save!

    booking3 = Booking.new(user_id:usuario2.id, check_in: '2021-11-08', route_id:route0.id )
    booking3.save!

    booking4 = Booking.new(user_id:usuario3.id, check_in: '2021-11-08', route_id:route0.id )
    booking4.save!

  # para la ruta 1
    booking5 = Booking.new(user_id:usuario1.id, check_in: '2021-11-15', route_id:route1.id )
    booking5.save!

    booking6 = Booking.new(user_id:usuario2.id, check_in: '2021-11-15', route_id:route1.id )
    booking6.save!

  # para la ruta 2
    booking7 = Booking.new(user_id:usuario.id, check_in: '2021-11-16', route_id:route2.id )
    booking7.save!

    booking8 = Booking.new(user_id:usuario3.id, check_in: '2021-11-16', route_id:route2.id )
    booking8.save!

  # para la ruta 3
    booking9 = Booking.new(user_id:usuario1.id, check_in: '2021-11-20', route_id:route3.id )
    booking9.id
    booking9.save!

    booking10 = Booking.new(user_id:usuario2.id, check_in: '2021-11-20', route_id:route3.id )
    booking10.save!

  # para la ruta 4
    booking11 = Booking.new(user_id:usuario2.id, check_in: '2021-11-06', route_id:route4.id )
    booking11.save!

    booking12 = Booking.new(user_id:usuario3.id, check_in: '2021-11-06', route_id:route5.id )
    booking12.save!

  # para la ruta 5
    booking11 = Booking.new(user_id:usuario2.id, check_in: '2021-11-20', route_id:route5.id )
    booking11.save!

    booking13 = Booking.new(user_id:usuario3.id, check_in: '2021-11-21', route_id:route5.id )
    booking13.save!

    booking13 = Booking.new(user_id:usuario.id, check_in: '2021-11-21', route_id:route5.id )
    booking13.save!

# creo reviews

  #usuarios
  usr = [usuario.id, usuario1.id, usuario2.id, usuario3.id]

  # ruta
  ruta = [route0.id, route1.id, route2.id, route3.id, route4.id, route5.id]

  # comentario
  commt = ["Maravilloso, Me encanto", "Volvere a repetir", "Woa cuanta historia, la hice por mi cuenta", "No esta mal", "Pueden agregar mas datos de interes a algunos lugares?", "Increible todas estas joyas", "Me encanto la ruta", "Esperando una proxima guiatura, es magnifico"]

  #rating
  ratig = [4,5]

  # genero un times random sobre los array

  40.times do
    user = usr.sample
    rutta = ruta.sample
    coment = commt.sample
    rati = ratig.sample

    review = Review.new(comment:coment, rating:rati,  route_id:rutta,user_id:user)
    review.save!

  end

puts "Proceso de creacion exitoso"

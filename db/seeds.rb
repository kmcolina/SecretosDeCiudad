

#limpiando la bd
require 'open-uri'
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
    guide = User.new(email: 'guide@guide.com', password: '123456', rol: 'guide',first_name: 'Natasha' , last_name: 'Holland')
    guide.save!

    guide1 = User.new(email: 'guide1@guide.com', password: '123456', rol: 'guide',first_name: 'Bernardo' , last_name: 'Jordan')
    guide1.save!

    guide2 = User.new(email: 'guide2@guide.com', password: '123456', rol: 'guide',first_name: 'Andrea' , last_name:'Mendoza')
    guide2.save!

    guide3 = User.new(email: 'guide3@guide.com', password: '123456', rol: 'guide',first_name: 'Cesar' , last_name: 'Muñoz')
    guide3.save!

    # asignando imagen a los guias

    # para el guia 0

      file_1 = URI.open('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHByb2ZpbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

      guide.avatar.attach(io: file_1, filename: 'guide_0.jpg', content_type: 'image/jpg')
      guide.save!

    # para el guia 1
      file_1 = URI.open('https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

      guide1.avatar.attach(io: file_1, filename: 'guide_1.jpg', content_type: 'image/jpg')
      guide1.save!

    # para el guia 2
      file_1 = URI.open('https://images.unsplash.com/photo-1521252659862-eec69941b071?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

      guide2.avatar.attach(io: file_1, filename: 'guide_2.jpg', content_type: 'image/jpg')
      guide2.save!
    # para el guia 3
      file_1 = URI.open('https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

      guide3.avatar.attach(io: file_1, filename: 'guide_3.jpg', content_type: 'image/jpg')
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
  route0 = Route.new(name: 'Casco Histórico de Caracas', description: '  Una caminata al pasado, casa del Libertador Simón Bolívar, Plaza Bolívar, La Casa Amarilla, estilo arquitectónico colonial y neoclásico en una ruta que te traslada a grandes momentos históricos pre y post independentistas.', duration: 4, places_interest: 'Cafetería Páramo, Restaurante el Techo de la Ballena, Cocadas, Heladería', available_dates: '20211007,20211108,20211109', price: 20, user_id: guide.id)
  route0.save!

  route1 = Route.new(name: 'Ruta de los Museos - Caracas', description: '  Ruta por el Arte Contemporáneo, Arte Nacional y Artes plásticas que se combinan con estructuras arquitectónicas neoclásicas de más de 100 años y estructuras con diseño brutalista, una combinación única.', duration: 4, places_interest: 'Puesto de raspados, Panaderías, Restaurantes.', available_dates:'20211110,20211112', price: 15, user_id: guide1.id)
  route1.save!

  route2 = Route.new(name: 'Arquitectura con estilo', description: '  Una ruta llena de estructuras arquitectónicas de distintos estilos, neogótico, neoclásico y neobarroco, que se encuentran muy cerca unos de otros y que, además, tienen una historia que contar.', duration: 2, places_interest: 'Cafetería, Centro Comercial', available_dates:'20211015,20211120', price: 10, user_id: guide2.id)
  route2.save!

  route3 = Route.new(name: 'Rascacielos en Caracas', description: '  Toda gran ciudad tiene rascacielos, Caracas no se queda atrás, las Torres de Parque Central son los segundos rascacielos más altos de Sudamérica.', duration: 5, places_interest: 'Panadería, Restaurante', available_dates:'20211116,20211120', price: 8, user_id: guide1.id)
  route3.save!

  route4 = Route.new(name: 'Los 7 Templos', description: '  Tradiciones de Semana Santa que son joyas arquitectónicas que guarda la ciudad, estilo neoclásico y neogótico, historias y leyendas que se unen.', duration: 4, places_interest: 'Souvenirs, Puestos de comida rápida', available_dates:'20211002,20211106', price: 10,user_id: guide3.id)
  route4.save!

  route5 = Route.new(name: 'Las esquinas de Caracas', description: '  Una característica particular de la ciudad; la torre, la principal, las monjas, la sociedad; descubre el porqué de estos curiosos nombres.', duration: 6, places_interest: 'Cafe Bolívar, Restaurante, Cocada', available_dates:'20211018,20211120,20211121', price: 20,user_id: guide.id)
  route5.save!

  route6 = Route.new(name: 'Inspiración Parisina', description: '  Caracas y París tienen muchas más cosas en común de lo que imaginas; calles, capillas, arquitectura.', duration: 6, places_interest: 'Centro comercial, Restaurante', available_dates:'20211018,20211120,20211121', price: 20,user_id: guide.id)
  route6.save!




# creado lugares
  #para la ruta 0 (casco historico)
    place1 = Place.new(name: 'Plaza Bolívar', description: '  En ella se encuentra la Estatua ecuestre de Simón Bolívar, obra del escultor italiano Adamo Tadolini.', address: 'Esquina La Torre, Caracas', route_id: route0.id, latitude: 10.5048301, longitude: -66.9141038  )
    place1.save!

    place2 = Place.new(name: 'Casa Amarilla', description: '  Antiguo palacio de gobierno, de arquitectura neoclásica que data del siglo XIX, se utilizó como palacio de gobierno y residencia oficial de los presidentes.', address: 'Esquina de Principal, lado Oeste de la Plaza Bolívar, Av. Este 0, Caracas', route_id: route0.id, latitude: 10.5063928, longitude: -66.9154011)
    place2.save!

    place3 = Place.new(name: 'Concejo Municipal', description: '  De estilo arquitectónico Ecléctico, Francés. Escenario donde se firmo del Acta de Independencia de Venezuela el 5 de julio de 1811.', address: 'Esquina Las Monjas, Caracas' , route_id: route0.id, latitude: 10.5060012, longitude: -66.9148397)
    place3.save!

 #para la ruta 1
    place4 = Place.new(name: 'Museo de Bellas Artes', description: '  Su fundación data de 1918. Las dos estructuras que albergan al museo fueron diseñadas por el arquitecto Carlos Raúl Villanueva.', address: 'Plaza de los Museos, Bellas Artes, Caracas 1050' , route_id: route1.id, latitude: 10.5006126, longitude: -66.8991782)
    place4.save!


  #para la ruta 2
    place5 = Place.new(name: 'Palacio de las Academias', description: '  Edificación Colonial con estilo neogótico de Caracas, Venezuela. Ubicada en la Avenida Universidad.', address: 'Esquina La Bolsa, Caracas' , route_id: route2.id, latitude: 10.5046717, longitude: -66.9168704)
    place5.save!

    place6 = Place.new(name: 'Palacio Federal Legislativo', description: '  De estilo arquitectónico neoclásico. El Capitolio Federal desde 1877 fue sede de los tres Poderes de la Nación.', address: 'Esquina La Bolsa, Caracas' , route_id: route2.id, latitude: 10.505235, longitude: -66.9165726)
    place6.save!

  #para la ruta 3
    place7 = Place.new(name: 'Torres Parque Central', description: '  Desde 1979 hasta 2003, ostentaron el título de los rascacielos más altos de América Latina.', address: 'Final Av. Bolívar, Caracas' , route_id: route3.id, latitude: 10.4986551, longitude: -66.9005484)
    place7.save!

  #para la ruta 4
    place8 = Place.new(name: 'Catedral de Caracas', description: '  Construida en 1665, su fachada es de 1771, obra de Francisco Andrés de Meneses. Dañada por el terremoto de 1812.', address: 'Esquina La Torre, Caracas' , route_id: route4.id, latitude: 10.506324, longitude: -66.9149134)
    place8.save!

   #para la ruta 5
    place9 = Place.new(name: 'Dirección de Archivos Bibliotecas y Divulgación', description: '  Se encarga de la administración del Fondo Documental y Bibliográfico, relacionado con la memoria institucional y temas relacionados con la política exterior de nuestro país, en el área de la Gestión de la Información y el Conocimiento.', address: 'Esquina El Conde, Caracas' , route_id: route5.id, latitude: 10.5066932, longitude: -66.9164852)
    place9.save!

   #para la ruta 6
    place10 = Place.new(name: 'Arco de la Federación', description: '  Monumento de estilo colonial, inspirado en el arco del triunfo de París.', address: 'El Calvario, Caracas' , route_id: route6.id, latitude: 10.5059818, longitude: -66.9216488)
    place10.save!


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

  route3.photo.attach(io: file_1, filename: 'route_3.jpg', content_type: 'image/jpg')
  route3.save!

  file_1 = URI.open('https://images.unsplash.com/photo-1594381006435-36a22f96087e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2F0ZWRyYWx8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

  route4.photo.attach(io: file_1, filename: 'route_4.jpg', content_type: 'image/jpg')
  route4.save!

  file_1 = URI.open('https://images.unsplash.com/photo-1590802810354-a785c3c50dcf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FyYWNhc3xlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

  route5.photo.attach(io: file_1, filename: 'route_5.jpg', content_type: 'image/jpg')
  route5.save!


  file_1 = URI.open('https://images.unsplash.com/photo-1500313830540-7b6650a74fd0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGFyaXN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

  route6.photo.attach(io: file_1, filename: 'route_6.jpg', content_type: 'image/jpg')
  route6.save!


  # imagenes para los lugares de la ruta 1

    file_1 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Casa_Natal_Del_Libertador_Simon_Bolivar.JPG/1280px-Casa_Natal_Del_Libertador_Simon_Bolivar.JPG')

    place1.photo.attach(io: file_1, filename: 'place_1.jpg', content_type: 'image/jpg')
    place1.save!


    file_1 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Casa_Amarilla_de_Caracas_-_2015.JPG/800px-Casa_Amarilla_de_Caracas_-_2015.JPG')

    place2.photo.attach(io: file_1, filename: 'place_2.jpg', content_type: 'image/jpg')
    place2.save!


    file_1 = URI.open('https://images.unsplash.com/photo-1593436243794-e0e6eefcef57?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y29sb25pYWx8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

    place3.photo.attach(io: file_1, filename: 'place_3.jpg', content_type: 'image/jpg')
    place3.save!

  #imagenes para los lugares de la ruta 2
    file_1 = URI.open('https://oceandrive.com.ve/wp-content/uploads/2021/05/Dia-Museos-Caracas-Ocean-Drive-Venezuela-3.jpg')
    place4.photo.attach(io: file_1, filename: 'place_4.jpg', content_type: 'image/jpg')
    place4.save!

    file_1 = URI.open('https://images.unsplash.com/photo-1636218685970-e7a147d9e925?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bmVvZ290aGljfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
    place5.photo.attach(io: file_1, filename: 'place_5.jpg', content_type: 'image/jpg')
    place5.save!

  #imagenes para los lugares de la ruta 3
    file_1 = URI.open('https://upload.wikimedia.org/wikipedia/commons/6/60/Palacio_Federal_Legislativo_de_Venezuela.JPG')

    place6.photo.attach(io: file_1, filename: 'place_6.jpg', content_type: 'image/jpg')
    place6.save!
  #imagenes para los lugares de la ruta 4

    file_1 = URI.open('https://live.staticflickr.com/3634/3295755131_60a93fc48c_b.jpg')

    place7.photo.attach(io: file_1, filename: 'place_7.jpg', content_type: 'image/jpg')
    place7.save!


    file_1 = URI.open('https://images.unsplash.com/photo-1560726113-4c3f67cfa9ec?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FpbnRlJTIwY2hhcGVsbGV8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

    place8.photo.attach(io: file_1, filename: 'place_8.jpg', content_type: 'image/jpg')
    place8.save!

  #imagenes para los lugares de la ruta 5
    file_1 = URI.open('https://images.unsplash.com/photo-1465929639680-64ee080eb3ed?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bGlicmFyeXxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

    place9.photo.attach(io: file_1, filename: 'place_9.jpg', content_type: 'image/jpg')
    place9.save!

  #imagenes para los lugares de la ruta 6

    file_1 = URI.open('https://upload.wikimedia.org/wikipedia/commons/3/3d/Arco_federacion_libertador_caracas.jpg')

  place10.photo.attach(io: file_1, filename: 'place_10.jpg', content_type: 'image/jpg')
  place10.save!


# creo bookings
  # para la ruta 0
    booking1 = Booking.new(user_id:usuario.id, check_in: '2021-11-13', route_id:route0.id )
    booking1.save!

    booking2 = Booking.new(user_id:usuario1.id, check_in: '2021-11-13', route_id:route0.id )
    booking2.save!

    booking3 = Booking.new(user_id:usuario2.id, check_in: '2021-11-13', route_id:route0.id )
    booking3.save!

    booking4 = Booking.new(user_id:usuario3.id, check_in: '2021-11-13', route_id:route0.id )
    booking4.save!

  # para la ruta 1
    booking5 = Booking.new(user_id:usuario1.id, check_in: '2021-11-15', route_id:route1.id, pago_user: rand(25987539..99999999) )
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

    booking12 = Booking.new(user_id:usuario3.id, check_in: '2021-11-26', route_id:route5.id )
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
  commt = ["Maravilloso, me encantó la caminata, esperando una nueva ruta.", "Volveré a repetir, maravilloso el guía, muy atento y experto en la ruta.", "Increíble, cuanta historia, la hice por mi cuenta y quiero repetir con un guía.", "Mis felicitaciones al guía, atención personalizada en todo momento y contestó todas mis curiosidades sobre la ruta.", "Me encanta su página, ¿pueden agregar mas datos de interés a algunos lugares?", "Increíble todas estas joyas, muy amable el guía, volveré a repetir con ustedes.", "Me encantó la ruta, nunca imaginé que la ciudad tuviera tantos secretos.", "Esperando una próxima guiatura, es magnífico, los guías, la historia, los detalles que cuentan en los recorridos."]

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

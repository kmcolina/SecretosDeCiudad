como administrador:
  CRUD -> rutas
  asignar (crear),editar,eliminar un guia a una ruta

como guia
  puedo ver mi ruta asignada y proximos eventos( fechas y cantidad de personas a las que diar la guiatura)

como usuario
  puedo ver las rutas
  puedo buscar por ubicacion
  puedo buscar por fecha
  puedo reservar una guiatura
  puedo ver mis reservas


***************************************
a nivel de vistas

landing principal: (index)
  con buscador por ubicacion/fecha
  cards de rutas sugeridas
  card de rutas por ubicacion


show rutas
  carrusel imagenes de la ruta
  mapa ruta
  descripcion con datos de interes de cada lugar que conforma la ruta
  info duracion de ruta
  info lugares cercanos (locales)
  boton reservar
  seccion de reviews de usuarios que hicieron las rutas


detalles visuales
  footer con diseño referente a ciudad
  logo referente
  fotografias de antaño, ejem: en el show de una ruta: en los detalles de un lugar sea una foto nueva y una foto de antaño del mismo lugar.

  simplificar cantidad de click
  botones llamativos

  navbar que tenga drop down de opciones de navegacion

  animacion cuando se hace scroll hacia abajo

  que sea responsiva

  horario de apertura de lugares en los que se puede ingresar

  edad apta

  favicon de la pagina

  efectos de navbar


vistas adicionales
  como funciona
  quienes somos

  boton para mostrar pagina en ingles

*****************************************
roles admin, guia, user


******************************************************************************************
hay que crear dos modelos de divise

para arrancar el proyecto usar el template de lewagon de divise

separar el modelo user, agregar una columna user type y definir si es cliente o admin

//////////

otro camino es crear 3 tipos de usuario esta modalidad permite separar claramente los permisos y tener controladores para cada role y tener las views separadas

es la modalidad preferible*

**********************************

el guia puede mandar un mensaje directo al cliente para estar en contacto (pude ser chat o link al whatsapp  - si se puede hacer)

gestionar asignacion de guias

*-- duplicar la hoja 2 veces
la primera como usuario
la segunda como super admin - asignar guias a las rutas??

como guia puedo logearme y ver mi dashword y ver rutas asignadas

agregar tablas admin y guias


**********************
los login seran modal

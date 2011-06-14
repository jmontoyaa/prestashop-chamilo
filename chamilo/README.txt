
Instrucciones para instalar el plugin Prestashop-Chamilo

Requisitos

 - Prestashop 1.4.0.17 (Asegurarse que el envio de correo funcione)
 - Chamilo 1.8.8.2  (Con cursos creados) 
 - Chamilo 1.8.7.1 Debe de reemplazar el archivo main/inc/webservices/registration.soap.php por el siguiente archivo:
    http://classic.chamilo.googlecode.com/hg/main/webservices/registration.soap.php?r=8825fd4b339430381ec3aa7db02aced0a83ad6c2
    No olvidar sacar un backup del archivo primero
   
1. Instalar el módulo Prestashop - Chamilo
    Siga los pasos standard para instalar un módulo en PS
    Subir el archivo zip y hacer click en instalar.

2. Configurar el módulo
    Haga click en "Otros módulos" -> "Chamilo" -> "Configurar".
    Vera un formulario con los siguientes parámetros a rellenar:

    - Chamilo URL              : URL pública del portal Chamilo (con un slash final)
    - Chamilo Security key     : Valor alfa numérico. Se encuentra en el archivo main/inc/conf/configuration.php
    - Chamilo encrypted method : sha1 o md5, Revisar este valor en el archivo main/inc/conf/configuration.php de chamilo    
    - Your public IP           : Ip pública del servidor donde se encuentra instalado Prestashop
 
    Luego de grabar los parámetros, encontrará en la misma página la lista de cursos extraidos desde el portal Chamilo. 
    Esto quiere decir que el módulo ha sido bien configurado. Asegúrese de que Chamilo tenga cursos creados.
    
 
3. Configurar un producto
 
    a. En PS logearse como admin e ir a "Catálogo" -> "Añadir un nuevo producto". 
    b. Complete el formulario y haga click en "Salvar y guardar".
    c. En el mismo formulario haga click en "Carácterísticas" Asegúrese que son las "Carácterísticas" del producto y NO del sistema.
    d. Aparecerá entonces una lista de carácteristicas: Alto, Ancho .. y CHAMILO_CODE
    e. Colocar el código del curso de Chamilo en este lugar. De esta manera se relaciona un producto de Prestashop con un curso de Chamilo.
    
4. Prueba 
    Haga un prueba con un usuario cliente en Prestashop e intente comprar un producto que tenga configurada una característica CHAMILO_CODE.
    El Módulo Chamilo enviará los emails cuando el Pedido haya sido confirmado.    

5. Aceptar el pago 
    Como admin dirígase a "Pedidos" y seleccione el pedido recientemente creado.
    Seleccionar "Pago aceptamos" y haga click en el botón "cambiar".
    Es en este momento el módulo envía la orden a Chamilo para crear una cuenta de usuario y la subscripción del mismo al curso comprado.    

6. Fin 
    Felicitaciones ahora puede vender sus cursos de Chamilo usando Prestashop
    
    
Importante de saber:

 - Login de Chamilo

    El login de acceso a Chamilo es generado tomando el email del usuario en Prestashop y agregando el customer id  
    Por ejemplo para: julio.montoya@beeznest.com el login de Chamilo será julio.montoya666 siendo 666 el customer id en PS
    
 - Password de Chamilo
    El password es un valor alfanumérico autogenerado y enviado por email
    
 - No eliminar la "Característica" CHAMILO_CODE en PS
    Si se elimina esta característica del sistema PS, el plugin no podrá relacionar los cursos de Chamilo con los productos en PS.
    
 - Email con credenciales de acceso a Chamilo
    Es posible modificar el email enviado a sus clientes, simplemente edite los archivos en /modules/chamilo/mail/es para el castellano por ejemplo.
    
 - Compra de múltiples cursos en un mismo "Pedido" 
    Si un usuario cliente de PS compra por ejemplo 5 cursos de Chamilo en un Pedido, el módulo solo crea una cuenta de usuario en Chamilo y le asocia los 5 cursos.
    Por lo tanto el sistema envia 1 email con las credenciales.
    
 - Compra de múltiples cursos en diferentes "Pedidos"  
   Si un cliente compra en PS un curso y luego en otro pedido compra otro curso, entonces el sistema utiliza el mismo login de Chamilo creado por el primer Pedido, 
   por lo que no se enviará las credenciales para el segundo pedido. Se supone que el usuario ya tiene acceso cuando compró el primer pedido.
   
import wollok.game.*
import gameController.*

object character {
	var puntos = 0
	var vidas = 3
	
	var mov = "izq"
	
	var posx = 5
    var property position = game.at(5, 1)
    method image() = "imagenes/lowboy_" + mov + ".png"
    
  
    

    method mover(dist) {
    	posx = posx + dist
    	position = game.at(posx, 1)
    }
    
    method getVidas() = vidas
	method getPuntos() = puntos
 
 	method restarVidas() {
 		vidas -= 1
 		if (vidas == 0) {
 			gameController.gameOver()
 		}
 		
 		 
 	}
 
 	method movement(newmov) {
 		mov = newmov
 	}
 
 	method sumarPuntos(punto) {
 		puntos += punto
 	}
 	method restablecerVidas() {
        vidas = 3
    }
    method restablecerPuntos(){
    	puntos = 0
    }
}

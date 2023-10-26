import wollok.game.*
import character.*

class Bomba {
	var posy = 7
	const x = 0.randomUpTo(game.width()).truncate(0)
	
    var property position = game.at(x, posy)
    
    method image() = "imagenes/bomb.png"
    
    method moveDown() {
	    posy -= 1
	    position = game.at(x, posy) 
  	}
  	
  	method atrapado() {
  		character.restarVidas()
  		game.sound("imagenes/sonidobomba.mp3").play()
  	}
}

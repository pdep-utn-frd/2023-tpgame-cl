import wollok.game.*
import character.*

class Fruit {
	var posy = 7
	const x = 0.randomUpTo(game.width()).truncate(0)
	
    var property position = game.at(x, posy)
    
    const frutas = ['apple', 'banana', 'sandia', 'uvas']
    var randomFruta = 0.randomUpTo(frutas.size()).truncate(0)
    
    method image() = "resources/" + frutas.get(randomFruta) + ".png"
    
    method moveDown() {
	    posy -= 1
	    position = game.at(x, posy) 
  	}
  	
  	method atrapado() {
  		character.sumarPuntos(randomFruta + 1)
  	}
}

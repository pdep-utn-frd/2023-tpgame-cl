import wollok.game.*
import character.*
import gameController.*

object puntos {
	method position() = game.at(8, 6)
	method text() = "Puntos: " + character.getPuntos().toString()
}

object vidas {
	method position() = game.at(1, 6)
	method text() = "Vidas: " + character.getVidas().toString()
}

object gameoverscreen {
	method position() = game.at(3, 1)
	method image() = "imagenes/game_over.png"
}
object gameinicio {
	method position() = game.at(-2, -1)
	
	method image() = "imagenes/vava.png"
}
object screenUI {
	
	
	method iniciar(){
        self.configurarInicio()
        self.menuVisual()
        }
    method startGame() {
       	game.boardGround("imagenes/background.jpg")
       	game.removeVisual(gameinicio)
       	self.gameVisual()
       	
    }
    
    method configurarInicio(){
	    game.height(7)
	    game.width(11)
	    game.title("Fruit Rain Adventure")
    }
    
    method gameVisual(){
    	game.boardGround("imagenes/background.jpg")
        game.addVisual(vidas)
        game.addVisual(puntos)
    }
    
    method menuVisual() {
    	game.boardGround("imagenes/background.jpg")
    	game.addVisual(gameinicio)
    	
    
    }
   method gameOver() {
  
    	game.removeVisual(character)
    	game.removeVisual(vidas)
    	game.removeVisual(puntos)
    	game.addVisual(gameoverscreen)
    		
    	 
    	 }
    	   method reiniciarJuego() {
    	   	 
        game.clear()
         game.addVisual(vidas)
        game.addVisual(puntos)
        character.restablecerPuntos()
        character.restablecerVidas()
        gameController.startMenu() 
         gameController.startController()
       		 }
    	   
    }
   




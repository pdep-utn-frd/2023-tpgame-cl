import wollok.game.*

import character.*

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
	method image() = "resources/game_over.png"
}

object screenUI {
	method iniciar(){
        self.configurarInicio()
        self.menuVisual()
    }
    method startGame() {
    	game.boardGround("resources/background.jpg")
    	self.gameVisual()
    }
    
    method configurarInicio(){
	    game.height(7)
	    game.width(11)
	    game.title("Fruit Rain Adventure")
    }
    
    method gameVisual(){
    	game.boardGround("resources/background.jpg")
        game.addVisual(vidas)
        game.addVisual(puntos)
    }
    
    method menuVisual() {
    	game.boardGround("resources/background_menu.jpg")
    }
    
    method gameOver() {
    	game.removeVisual(character)
    	game.removeVisual(vidas)
    	game.removeVisual(puntos)
    	game.addVisual(gameoverscreen)
    }
}

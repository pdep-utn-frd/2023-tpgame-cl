import wollok.game.*

import fruit.*
import bomb.*
import character.*

import interface.*


object gameController {
	method startController() {
		self.iniciarSpawner()
		self.acciones()
	}
	
	method startMenu() {
		keyboard.space().onPressDo {
    		self.startController()
    		screenUI.startGame()
	    }
	}
	
	method iniciarSpawner() {
		game.addVisual(character)
    
		game.onTick(1500, "instance", { self.instanciarFruta() })
		game.onTick(2500, "bomb", { self.instanciarBomba() })
	}
	
	method instanciarFruta() {
    	const fruta = new Fruit()
    	game.addVisual(fruta)
    	game.onTick(500, "movement", { fruta.moveDown() })
    }
	method instanciarBomba() {
    	const bomba = new Bomba()
    	game.addVisual(bomba)
    	game.onTick(500, "movementbomb", { bomba.moveDown() })
    }
	
    method acciones(){
	    game.whenCollideDo(character, { element =>
	    	element.atrapado()
	    	game.removeVisual(element)
	    })
	    
	    keyboard.d().onPressDo { 
	    	character.mover(1)
	    	character.movement("der")
	    }
	    keyboard.a().onPressDo { 
	    	character.mover(-1)
	    	character.movement("izq")
	    }
    }
    
    method gameOver() {
    	screenUI.gameOver()
    	game.removeTickEvent("instance")
    	game.removeTickEvent("bomb")
    	
    	keyboard.space().onPressDo {
    		screenUI.iniciar()
    		self.startController()
	    }
    }
}

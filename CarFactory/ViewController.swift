//
//  ViewController.swift
//  CarFactory
//
//  Created by Rick Larios on 8/6/22.
//

import UIKit

class ViewController: UIViewController {
	
	// Creo una variable para saber qué tipo de automovil voy a crear
	var tipoAutomovil: Int?

	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Nos comunicamos directamente entre clases incluso de otros archivos
		let automovil = Automovil()
		print("Automovil encendido? \(automovil.encender())")
	}

	@IBAction func createBasicAuto(_ sender: Any) {
		// En caso de hacer click en el primer botón la var tipoAutomovil valdrá 0
		tipoAutomovil = 0
		performSegue(withIdentifier: "segueSecondScreen", sender: self)
	}
	
	@IBAction func createMazdaAuto(_ sender: Any) {
		
		tipoAutomovil = 1
		performSegue(withIdentifier: "segueSecondScreen", sender: self)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// El objeto "destino" que creamos es una copia del objeto SecondScreenViewController, podemos acceder a sus propiedades
		if let destino = segue.destination as? SecondScreenViewController {
			// igualamos el valor de tipoAutomovil en destino al que asignamos al hacer click (self)
			destino.tipoAutomovil = self.tipoAutomovil
		}
	}
}


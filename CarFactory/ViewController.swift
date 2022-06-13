//
//  ViewController.swift
//  CarFactory
//
//  Created by Rick Larios on 8/6/22.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Nos comunicamos directamente entre clases incluso deotros archivos
		let automovil = Automovil()
		print("Automovil encendido? \(automovil.encender())")
	}


}


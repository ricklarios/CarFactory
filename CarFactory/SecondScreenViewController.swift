//
//  SecondScreenViewController.swift
//  CarFactory
//
//  Created by Rick Larios on 13/6/22.
//

import UIKit

class SecondScreenViewController: UIViewController {

	@IBOutlet weak var myImageView: UIImageView!
	
	@IBOutlet weak var myLabel: UILabel!
	
	var tipoAutomovil: Int?
	
    override func viewDidLoad() {
        super.viewDidLoad()

		switch tipoAutomovil {
		case 0:
			print("Creando automovil básico")
		case 1:
			print("Creando automovil MAZDA")
		default:
			print("Error")
		}
    }
    
	@IBOutlet weak var showInfo: UINavigationItem!
	
	@IBAction func encender(_ sender: Any) {
	}
	
	@IBAction func apagar(_ sender: Any) {
	}
	
	@IBAction func acelerar(_ sender: Any) {
	}
	
}

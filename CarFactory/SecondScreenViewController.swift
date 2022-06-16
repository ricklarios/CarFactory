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
	var automovilNormal: Automovil?
	var autoElectrico: AutomovilElectrico?
	
	var estadoAutomovil = false
	
    override func viewDidLoad() {
        super.viewDidLoad()

		switch tipoAutomovil {
		case 0:
			automovilNormal = Automovil()
			myImageView.image = UIImage(named: "automovil")
			print("Se ha creado el automovil básico eléctrico correctamente")
			myLabel.text = "Se ha creado el automovil básico correctamente"
			
		case 1:
			autoElectrico = AutomovilElectrico()
			myImageView.image = UIImage(named: "autoelectrico")
			print("Se ha creado el automovil MAZDA eléctrico correctamente")
			myLabel.text = "Se ha creado el automovil MAZDA eléctrico correctamente"
			autoElectrico!.color = "azul"
			autoElectrico?.precio = 8000
			
		default:
			print("Error")
		}
    }
    
	
	@IBAction func showInfo(_ sender: Any) {
		
		switch tipoAutomovil {
		case 0:
			myLabel.text = """
							Automovil básico
							Color: \(automovilNormal!.color)
							NºLlantas: \(automovilNormal!.numeroLlantas)
							Precio: \(automovilNormal!.precio) €
							"""
		case 1:
			myLabel.text = """
							Automovil Eléctrico
							Color: \(autoElectrico!.color)
							NºLlantas: \(autoElectrico!.numeroLlantas)
							Precio: \(autoElectrico!.precio) €
							Batería: \(autoElectrico!.porcentajeBateria) %
							"""
		default:
			print("Error")
		
		}
	}
	
	@IBAction func encender(_ sender: Any) {
		switch tipoAutomovil {
		case 0:
			if (!estadoAutomovil) {
				estadoAutomovil = automovilNormal!.encender()
				myLabel.text = "Automovil encendido correctamente"
			} else {
				myLabel.text = "El Automovil ya está encendido"
			}
		case 1:
			if (!estadoAutomovil) {
				estadoAutomovil = autoElectrico!.encender()
				myLabel.text = "Automovil Eléctrico encendido correctamente"
				autoElectrico!.porcentajeBateria = 75
			} else {
				myLabel.text = "El Automovil Eléctrico ya está encendido"
			}
		default:
			print("Error")
		}
	}
	
	@IBAction func apagar(_ sender: Any) {
		switch tipoAutomovil {
		case 0:
			if (estadoAutomovil) {
				estadoAutomovil = automovilNormal!.apagar()
				myLabel.text = "Automovil apagado correctamente"
			} else {
				myLabel.text = "El Automovil ya está apagado"
			}
		case 1:
			if (estadoAutomovil) {
				estadoAutomovil = autoElectrico!.apagar()
				myLabel.text = "Automovil Eléctrico apagado correctamente"
			} else {
				myLabel.text = "El Automovil Eléctrico ya está apagado"
			}
		default:
			print("Error")
		}
	}
	
	@IBAction func acelerar(_ sender: Any) {
		switch tipoAutomovil {
		case 0:
			if (estadoAutomovil) {
				myLabel.text = automovilNormal!.acelerar()
			} else {
				myLabel.text = "El automovil tiene que estar encendido para poder acelerar"
			}
		case 1:
			if (estadoAutomovil) {
				myLabel.text = autoElectrico!.acelerar()
				autoElectrico!.porcentajeBateria = autoElectrico!.porcentajeBateria - 10
			} else {
				myLabel.text = "El automovil tiene que estar encendido para poder acelerar"
			}
		default:
			print("Error")
		}
	}
	
}

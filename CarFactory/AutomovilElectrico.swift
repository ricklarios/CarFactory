//
//  File.swift
//  CarFactory
//
//  Created by Rick Larios on 13/6/22.
//

import Foundation

class AutomovilElectrico: Automovil {
	
	var porcentajeBateria = 100
	
	func cargarBarteria() -> String{
		
		porcentajeBateria = 100
		return "Carga Exitosa!!"
	}
}

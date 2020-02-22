//
//  main.swift
//  SegundaParte
//
//  Created by daviles on 2/19/20.
//  Copyright © 2020 daviles. All rights reserved.
//

import Foundation


// Validar la entrada de arguemmentos = 0
//Limpiar terminar cuando regrese aqui
//Validar que con -h imprima la ayuda y que no ingrese mas argumentos o diferentes de -h


let start = MainData()
let (argc,argumentos) = (CommandLine.argc, CommandLine.arguments)
start.DataChoice()


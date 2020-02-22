//
//  MainData.swift
//  SegundaParte
//
//  Created by daviles on 2/19/20.
//  Copyright © 2020 daviles. All rights reserved.
//

import Foundation

class MainData {
    let InputsOutputsData = inputsOutputsData()
    
    func DataChoice() {
        if CommandLine.argc > 1 {
            InputsOutputsData.printMainMenu()
        } else {
            InputsOutputsData.printConsole("\n\t\t ------ P R A C T I C A   1 ------")
            InputsOutputsData.printConsole("\t\t\tBy: Diana Aviles")
            InputsOutputsData.printConsole("\t    Registro Federal de Contribuyentes   RFC")
            InputsOutputsData.printConsole("\n\n\t\t    Existen estas Opciones:\n")
            InputsOutputsData.printConsole("\t\t      1-Personas Físicas")
            InputsOutputsData.printConsole("\t\t      2-Personas Morales")
            let TypePerson = InputsOutputsData.getInputS()
            
            InputsOutputsData.printConsole(" ESCOGISTE : \(TypePerson)")
            
        }
    }
}











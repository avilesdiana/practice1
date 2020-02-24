//
//  MainData.swift
//  SegundaParte
//
//  Created by daviles on 2/19/20.
//  Copyright © 2020 daviles. All rights reserved.
//

import Foundation

class MainData {
    
    func DataChoice() {
        let InputsOutputsData = inputsOutputsData()
        let moralPerson = moralPersonClass()
        let physicPerson = physicalPersonClass()
        var numRegresar = Int()
        
        repeat {
            InputsOutputsData.printP1Info()
            let TypePerson = InputsOutputsData.getInputS()
            
            switch TypePerson.lowercased(){
            case "a" :
                numRegresar = 0
                InputsOutputsData.clearScreen()
                physicPerson.dataChoiceFP()
              
                
            case "b" :
                numRegresar = 0
                InputsOutputsData.clearScreen()
                moralPerson.dataChoiceMP()
                
            case "c":
                numRegresar = 0
                InputsOutputsData.clearScreen()
                InputsOutputsData.comeBack()
                
            default:
                InputsOutputsData.clearScreen()
                InputsOutputsData.tryAgain()
                numRegresar = 1
            }
        }while numRegresar==1
    
    }
}











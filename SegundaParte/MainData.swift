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
        let naturalPerson = naturalPersonClass()
        var numRegresar = Int()
        //var nMenu = Int()
        let validation = validations()
        
        repeat {
            InputsOutputsData.printP1Info()
            let TypePerson = InputsOutputsData.getInputS()
            
            switch TypePerson.lowercased(){
            case "a" :
                
                InputsOutputsData.clearScreen()
                let data = naturalPerson.dataChoiceFP()
                let data1 = validation.accentName(fLN: data.fLN, mLN: data.mLN, nameS: data.nLN)
                //
                let data2 = validation.splitName(name: data1.nameSS)
                print("\(data2.wordS)")
                //nMenu = validation.validationError(num: data2.validate)
                //print(" HASTA AQUI VOY \(data1.fLNN), \(data1.mLNN), \(data1.nameSS)")
                
                numRegresar = 1
              
                
            case "b" :
               
                InputsOutputsData.clearScreen()
                moralPerson.dataChoiceMP()
                 numRegresar = 1
            case "c":
                
                InputsOutputsData.clearScreen()
                InputsOutputsData.comeBack()
                numRegresar = 0
                
            default:
                InputsOutputsData.clearScreen()
                InputsOutputsData.tryAgain()
                numRegresar = 1
            }
        }while numRegresar == 1
    
    }
}











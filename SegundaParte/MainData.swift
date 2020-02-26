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
        
        //declaration of instances or variables
        let InputsOutputsData = inputsOutputsData()
        let moralPerson = moralPersonClass()
        let naturalPerson = naturalPersonClass()
        var numRegresar = Int()
        let validation = validations()
        
        
        repeat {
            
            InputsOutputsData.printP1Info()
            let TypePerson = InputsOutputsData.getInputS()
            
            switch TypePerson.lowercased(){
            case "a" :
                InputsOutputsData.clearScreen()
                let data = naturalPerson.dataChoiceFP()
                let data3 = validation.unionDateValidate(year: data.aNP, month: data.mNP, day: data.dNP)
                let data1 = validation.accentName(fLN: data.fLN, mLN: data.mLN, nameS: data.nLN)
                let data2 = validation.splitName(name: data1.nameSS, fName: data1.fLNN, mName: data1.mLNN)
                print("\npruebas :  \(data2)\n : \(data3)\n")
    
                //return one at the end of the process to continue with a new one or close the program
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











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
        
        repeat {
            InputsOutputsData.printP1Info()
            let TypePerson = InputsOutputsData.getInputS()
            
            switch TypePerson.lowercased(){
            case "a" :
                
                InputsOutputsData.clearScreen()
                let data = naturalPerson.dataChoiceFP()
                
                print("\(data.fLN), \(data.mLN), \(data.nLN), \(data.aNP), \(data.mNP), \(data.dNP)")
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











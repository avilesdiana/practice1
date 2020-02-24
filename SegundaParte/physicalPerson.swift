//
//  physicalPerson.swift
//  SegundaParte
//
//  Created by DianaAviles on 23/02/20.
//  Copyright © 2020 daviles. All rights reserved.
//

import Foundation
//Class about moral person
//4 letters, 6 digits


class physicalPersonClass {
    
    struct physicalPersonData {
        var fatherLastName = ""
        var motherLastName = ""
        var names = ""
        var birthYear = ""
        var birthMont = ""
        var birthDay = ""
    }
    
    let InputsOutputsData = inputsOutputsData()
    let dictionary = dictionaries()
    let validation = validations()
    
    let date = Date()
    
    var inputDataPP = physicalPersonData()
    var valiNum1 = Int()
    var year = Int()
    func dataChoiceFP() {
        
        print("\n\t\t P E R S O N A S   F I S I C A S\n")
        print(" Ingresar los siguientes datos...\n")
        
        repeat {
            print("Apellido paterno: ")
            //Validar que no tenga caracteres especiaes
            inputDataPP.fatherLastName = InputsOutputsData.getInputS()
            valiNum1 = validation.validationStringComplete(words: inputDataPP.fatherLastName)
            valiNum1 = validation.validationError(num: valiNum1)
        } while valiNum1 >= 1
        
        repeat {
            print("Apellido materno: ")
            //Validar que no tenga caracteres especiaes
            inputDataPP.motherLastName = InputsOutputsData.getInputS()
            valiNum1 = validation.validationStringComplete(words: inputDataPP.motherLastName)
            valiNum1 = validation.validationError(num: valiNum1)
        } while valiNum1 >= 1
        
        repeat {
            print("Nombres: ")
            //Validar que no tenga caracteres especiaes
            inputDataPP.names = InputsOutputsData.getInputS()
            valiNum1 = validation.validationStringComplete(words: inputDataPP.names)
            valiNum1 = validation.validationError(num: valiNum1)
        } while valiNum1 >= 1
        
        repeat{
            print("Inregrese año de nacimiento: ")
            inputDataPP.birthYear = InputsOutputsData.getInputS()
            //Validar con un diccionario que no tenga letras
            //Validar que no tenga caracteres especiaes
            year = Int(inputDataPP.birthYear)!
            
            valiNum1=0
        }while valiNum1 == 1
        
    }
    
    
}

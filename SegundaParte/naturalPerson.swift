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


class naturalPersonClass {
    
    struct naturalPersonData {
        var fatherLastName = ""
        var motherLastName = ""
        var names = ""
        var birthYear = ""
        var year = 0
        var birthMonth = ""
        var month = 0
        var birthDay = ""
        var day = 0
    }
    
    let InputsOutputsData = inputsOutputsData()
    let dictionary = dictionaries()
    let validation = validations()
    var inputDataPP = naturalPersonData()
    let date = Date()
    var validationInt = Bool()
    
    
    
    
    func dataChoiceFP() -> (fLN: String, mLN: String, nLN: String, aNP: Int, mNP: Int, dNP: Int) {
        
        var valiNum1 = Int()
        
        
        print("\n\t\t P E R S O N A S   F I S I C A S\n")
        print(" Ingresar los siguientes datos...\n")
        
        repeat {
            print("Apellido paterno: ")
            //Validar que no tenga caracteres especiaes
            inputDataPP.fatherLastName = InputsOutputsData.getInputS()
            valiNum1 = validation.validationStringComplete(words: inputDataPP.fatherLastName)
            valiNum1 = validation.validationError(num: valiNum1)
        } while valiNum1 == 1
        
        repeat {
            print("Apellido materno: ")
            //Validar que no tenga caracteres especiaes
            inputDataPP.motherLastName = InputsOutputsData.getInputS()
            valiNum1 = validation.validationStringComplete(words: inputDataPP.motherLastName)
            valiNum1 = validation.validationError(num: valiNum1)
        } while valiNum1 == 1
        
        repeat {
            print("Nombres: ")
            //Validar que no tenga caracteres especiaes
            inputDataPP.names = InputsOutputsData.getInputS()
            valiNum1 = validation.validationStringComplete(words: inputDataPP.names)
            valiNum1 = validation.validationError(num: valiNum1)
        } while valiNum1 == 1
        
        
        //Otro repeat para validar si cumple con la edad
        repeat{
            print("Ingrese año de nacimiento: AAAA ")
            inputDataPP.birthYear = InputsOutputsData.getInputS()
            validationInt = validation.isInt(string: inputDataPP.birthYear)
            if (validationInt == true){
                inputDataPP.year = Int(inputDataPP.birthYear)!
                valiNum1 = validation.futureYear(num: inputDataPP.year)
                valiNum1 = validation.validationError(num: valiNum1)
            } else {
                valiNum1 = 1
            }
        }while valiNum1 == 1
        //
        repeat{
           print("Ingrese mes de nacimiento: MM ")
            inputDataPP.birthMonth = InputsOutputsData.getInputS()
            validationInt = validation.isInt(string: inputDataPP.birthMonth)
            if (validationInt == true){
                inputDataPP.month = Int(inputDataPP.birthMonth)!
                valiNum1 = validation.monthError(num: inputDataPP.month)
                valiNum1 = validation.validationError(num: valiNum1)
            } else {
                valiNum1 = 1
            }
        }while valiNum1 == 1
        
        //
        repeat{
           print("Ingrese día de nacimiento: DD")
            inputDataPP.birthDay = InputsOutputsData.getInputS()
            validationInt = validation.isInt(string: inputDataPP.birthDay)
            if (validationInt == true){
                inputDataPP.day = Int(inputDataPP.birthDay)!
                valiNum1 = validation.dayError(num: inputDataPP.day)
                valiNum1 = validation.validationError(num: valiNum1)
            } else {
                valiNum1 = 1
            }
        }while valiNum1 == 1
        // fin del otro repeat de que si tiene la edad
        
       //print("\(physicalPersonData(fatherLastName: inputDataPP.fatherLastName, motherLastName: inputDataPP.motherLastName, names: inputDataPP.names, birthYear: "0", year: inputDataPP.year, birthMonth: "0", month: inputDataPP.month, birthDay: "0", day: inputDataPP.day) )")
        
        return(inputDataPP.fatherLastName.uppercased(), inputDataPP.motherLastName.uppercased(), inputDataPP.names.uppercased(), inputDataPP.year, inputDataPP.month, inputDataPP.day)
    }
    
}

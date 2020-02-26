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
// letters : LastName : 1 letter -> Next vowel | Mother'sName: 1 letter, | name: 1 letter
// birth : 15 04 1998
//Example: DIANA LAURA AVILES ELIZALDE
// AIED 980415

  


class naturalPersonClass {
    
    struct naturalPersonData {
        var fatherLastName = ""
        var motherLastName = ""
        var names = ""
        var birthYear = ""
        var birthMonth = ""
        var birthDay = ""
        var year = 0
        var month = 0
        var day = 0
    }
    
    let InputsOutputsData = inputsOutputsData()
    let dictionary = dictionaries()
    let validation = validations()
    var inputDataPP = naturalPersonData()
    let date = Date()
    var validationInt = Bool()
    
    
    //function that valid and collects data
    //@Return Lastname, mother'sLastname, name, yearr, moth, day of birth
    
    func dataChoiceFP() -> (fLN: String, mLN: String, nLN: String, aNP: String, mNP: String, dNP: String) {
        
        var valiNum1 = Int()
        var valiNum2 = Int()
        
        
        print("\n\t\t P E R S O N A S   F I S I C A S\n")
        print(" Ingresar los siguientes datos...\n")
        print(" si tienes un solo apellido, ingresarlo en apellido Paterno")
        
        //
        repeat {
            print("Apellido paterno: ")
            //Validar que no tenga caracteres especiaes
            inputDataPP.fatherLastName = InputsOutputsData.getInputS()
            //valiNum1 = validation.validationStringComplete(words: inputDataPP.fatherLastName)
            valiNum1 = validation.charactersSpecial(wordS: inputDataPP.fatherLastName)
            valiNum1 = validation.validationError(num: valiNum1)
            
        } while valiNum1 == 1
        
        repeat {
            print("Apellido materno: ")
            //Validar que no tenga caracteres especiaes
            inputDataPP.motherLastName = InputsOutputsData.getInputS()
            //valiNum1 = validation.validationStringComplete(words: inputDataPP.motherLastName)
            valiNum1 = validation.charactersSpecial(wordS: inputDataPP.motherLastName)
            valiNum1 = validation.validationError(num: valiNum1)
            
        } while valiNum1 == 1
        
        if (inputDataPP.fatherLastName.isEmpty == false){
            
            repeat {
                print("Nombres: ")
                //Validar que no tenga caracteres especiaes
                inputDataPP.names = InputsOutputsData.getInputS()
                valiNum1 = validation.validationStringComplete(words: inputDataPP.names)
                print("\(valiNum1)")
                valiNum2 = validation.charactersSpecial(wordS: inputDataPP.names)
                print("\(valiNum2)")
                // valiNum1 = validation.validationError(num: valiNum1)
                //print("\(valiNum1)")
            } while (valiNum1 == 1 || valiNum2 >= 5)
            
            
            //Otro repeat para validar si cumple con la edad
            repeat{
                print("Ingrese año de nacimiento: AAAA ")
                inputDataPP.birthYear = InputsOutputsData.getInputS()
              valiNum1 = validation.validationStringCompleteYear(words: inputDataPP.birthYear)
            }while valiNum1 == 1
            
            repeat{
                print("Ingrese mes de nacimiento: MM ")
                inputDataPP.birthMonth = InputsOutputsData.getInputS()
                     valiNum1 = validation.validationStringCompleteFECHA(words: inputDataPP.birthMonth)
            }while valiNum1 == 1
            
            
            repeat{
                print("Ingrese día de nacimiento: DD")
                inputDataPP.birthDay = InputsOutputsData.getInputS()
                valiNum1 = validation.validationStringCompleteFECHA(words: inputDataPP.birthDay)
            }while valiNum1 == 1
            //fin del otro repeat de que si tiene la edad
           
            return (inputDataPP.fatherLastName.uppercased(), inputDataPP.motherLastName.uppercased(), inputDataPP.names.uppercased(), inputDataPP.birthYear, inputDataPP.birthMonth, inputDataPP.birthDay)

        }else{
            print("Ingresa al menos un apellido")
        }
        
        return("0", "0", "0", "0", "0", "0")
    }
    
}



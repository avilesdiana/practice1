//
//  inputsOutputsData.swift
//  SegundaParte
//
//  Created by daviles on 2/19/20.
//  Copyright © 2020 daviles. All rights reserved.
//

import Foundation

class inputsOutputsData{
   
    //This function print the main menu
    func printMainMenu() {
        print("\n\n\t\t   D E S C R I P C I Ó N ")
        print("  Este programa calcula el  RFC dependiendo el tipo de persona.")
        print("  Las opciones son : Persona Moral ó Persona Física")
        print("  Dependiento el tipo de persona, te pedirá ciertos datos")
        print("\t Ejecute de nuevo para realizar proceso.")
        print("\t Para más información ejecute con -h")
        print("\t EJEMPLO: ./SegundaParte -h \n\n\n")
    }
    
    //This function collect the data entered by the user
    func getInputS() -> String {
        let keyboard = FileHandle.standardInput
        let keyboardData = keyboard.availableData
        let dataInString = String(data: keyboardData, encoding: .utf8)!
        
        return dataInString.trimmingCharacters(in: .newlines)
    }
}



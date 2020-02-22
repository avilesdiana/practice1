//
//  inputsOutputsData.swift
//  SegundaParte
//
//  Created by daviles on 2/19/20.
//  Copyright © 2020 daviles. All rights reserved.
//

import Foundation

class inputsOutputsData{
    func printConsole(_ message:String){
    print(message)
    }
    
    //This function print the main menu
    func printMainMenu() {
        printConsole("\n\t\t   D E S C R I P C I Ó N ")
        printConsole("  Este programa calcula el  RFC dependiendo el tipo de persona.")
        printConsole("  Las opciones son : Persona Moral ó Persona Física")
        printConsole("  Dependiento el tipo de persona, te pedirá ciertos datos")
        printConsole("\t Ejecute de nuevo para realizar proceso.")
        printConsole("\t Para más información ejecute con -h")
        printConsole("\t EJEMPLO: ./SegundaParte -h")
    }
    
    //This function collect the data entered by the user
    func getInputS() -> String {
        let keyboard = FileHandle.standardInput
        let keyboardData = keyboard.availableData
        let dataInString = String(data: keyboardData, encoding: .utf8)!
        
        return dataInString.trimmingCharacters(in: .newlines)
    }
}



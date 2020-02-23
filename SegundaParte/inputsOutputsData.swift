//
//  inputsOutputsData.swift
//  SegundaParte
//
//  Created by daviles on 2/19/20.
//  Copyright © 2020 daviles. All rights reserved.
//

import Foundation

class inputsOutputsData{
    
    //This function collect the data entered by the user
    func getInputS() -> String {
        let keyboard = FileHandle.standardInput
        let keyboardData = keyboard.availableData
        let dataInString = String(data: keyboardData, encoding: .utf8)!
        
        return dataInString.trimmingCharacters(in: .newlines)
    }
    
    //This function always clear screen
    func clearScreen(){
        print("\u{001B}[2J")
    }
    
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
    
    func printP1Info(){
        print("\n\t\t ------ P R A C T I C A   1 ------")
        print("\t\t\tBy: Diana Aviles")
        print("\t    Registro Federal de Contribuyentes   RFC")
        print("\n\n\t\t    Existen estas Opciones:\n")
        print("\t\t      a-Personas Físicas")
        print("\t\t      b-Personas Morales")
        print("\t\t      c-Salir")
    }
    
    func comeBack(){
        print("\n\t\t R E G R E S E   P R O N T O \n")
    }
    
    func tryAgain(){
        print("\n\t\t NO EXISTE LA OPCIÓN ESCOGE OTRA OPCION\n\n")
    }
    
    func wrongOption(){
        print("\n\n No es la manera correcta, Ingrese de esta forma:")
        print("\t EJEMPLO: ./SegundaParte help \n\n")
    }
    
}



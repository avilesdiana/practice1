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
        var numRegresar = Int()
        
        repeat {
            print("\n\t\t ------ P R A C T I C A   1 ------")
            print("\t\t\tBy: Diana Aviles")
            print("\t    Registro Federal de Contribuyentes   RFC")
            print("\n\n\t\t    Existen estas Opciones:\n")
            print("\t\t      A-Personas Físicas")
            print("\t\t      B-Personas Morales")
            print("\t\t      C-Salir")
            
            //Uppercase de TyperPrsom

            let TypePerson = InputsOutputsData.getInputS()
            
            switch TypePerson {
            case "a" :
                numRegresar = 0
                print("\n\t\t P E R S O N A S   F I S I C A S\n")
                
            case "b" :
                numRegresar = 0
                print("\n\t\t P E R S O N A S   M O R A L E S\n")
            case "c":
                numRegresar = 0
                print("\n\t\t R E G R E S E   P R O N T O \n")
                
            default:
                print("\n\t\t NO EXISTE LA OPCIÓN ESCOGE OTRA OPCION\n\n")
                numRegresar = 1
            }
        }while numRegresar==1
    
    }
}











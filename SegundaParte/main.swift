//
//  main.swift
//  SegundaParte
//
//  Created by daviles on 2/19/20.
//  Copyright © 2020 daviles. All rights reserved.
//

import Foundation



//main menu to choose options
let start = MainData()
let InputsOutputsData = inputsOutputsData()

var (argc,argumentos) = (CommandLine.argc, CommandLine.arguments)

if (argc > 1){
    if(argumentos[1] == "help"){
        //Print the help menu
        InputsOutputsData.printMainMenu()
    }else {
        print("\n\n No es la manera correcta, Ingrese de esta forma:")
        print("\t EJEMPLO: ./SegundaParte help \n\n")
    }
} else {
    //run the menu of choice
    start.DataChoice()
}

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
let dictionary = dictionaries()

var (argc,argumentos) = (CommandLine.argc, CommandLine.arguments)

if (argc > 1){
    if(argumentos[1] == "help"){
        //Print the help menu
        InputsOutputsData.clearScreen()
        InputsOutputsData.printMainMenu()
    }else {
        //Entered the arguments wrong
        InputsOutputsData.clearScreen()
        InputsOutputsData.wrongOption()
    }
} else {
    //run the menu of choice
    InputsOutputsData.clearScreen()
    start.DataChoice()
}

//
//  main.swift
//  SegundaParte
//
//  Created by daviles on 2/19/20.
//  Copyright © 2020 daviles. All rights reserved.

// In every class explains about this
import Foundation

//main menu to choose options
let start = MainData()
//class that receives the data
let InputsOutputsData = inputsOutputsData()
//class that contains the dictionaries
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
        //print if you messed up the arguments
        InputsOutputsData.wrongOption()
    }
} else {
    //run the menu of choice
    InputsOutputsData.clearScreen()
    start.DataChoice()
}

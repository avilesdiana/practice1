//
//  validations.swift
//  SegundaParte
//
//  Created by DianaAviles on 23/02/20.
//  Copyright © 2020 daviles. All rights reserved.
//

import Foundation

class validations {
    
    //
    func validationStringComplete(words: String) -> Int {
        let caracteres: Int = words.count
        var validate: Int
        
        if (caracteres > 1) {
            validate = 0
        } else {
            validate = 1
        }
        return validate
    }
    
    // func validationStrinSpace(words:String) -> Int {
    //var validate : Int
    
    // if words.isEmpty {
    //validate = 0
    //} else {
    //  validate = 1
    //}
    //return validate
    //}
    
    //
    
    
    
    //
    func validationError(num : Int) -> Int{
        var validate : Int
        
        
        switch num {
        case 1:
            print("Es un caracter, Ingrese palabra Completa")
            validate = 1
        default:
            validate = 0
        }
        return validate
    }
    
    
}


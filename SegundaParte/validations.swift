//
//  validations.swift
//  SegundaParte
//
//  Created by DianaAviles on 23/02/20.
//  Copyright © 2020 daviles. All rights reserved.
//

import Foundation

class validations {
    let date = DateComponents()
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
    func isInt(string: String) -> Bool {
        return Int(string) != nil
    }
    
    //
    func futureYear(num: Int) -> Int {
        var validate : Int
        
        // if(num > date.year!){
        if(num > 2020){
            validate = 2
        }else{
            validate = 0
        }
        return validate
    }
    
    //
    func monthError(num: Int) -> Int {
        var validate : Int
        
        // if(num > date.year!){
        if(num > 12){
            validate = 3
        }else{
            validate = 0
        }
        return validate
    }
    
    //
    func dayError(num: Int) -> Int {
        var validate : Int
        
        // if(num > date.year!){
        if(num > 31){
            validate = 4
        }else{
            validate = 0
        }
        return validate
    }
    
    //
    func filterAccentFromName(fLN : String, mLN: String, nameS : String ) -> (String, String, String) {
        
        var arrayNames : [String] = [fLN, mLN, nameS]
        for (index, var name) in arrayNames.enumerated(){
            name = name.uppercased()
            name = name.replacingOccurrences(of: "Á", with: "A")
            name = name.replacingOccurrences(of: "É", with: "E")
            name = name.replacingOccurrences(of: "Í", with: "I")
            name = name.replacingOccurrences(of: "Ó", with: "O")
            name = name.replacingOccurrences(of: "Ú", with: "U")
            name = name.replacingOccurrences(of: "Ñ", with: "&")
            arrayNames[index] = name
        }
        print("SI ESTOY AQUI \(fLN),\(mLN),\(nameS)")
        return (fLN,mLN, nameS)
        
    }
    //
    
    //
    func validationError(num : Int) -> Int{
        var validate : Int
        
        
        switch num {
        case 1:
            print("Es un caracter, Ingrese palabra Completa")
            validate = 1
        case 2:
            print("NO INGRESE UN AÑO FUTURO ")
            validate = 1
        case 3:
            print("NO EXISTE EL MES")
            validate = 1
        case 4:
            print("NO EXISTE EL DÌA")
            validate = 1
        default:
            validate = 0
        }
        return validate
    }
    
    
}


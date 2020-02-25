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
        
        if (caracteres > 2) {
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
    func accentName(fLN : String, mLN: String, nameS : String ) -> (fLNN : String, mLNN: String, nameSS : String )  {
        
        var fLNN = ""
        var mLNN = ""
        var nameSS = ""
        
        var aNames : [String] = [fLN, mLN, nameS]
        for (index, var name) in aNames.enumerated(){
            name = name.replacingOccurrences(of: "Á", with: "A")
            name = name.replacingOccurrences(of: "À", with: "A")
            name = name.replacingOccurrences(of: "É", with: "E")
            name = name.replacingOccurrences(of: "È", with: "E")
            name = name.replacingOccurrences(of: "Í", with: "I")
            name = name.replacingOccurrences(of: "Ì", with: "E")
            name = name.replacingOccurrences(of: "Ó", with: "O")
            name = name.replacingOccurrences(of: "Ò", with: "O")
            name = name.replacingOccurrences(of: "Ú", with: "U")
            name = name.replacingOccurrences(of: "Ù", with: "U")
            name = name.replacingOccurrences(of: "Ñ", with: "&")
            aNames[index] = name
        }
        
        fLNN = aNames[0]
        mLNN = aNames[1]
        nameSS = aNames[2]
        
        return (fLNN,mLNN, nameSS)
        
    }
    //
    func charactersSpecial(wordS : String) -> Int{
        let charSpe = ["!","$","%","&","/","(",")","=","+","[","]","{","}",">","<","*","–","^","º","ª","\\","·","´","`","Ç","ç",";",",","."]
        var invalid = Bool()
        var validate = Int()
        
        
        for character in wordS{
            if charSpe.contains(String(character)){
                invalid = true
                if invalid == true {
                    validate = 5
                }
              
            }
        }
    
        
        return validate
    }
    //
    func splitName(name: String) ->(validate:Int, wordS: String) {
       var wordS = String()
        var validate = Int()
        
        let name: [Substring] = name.split(separator: " ")
        //for wordS in name {
          //  print(wordS)
        //}
        if (name[0] == "MARIA"){
            validate = 6
            wordS = String(name[1])
        }else {
            
             wordS = String(name[0])
             validate = 0
        }
       
        
    return (validate, wordS)
    //name.forEach({ print($0) })
        //return (nameN, validate)
    }
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
        case 5:
            print("NO PUEDE PONER CARACTERES ESPECIALES")
            validate = 1
        default:
            validate = 0
        }
        return validate
    }
    
    
}


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
    //validate that you put more than one character in the string
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
    
     //validate that you put more than one character in the string
    func validationStringCompleteDate(words: String) -> Int {
        let caracteres: Int = words.count
        var validate: Int
        
        if (caracteres <=  1) {
            validate = 1
        } else {
            validate = 0
        }
        return validate
    }
    
     //validate that you put more than one character in the string
    func validationStringCompleteFECHA(words: String) -> Int {
        let caracteres: Int = words.count
        var validate: Int
        
        if (caracteres != 2 ) {
            validate = 1
        } else {
            validate = 0
        }
        return validate
    }
    //validate that you put more than one character in the string
    func validationStringCompleteYear(words: String) -> Int {
        let caracteres: Int = words.count
        var validate: Int
        
        if (caracteres != 4 ) {
            validate = 1
        } else {
            validate = 0
        }
        return validate
    }
    
    //function that union the date
    //@Parameters : YEAR, MONTH, DAY in STRING
    //@Return Validation the date ( >18 , NOT FUTURE DATE )
    func unionDateValidate(year: String, month: String , day: String) -> Int {
        var validate = Int()
        let calendar = Calendar.current
        let today = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "DD:MM:YYY"
        
        let text : String = "\(day):\(month):\(year)"
        print("\(text)")
        let fecha = dateFormatter.date(from: text)
        
        if fecha! > Date(){
            // val = false
            print("LA FECHA NO PUEDE SER FUTURA!")
            validate = 1
        }else{
            validate = 0
            let typeDate = calendar.dateComponents([.year, .month, .day], from: fecha!, to: today)
            let ageValidate = typeDate.year!
            if ageValidate < 18{
                print("Persona Mayor a 18 años, no puede registrarse")
                validate = 1
            } else{
                validate = 0
            }
        }
        
        
        return (validate)
    }
    
    //validate that goal only integers
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
    
    //remove accents and replace a other letter
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
    //remove de characters
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
    
    
    //remove unwanted words, such as abbreviations
    func splitName(name: String, fName:String, mName:String) ->(nameN: String, fNameNew: String, mNameNew: String) {
        let abrevName = dictionaries()
        var nameN = String()
        var fNameN = String()
        var mNameN = String()
        
        var nameComplete : [String] = [name, fName, mName]
        var count=0
        
        for var eachWord in nameComplete {
            var separateWords = eachWord.components(separatedBy: " ")
            for onlyName in separateWords {
                if abrevName.wordsNotUseRFCNaturalPerson.contains(onlyName){
                    eachWord = eachWord.replacingOccurrences(of: " " + onlyName + " ", with: " ")
                    if onlyName == separateWords.first{
                        eachWord = eachWord.replacingOccurrences(of: onlyName + " ", with: "")
                        separateWords = eachWord.components(separatedBy: " ")
                    }else if onlyName == separateWords.last {
                        eachWord = eachWord.replacingOccurrences(of: " " + onlyName, with: "")
                        separateWords = eachWord.components(separatedBy: " ")
                    }
                }
            }
            nameComplete[count] = eachWord
            count += 1
        }
        
        nameN = nameComplete[0]
        fNameN = nameComplete[1]
        mNameN = nameComplete[2]
        
        return (nameN, fNameN, mNameN)
        //name.forEach({ print($0) })
        //return (nameN, validate)
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
        case 5:
            print("NO PUEDE PONER CARACTERES ESPECIALES")
            validate = 1
        default:
            validate = 0
        }
        return validate
    }
    
    
}


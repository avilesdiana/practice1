//
//  File.swift
//  SegundaParte
//
//  Created by DianaAviles on 22/02/20.
//  Copyright © 2020 daviles. All rights reserved.
//

import Foundation

//Class of dictionaries table
class dictionaries{
    
    // Table 1 -  Homonymous differentiating key characters
    let homonymousDifferentiatingKeyCharactersTable = [
        
        " " : "00",
        "0" : "00",
        "1" : "01",
        "2" : "02",
        "3" : "03",
        "4" : "04",
        "5" : "05",
        "6" : "06",
        "7" : "07",
        "8" : "08",
        "9" : "09",
        "&" : "10",
        "Ñ" : "10",
        "A" : "11",
        "B" : "12",
        "C" : "13",
        "D" : "14",
        "E" : "15",
        "F" : "16",
        "G" : "17",
        "H" : "18",
        "I" : "19",
        "J" : "21",
        "K" : "22",
        "L" : "23",
        "M" : "24",
        "N" : "25",
        "O" : "26",
        "P" : "27",
        "Q" : "28",
        "R" : "29",
        "S" : "32",
        "T" : "33",
        "U" : "34",
        "V" : "35",
        "W" : "36",
        "X" : "37",
        "Y" : "38",
        "Z" : "39"    ]
    
    
    // Table 2 - Homonym differentiating key based on quotient and residue
    let differentiatingKeyHomonymQuotientAndResidualTable = [
        "0" : "1",
        "1" : "2",
        "2" : "3",
        "3" : "4",
        "4" : "5",
        "5" : "6",
        "6" : "7",
        "7" : "8",
        "8" : "9",
        "9" : "A",
        "10" : "B",
        "11" : "C",
        "12" : "D",
        "13" : "E",
        "14" : "F",
        "15" : "G",
        "16" : "H",
        "17" : "I",
        "18" : "J",
        "19" : "K",
        "20" : "L",
        "21" : "M",
        "22" : "N",
        "23" : "P",
        "24" : "Q",
        "25" : "R",
        "26" : "S",
        "27" : "T",
        "28" : "U",
        "29" : "V",
        "30" : "W",
        "31" : "X",
        "32" : "Y",
        "33" : "Z"    ]
    
    //Table 3 - RFC check digit generation
    let generationRFCheckDigitTable = [
        "0" : "00",
        "1" : "01",
        "2" : "02",
        "3" : "03",
        "4" : "04",
        "5" : "05",
        "6" : "06",
        "7" : "07",
        "8" : "08",
        "9" : "09",
        "A" : "10",
        "B" : "11",
        "C" : "12",
        "D" : "13",
        "E" : "14",
        "F" : "15",
        "G" : "16",
        "H" : "17",
        "I" : "18",
        "J" : "19",
        "K" : "20",
        "L" : "21",
        "M" : "22",
        "N" : "23",
        "&" : "24",
        "Ñ" : "24",
        "O" : "25",
        "P" : "26",
        "Q" : "27",
        "R" : "28",
        "S" : "29",
        "T" : "30",
        "U" : "31",
        "V" : "32",
        "W" : "33",
        "X" : "34",
        "Y" : "35",
        "Z" : "36",
        " " : "37"
    ]
    
    //Table 4 - Inconvenient words with your correct word
    let incovenientWordsWithCorrectWord = [
        "BUEI" : "BUEX",
        "MAME" : "MAMX",
        "CACA" : "CACX",
        "MEAR" : "MEAX",
        "CAGA" : "CAGX",
        "MEON" : "MEOX",
        "CAKA" : "CAKX",
        "MOCO" : "MOCX",
        "COGE" : "COGX",
        "PEDA" : "PEDX",
        "COJE" : "COJX",
        "PENE" : "PENX",
        "FETO" : "FETX",
        "PUT" : "PUTX",
        "JOTO" : "JOTX",
        "CACO" : "CACX",
        "KACO" : "KACX",
        "CAGO" : "CAGX",
        "KAGO" : "KAGX",
        "CAKO" : "CAKX",
        "KOJO" : "KOJX",
        "COJA" : "COJX",
        "KULO" : "KULX",
        "COJI" : "COJX",
        "LOCO" : "LOCX",
        "CULO" : "CULX",
        "LOKO" : "LOKX",
        "GUEY" : "GUEX",
        "MAMO" : "MAMX",
        "KACA" : "KACX",
        "MEAS" : "MEAX",
        "KAGA" : "KAGX",
        "MION" : "MIOX",
        "KOGE" : "KOGX",
        "MULA" : "MULX",
        "KAKA" : "KAKX",
        "PEDO" : "PEDX",
        "LOCA" : "LOCX",
        "PUTA" : "PUTX",
        "LOKA" : "LOKX",
        "QULO" : "QULX",
        "RUIN" : "RUIX",
        "RATA" : "RATX"    ]
    
    //Table 5 - Words that are not used in the RFC of moral persons
    let wordsNotUseRFCMoralPerson = [
        " EL ",
        " LA ",
        " S. DE ",
        " S.A. DE ",
        " R.L. ",
        " C.V. ",
        " DE ",
        " LOS ",
        " LAS ",
        " Y ",
        " DEL ",
        " S.A. ",
        " COMPAÑÍA ",
        " CIA ",
        " SOCIEDAD ",
        " SOC ",
        " COOPERATIVA ",
        " COOP ",
        " A.C. ",
        " A. EN P. ",
        " S. EN C. POR A. ",
        " S. EN C. ",
        " E. EN N.C. ",
        " EN ",
        " PARA ",
        " CON ",
        " POR ",
        " SUS ",
        " AL ",
        " S.C. ",
        " E ",
        " S.C.S. ",
        " S.C.L. ",
        " THE ",
        " I.A.P ",
        " S.N.C. ",
        " AND ",
        " OF ",
        " C.D. ",
        " COMPANY ",
        " MAC ",
        " MC ",
        " VAN ",
        " VON "    ]
    
    
    //Table 6 - Words that are not used in the RFC of physical persons
    let wordsNotUseRFCNaturalPerson = [
        "D",
        "DEL",
        "LA",
        "LOS",
        "LAS",
        "Y",
        "MC",
        "MAC",
        "VON",
        "VAN"
    ]
    
    //
    let numbersString = [
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "0"
    ]
    
    //
    
    
    //
    let letterValidationTable = [
        
        "Ñ",
        "A",
        "B",
        "C",
        "D",
        "E",
        "F",
        "G",
        "H",
        "I",
        "J",
        "K",
        "L",
        "M",
        "N",
        "O",
        "P",
        "Q",
        "R",
        "S",
        "T",
        "U",
        "V",
        "W",
        "X",
        "Y",
        "Z" ]
    
    //

    //
}

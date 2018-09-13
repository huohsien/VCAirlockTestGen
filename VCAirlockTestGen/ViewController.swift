//
//  ViewController.swift
//  VCAirlockTestGen
//
//  Created by victor on 2018/9/13.
//  Copyright © 2018 VHHC Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //: Playground - noun: a place where people can play
        
        
        var toBeParsed: String = """
Codabar,BarCodeGetSymbology(Codabar),,,
,enable,V,TRUE,"0, 1"
,"transmitCheckDigit
(0, 1)",V,TRUE,"0, 1"
,"verifyCheckDigit
(0-3)",V,None,0 - 3
,"notisEditingType
(0-2)",V,None,0 - 2
,"length1
(0-55)",V,4,0 - 55
,"length2
(0-55)",V,55,0 - 55
,"clsiEditing
(0,1)",V,FALSE,"0, 1"
,notisEditing,N,NotSupport,-1
Code11,BarCodeGetSymbology(Code11),,,
,enable,V,TRUE,"0, 1"
,"length1
(0-55)",V,4,0 - 55
,"length2
(0-55)",V,55,0 - 55
,numberOfCheckDigits,V,None,0 - 2
,"transmitCheckDigit
(0, 1)",V,FALSE,"0, 1"
Code39,BarCodeGetSymbology(Code39),,,
,enable,V,TRUE,"0, 1"
,"length1
(0-55)",V,4,0 - 55
,"length2
(0-55)",V,55,0 - 55
,"checkDigitVerification
(boolean)",V,FALSE,"0, 1"
,"transmitCheckDigit
(boolean)",V,FALSE,"0, 1"
,"fullASCII
(boolean)",V,FALSE,"0, 1"
,"convertToCode32
(boolean)",V,FALSE,"0, 1"
,"convertToCode32Prefix
(boolean)",V,FALSE,"0, 1"
TriopticCode39,BarCodeGetSymbology(TriopticCode39),,,
,enable,V,FALSE,"0, 1"
Code93,BarCodeGetSymbology(Code93),,,
,enable,V,TRUE,"0, 1"
,"length1
(0-55)",V,4,0 - 55
,"length2
(0-55)",V,55,0 - 55
Code128,BarCodeGetSymbology(Code128),,,
,enable,V,TRUE,"0, 1"
,securityLevel,N,NotSupport,-1
,length1 (int),V,4,0 - 55
,length2 (Int),V,55,0 - 55
GS1128,BarCodeGetSymbology(GS1128),,,
,enable,V,TRUE,"0, 1"
,"fieldSeparator
(>=0)",V,Blank,0+
,"enableApplicationIdentifier
(boolean)",V,FALSE,"0, 1"
"applicationIdentifierMark1
(string)",,V,Blank,
"applicationIdentifierMark2
(string)",,V,Blank,
ISBT128,BarCodeGetSymbology(ISBT128),,,
,enable,V,TRUE,"0, 1"
,"concatenation
(0, 1, 2)",V,Auto,"0, 1, 2"
,"concatenationRedundancy
(2 - 20)",V,10,2 - 20
Chinese2Of5,BarCodeGetSymbology(Chinese2Of5),,,
,enable,V,TRUE,"0, 1"
Industrial2Of5,BarCodeGetSymbology(Industrial2Of5),,,
,enable,V,TRUE,"0, 1"
,"length1
(0-55)",V,4,0 - 55
,"length2
(0-55)",V,55,0 - 55
Interleaved2Of5,BarCodeGetSymbology(Interleaved2Of5),,,
,enable,V,TRUE,"0, 1"
,"length1
(0-55)",V,4,0 - 55
,"length2
(0-55)",V,55,0 - 55
,checkDigitVerification,V,Disable,"0, 1, 2"
,transmitCheckDigit(boolean),V,FALSE,"0, 1"
,"convertToEan13
(boolean)",V,FALSE,"0, 1"
,SecurityLevel,,One,
Matrix2Of5,BarCodeGetSymbology(Matrix2Of5),,,
,enable,V,TRUE,"0, 1"
,"length1
(0-55)",V,4,0 - 55
,"length2
(0-55)",V,55,0 - 55
,"redundancy
(boolean)",V,FALSE,"0, 1"
,"checkDigitVerification
(boolean)",V,FALSE,"0, 1"
,"transmitCheckDigit
(boolean)",V,FALSE,"0, 1"
Korean3Of5,BarCodeGetSymbology(Korean3Of5),,,
,enable,V,FALSE,"0, 1"
UccCoupon,BarCodeGetSymbology(UccCoupon),,,
,enable,V,FALSE,"0, 1"
GS1DataBar14,BarCodeGetSymbology(GS1DataBar14),,,
,enable,V,TRUE,"0, 1"
,"convertToUpcEan
(boolean)",V,FALSE,"0, 1"
,"securityLevel
(0-3)",V,1,0 - 3
GS1DataBarLimited,BarCodeGetSymbology(GS1DataBarLimited),,,
,enable,V,TRUE,"0, 1"
,"convertToUpcEan
(boolean)",V,FALSE,"0, 1"
,"securityLevel
(1 - 4)",V,3,1 - 4
GS1DataBarExpanded,BarCodeGetSymbology(GS1DataBarExpanded),,,
,enable,V,TRUE,"0, 1"
,"fieldSeparator
(>=0)",V,Blank,0+
,"securityLevel
(0-3)",V,1,0 - 3
Msi,BarCodeGetSymbology(Msi),,,
,enable,V,TRUE,"0, 1"
,"length1
(0-55)",V,4,0 - 55
,"length2
(0-55)",V,55,0 - 55
,"checkDigitOption
(1, 2)",V,OneDigit,"1, 2"
,"transmitCheckDigit
(boolean)",V,FALSE,"0, 1"
,"checkDigitAlgorithm
(1, 2)",V,DoubleModulo_10,"1, 2"
Ean8,BarCodeGetSymbology(Ean8),,,
,enable,V,TRUE,"0, 1"
,"addon2
(1, 2)",V,IgnoresAddons,"1, 2"
,"addon5
(1, 2)",V,IgnoresAddons,"1, 2"
,"transmitCheckDigit
(boolean)",V,TRUE,"0, 1"
,"convertToEan13
(boolean)",V,FALSE,"0, 1"
Ean13,BarCodeGetSymbology(Ean13),,,
,enable,V,TRUE,"0, 1"
,"addon2
(1, 2)",V,IgnoresAddons,"1, 2"
,"addon5
(1, 2)",V,IgnoresAddons,"1, 2"
,"convertToISBN
(boolean)",V,FALSE,"0, 1"
,"convertToISSN
(boolean)",V,FALSE,"0, 1"
,"booklandISBNFormat
(0, 1)",V,ISBN_10,"0, 1"
,"transmitCheckDigit
(boolean)",V,TRUE,"0, 1"
UpcA,BarCodeGetSymbology(UpcA),,,
,enable,V,TRUE,"0, 1"
,"addon2
(1, 2)",V,IgnoresAddons,"1, 2"
,"addon5
(1, 2)",V,IgnoresAddons,"1, 2"
,"transmitCheckDigit
(boolean)",V,TRUE,"0, 1"
,transmitSystemNumber,V,SysNumOnly,"0, 1, 2"
,"convertToEan13
(boolean)",V,FALSE,"0, 1"
UpcE,BarCodeGetSymbology(UpcE),,,
,enable,V,TRUE,"0, 1"
,"addon2
(1, 2)",V,IgnoresAddons,"1, 2"
,"addon5
(1, 2)",V,IgnoresAddons,"1, 2"
,"transmitCheckDigit
(boolean)",V,TRUE,"0, 1"
,transmitSystemNumber,V,SysNumOnly,"0, 1, 2"
,"convertToUpcA
(boolean)",V,FALSE,"0, 1"
UpcE1,BarCodeGetSymbology(UpcE1),,,
,enable,V,FALSE,"0, 1"
,"addon2
(1, 2)",V,IgnoresAddons,"1, 2"
,"addon5
(1, 2)",V,IgnoresAddons,"1, 2"
,"transmitCheckDigit
(boolean)",V,TRUE,"0, 1"
,"transmitSystemNumber
(0, 1, 2)",V,SysNumOnly,"0, 1, 2"
,"convertToUpcA
(boolean)",V,FALSE,"0, 1"
Composite,BarCodeGetSymbology(Composite),,,
,"enableCc_C
(boolean)",V,TRUE,"0, 1"
,"enableCc_AB
(boolean)",V,FALSE,"0, 1"
,"enableTlc39
(boolean)",V,FALSE,"0, 1"
,"enableUpcMode
(0, 1, 2)",V,AlwaysLinksUPC,"0, 1, 2"
,"enableEmulationMode
(boolean)",V,FALSE,"0, 1"
USPostal,BarCodeGetSymbology(USPostal),,,
,"enablePlanet
(boolean)",V,TRUE,"0, 1"
,"enablePostnet
(boolean)",V,TRUE,"0, 1"
,"transmitCheckDigit
(boolean)",V,TRUE,"0, 1"
UKPostal,BarCodeGetSymbology(UKPostal),,,
,enable,V,TRUE,"0, 1"
,"transmitCheckDigit
(boolean)",V,TRUE,"0, 1"
JapanPostal,BarCodeGetSymbology(JapanPostal),,,
,enable,V,TRUE,"0, 1"
AustralianPostal,BarCodeGetSymbology(AustralianPostal),,,
,enable,V,TRUE,"0, 1"
DutchPostal,BarCodeGetSymbology(DutchPostal),,,
,enable,V,TRUE,"0, 1"
USPSPostal,BarCodeGetSymbology(USPSPostal),,,
,enable,V,TRUE,"0, 1"
UPUFICSPostal,BarCodeGetSymbology(UPUFICSPostal),,,
,enable,V,TRUE,"0, 1"
Plessey,BarCodeGetSymbology(Plessey),,,Null
,enable,,,
,"unconventionalStop
(boolean)",,,
,"transmitCheckDigit
(boolean)",,,
,length1,,,
,length2,,,
Telepen,BarCodeGetSymbology(Telepen),,,Null
,enable,,,
,"format
(0, 1)",,,
,length1,,,
,length2,,,
Aztec,BarCodeGetSymbology(Aztec),,,
,enable,V,TRUE,"0, 1"
DataMatrix,BarCodeGetSymbology(DataMatrix),,,
,enable,V,TRUE,"0, 1"
,"fieldSeparator
(>=0)",V,Blank,0+
,mirrorImage,V,Never,"0, 1, 2"
MaxiCode,BarCodeGetSymbology(MaxiCode),,,
,enable,V,TRUE,"0, 1"
PDF417,BarCodeGetSymbology(PDF417),,,
,enable,V,TRUE,"0, 1"
,"transmitMode
(0, 1, 2)",N,NotSupport,-1
,"escapeCharacter
(boolean)",N,NotSupport,-1
,"transmitControlHeader
(boolean)",N,NotSupport,-1
MicroPDF417,BarCodeGetSymbology(MicroPDF417),,,
,enable,V,FALSE,"0, 1"
,"code128Emulation
(boolean)",V,FALSE,"0, 1"
QRCode,BarCodeGetSymbology(QRCode),,,
,enable,V,TRUE,"0, 1"
MicroQR,BarCodeGetSymbology(MicroQR),,,
,enable,V,TRUE,"0, 1"


"""
        struct Record {
            var symbology_name: String
            var param_name: String
            var supported: String
            var default_cl_value: String
            var valid_values: String
            var invalid_values: String
        }
        
//        var table:[Record]
        
        //var symbology_name = [String]()
        //var param_name = [String]()
        //var supported = [String]()
        //var default_cl_value = [String]()
        //var valid_values = [String]()
        //var invalid_values = [String]()
        
//        var currentSymbology: String
        var hasOpeningQuote = false
        
        var lines: Array = toBeParsed.components(separatedBy: CharacterSet.newlines)
        for i in 0..<lines.count {
            print("#\(i):\(lines[i])")
        }
        for i in 0..<lines.count {
            var line = lines[i]
            // find the first quotation mark in the line by traversing characters in the string
            let firstIndex = line.startIndex
            for i in 0..<line.count {
                
                let charater = line[line.index(firstIndex, offsetBy: i)]
               
                if charater == "\"" {
                    if hasOpeningQuote == false {
                        hasOpeningQuote = true
                    } else {
                        hasOpeningQuote = false
                    }
                }
                
                if charater == "," && hasOpeningQuote {
                    // need to change comma to something else so in the next step it won't confuse the parser
                    // ### IMPORTANT #### CHECK IF "|" EVER OCCURS IN THE STRING!!!!
                    
                    line.remove(at: line.index(line.startIndex, offsetBy: i))
                    line.insert("|", at: line.index(line.startIndex, offsetBy: i))
                }
            }
            // update processed line
            lines[i] = line
        }
        
        var quotationMarkProcessedLines = [String]()
        var isSkipingLine = false
        
        for i in 0..<lines.count {
            
            if isSkipingLine {
                isSkipingLine = false
                continue
            }
            var quotationMarkProcessedLine = lines[i]

            let fields = lines[i].components(separatedBy: ",")
            if let lastField = fields.last {
                if lastField.contains("\"") {
                    if i < lines.count - 1 {
                        let nextLine = lines[i+1]
                        let fieldsOfNextLine = nextLine.components(separatedBy: ",")
                        if let firstFieldOfNextLine = fieldsOfNextLine.first {
                            if firstFieldOfNextLine.contains("\"") {
                                // need to move the next line to the end of the current line
                                quotationMarkProcessedLine.append(nextLine)
                                quotationMarkProcessedLines.append(quotationMarkProcessedLine)
                                isSkipingLine = true
                                continue
                            }
                        }
                    }
                }
            }
            quotationMarkProcessedLines.append(quotationMarkProcessedLine)
        }

        for i in 0..<quotationMarkProcessedLines.count {
            print(quotationMarkProcessedLines[i])
        }
        
        
        
        
        
//        for i in 0..<rows.count {
//
//            let row: String = rows[i]
//            let columns = row.components(separatedBy: ",") // line based parsing
//            if !columns[0].isEmpty { // the first column exist then this line is for symbology name
//                if let firstColumn = columns.first {
//                    if firstColumn.hasSuffix("\"") {
//                        continue
//                    } else {
//                        print("********\(columns[0])*******")
//                        currentSymbology = columns[0]
//                        continue
//                    }
//                }
//            }
//
//            print("\(row)\n------------")
//
//        }
        
    }

}


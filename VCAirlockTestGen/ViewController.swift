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
        
        let delimiter: Character = "|"
        let toBeParsed: String = """
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
        class Record {
            
            var symbology_name: String? = nil
            var param_name: String? = nil
            var supported: String? = nil
            var default_cl_value: String? = nil
            var valid_values: String? = nil
            var invalid_values: String? = nil

            func cleanUPAllFields() {
                self.symbology_name = nil
                self.param_name = nil
                self.supported = nil
                self.default_cl_value = nil
                self.valid_values = nil
                self.invalid_values = nil
            }
        }
        
        var table = [Record]()
        var currentSymbology: String
        var hasOpeningQuote = false
        
        var lines: Array = toBeParsed.components(separatedBy: CharacterSet.newlines)

        for i in 0..<lines.count {
            var line = lines[i]
            
            // find the quotation mark pairs and if there is a nextline character between a pair of quatation marks then remove the first item in the nextline and merge everything else in the next line into the current line to form a record
            let firstIndex = line.startIndex
            for i in 0..<line.count {
                
                // character for traversing the string
                let charater = line[line.index(firstIndex, offsetBy: i)]
               
                // flaging for occurrence of a quotation mark
                if charater == "\"" {
                    if hasOpeningQuote == false {
                        hasOpeningQuote = true
                    } else {
                        hasOpeningQuote = false
                    }
                }
                
                // find comma in a pair of quotation marks, replace it with some delimiter that never appear in the string. so the followind code can use comma and next line character to extract a table of records
                if charater == "," && hasOpeningQuote {
                    // need to change comma to something else so in the next step it won't confuse the parser
                    // ### IMPORTANT #### CHECK IF "|" EVER OCCURS IN THE STRING!!!!
                    
                    line.remove(at: line.index(line.startIndex, offsetBy: i))
                    line.insert(delimiter, at: line.index(line.startIndex, offsetBy: i))
                }
            }
            // update processed line
            lines[i] = line
        }
        
        // variable to store the result
        var quotationMarkProcessedLines = [String]()
        //flag when finding a multi-line record
        var isSkipingLine = false
        
        for i in 0..<lines.count {
            
            if isSkipingLine {
                isSkipingLine = false
                continue
            }
            //default value
            var quotationMarkProcessedLine = lines[i]

            let fields = lines[i].components(separatedBy: ",")
            if let lastField = fields.last {
                if lastField.contains("\"") {
                    if i < lines.count - 1 {
                        var nextLine = lines[i+1]
                        let fieldsOfNextLine = nextLine.components(separatedBy: ",")
                        if let firstFieldOfNextLine = fieldsOfNextLine.first {
                            if firstFieldOfNextLine.contains("\"") {
                                // need to move the next line with no first field to the end of the current line
                                let fieldsOfNextLine = nextLine.split(separator: ",")
                                if let firstFieldsOfNextLine = fieldsOfNextLine.first {
                                    let indexOfFirstCharacter = nextLine.index(nextLine.startIndex, offsetBy: firstFieldsOfNextLine.count)
                                    // the rest of the content in the second line of this two-line record except for the first field which is redundant and useless
                                    
                                    nextLine = "\(nextLine[indexOfFirstCharacter...])"
                                    
                                }
                                // merge the processed two lines into one line/record
                                quotationMarkProcessedLine.append(nextLine)
                                isSkipingLine = true
                            }
                        }
                    }
                }
            }
            quotationMarkProcessedLines.append(quotationMarkProcessedLine)
        }

        var record: Record
        
        currentSymbology = ""
        
        for i in 0..<quotationMarkProcessedLines.count {
            
            var fields = quotationMarkProcessedLines[i].components(separatedBy: ",")
            
            if !fields.first!.isEmpty {
                
                // it is a symbology defining line. So we got a new symbology
                currentSymbology = fields.first!
//                print("********\(currentSymbology)********")
                
                
            } else if fields.count > 1 {
                record = Record()

                // It is not a symbology defining line but a line that describes property such as its name, supported or not, default valuen and valid values
                
                for j in 1..<fields.count {
                    // loop through all fields of a property
                    fields[j] = fields[j].replacingOccurrences(of: "\"", with: "")
                    
                    //remove white spaces. I don't really understand it but cut it from StackOverflow!
                    fields[j] = String(fields[j].filter { !" ".contains($0) })

//                    let delimiter = j < fields.count - 1 ? "," : ""
//                    print("\(fields[j])\(delimiter)", separator: "", terminator: "")
                }
                // set current symbology
                record.symbology_name = currentSymbology
                
                // set fields of the property defined in this line
                
                // param_name
                record.param_name = fields[1]
                
                // supported or not
                if fields[2].contains("V") {
                    record.supported = "true"
                } else if fields[2].contains("false") {
                    record.supported = "false"
                } else if fields[2].contains("N") {
                    record.supported = "false"
                } else if fields[2].isEmpty {
                    record.supported = "false"
                } else {
                    print("\n************************************************************\n************************ ERROR: \(currentSymbology)-\(fields[1]) ************************")
                    break
                }
                
                // default value
                record.default_cl_value = fields[3]
                
                // valid value
                
                var normalizedString = fields[4]
                normalizedString = normalizedString.replacingOccurrences(of: String(delimiter), with: ",")
                
                record.valid_values = fields[4]

//                print("")
                if i > 0 {
                    table.append(record)
                }
            }
        }
        
        for i in 0..<table.count {
            let record = table[i]
            
            //transform valid values expression to array expression
            
            // deal with explicitly enumerating set
            if record.valid_values!.contains(delimiter) {
                record.valid_values = record.valid_values!.replacingOccurrences(of: String(delimiter), with: ",")
                
                // update invalid value from enumeration type of valid value
                let values = record.valid_values!.components(separatedBy: ",")
                var min = 1000000000000000
                var max = -10000000000000000
                for value in values {
                    if Int(value)! <= min {
                        min = Int(value)!
                    }
                    if Int(value)! >= max {
                        max = Int(value)!
                    }
                }
                if record.invalid_values == nil {
                    record.invalid_values = "[\(min - 1),\(max + 1)]"
                }
                
                record.valid_values = "[\(record.valid_values!)]"
            } else if record.valid_values!.contains("-") && !record.valid_values!.components(separatedBy: "-")[0].isEmpty { // deal with range expression and rule out number wtih a negative sign
                
                let endPoints = record.valid_values!.components(separatedBy: "-")
                if endPoints.count != 2 {
                    print("\n************************************************************\n************************ ERROR ************************")
                    break
                }
                let startNumber: Int! = Int(endPoints[0])
                let endNumber: Int! = Int(endPoints[1])
                
                // update invalid value from range type of valid value
                if record.invalid_values == nil {
                    record.invalid_values = "[\(startNumber - 1),\(endNumber + 1)]"
                }
                
                // update invalid values
                record.invalid_values = "[\(startNumber - 1), \(endNumber + 1)]"
                
                if abs(startNumber - endNumber) <= 4 {
                    var rangeString = "["
                    for i in startNumber...endNumber {
                        rangeString.append("\(i)")
                        if i != endNumber {
                            rangeString.append(",")
                        }
                    }
                    rangeString.append("]")
                    
                    record.valid_values = rangeString
                } else {
                    record.valid_values = "[\(startNumber!),\(endNumber!)]"
                }
                
            } else { // single value I suppose
                
                if record.valid_values == "0+" {
                    record.valid_values = "[0,128]"
                    record.invalid_values = "-1"

                } else {
                    if record.valid_values == "" {
                        print("******************* ERROR NO VALUE: \(record.symbology_name!):\(record.param_name!) *******************")
                        record.supported = nil // to skip this record with a format unclear
                        continue
                    }
                    record.invalid_values = "[\(Int(record.valid_values!)! - 1),\(Int(record.valid_values!)! + 1)]"
                }
            }
            
            // normalize string for default value
            record.default_cl_value = record.default_cl_value?.lowercased()
            
            print("\(i)->Symbology:\(record.symbology_name!)\tProperty: \(record.param_name!)\tSupport: \(record.supported!)\tDefault Value:\(record.default_cl_value!)\tValid values: \(record.valid_values!)")
        }
        
        print("-------------------------------------------------")
        
        var lastSymbologyName = ""
        for i in 0..<table.count {
            
            let record = table[i]

            if record.supported == nil {
                continue
            }
            
            if (record.symbology_name != lastSymbologyName) {
                print("\n// \(record.symbology_name!)")
                lastSymbologyName = record.symbology_name!
            }
            print("this.addSymbologyData(\"\(record.symbology_name!)\",\"\(record.param_name!)\", \(record.supported!), \(record.default_cl_value!), \(record.valid_values!), \(record.invalid_values!));")
            
        }
    }
    

}


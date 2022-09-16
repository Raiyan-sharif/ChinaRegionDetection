//
//  TimeStamp.swift
//  ChinaRegionDetection
//
//  Created by BJIT on 14/9/22.
//

import Foundation

class TimeStamp {
    var localTimeZoneIdentifier: String { return TimeZone.current.identifier }
    var localTimeZoneDescription: String { return TimeZone.current.description }
    var localTimeZoneAbbreviation: String { return TimeZone.current.abbreviation() ?? "" }
    var aLocalTimeZoneIdentifier: String { return TimeZone.autoupdatingCurrent.identifier }
    var aLocalTimeZoneDescription: String { return TimeZone.autoupdatingCurrent.description }
    var aLocalTimeZoneAbbreviation: String { return TimeZone.autoupdatingCurrent.abbreviation() ?? "" }
    var timeZoneAbbreviations: [String:String] { return TimeZone.abbreviationDictionary }
    var timeZoneIdentifiers: [String] { return TimeZone.knownTimeZoneIdentifiers }
    
    func printTimeZone() {
//        print(localTimeZoneIdentifier)
//        print(localTimeZoneDescription)
//        print(localTimeZoneAbbreviation)
//        print(timeZoneAbbreviations)
//        print(timeZoneIdentifiers)

        let locale = Locale.current
//        let unsortedCountries = Locale.isoRegionCodes.map {   locale.localizedString(forRegionCode: $0)! }
        let china_region = TimeZone.abbreviationDictionary
        
        let regionDictionary: [String] = ["Asia/Shanghai", "Asia/Urumqi", "Asia/Harbin", "Asia/Chongqing", "Asia/Kashgar"]
//        print(china_region)
//        print(locale.calendar.identifier)
        let cnLanguage = Locale(identifier: "en_US_POSIX").localizedString(forLanguageCode: "zh")
//        for i in TimeZone.knownTimeZoneIdentifiers{
//            if(cnLanguage == "Chinese"){
            if(regionDictionary.contains(TimeZone.autoupdatingCurrent.identifier)){
                print("\(TimeZone.autoupdatingCurrent.identifier) Inside China")
            }
            else{
                print("\(TimeZone.autoupdatingCurrent.identifier) Outside China")
            }
//            }
//        }
        print(localTimeZoneIdentifier)
        print(TimeZone.autoupdatingCurrent.identifier)
        print(TimeZone.knownTimeZoneIdentifiers.contains(where: { $0 == "Asia/Shanghai"
        }))
//        let  sortedCountries = unsortedCountries.sorted() as NSArray
//        print(sortedCountries) // list of countries
        //print(locale.regionCode)
//        print(locale.localizedString(forRegionCode: locale.regionCode!))
    }

    func isUserInChina() -> Bool {
        return localTimeZoneAbbreviation == "GMT+6" ? (false) : (true)
    }
}

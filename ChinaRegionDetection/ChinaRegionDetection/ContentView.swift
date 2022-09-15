//
//  ContentView.swift
//  ChinaRegionDetection
//
//  Created by BJIT on 14/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var timeStamp: TimeStamp = TimeStamp()
    var body: some View {
        Button(action: {
            timeStamp = TimeStamp()
            timeStamp.printTimeZone()
            
        }, label: {
            Text("Tap")
        })
        Text("\(timeStamp.aLocalTimeZoneAbbreviation)\n\(timeStamp.aLocalTimeZoneDescription)\n\(timeStamp.localTimeZoneIdentifier)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

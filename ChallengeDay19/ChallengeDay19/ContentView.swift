//
//  ContentView.swift
//  ChallengeDay19
//
//  Created by Maegan Wilson on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedConversion = "length"
    @State private var inputUnits: UnitLength = UnitLength.miles
    @State private var outputUnits: UnitLength = UnitLength.miles
    @State private var inputAmount: Double = 0.0

    var outputAmount: Double {
        let input = Measurement(value: inputAmount, unit: inputUnits)
        return input.converted(to: outputUnits).value
    }

    let choices: [String: [UnitLength]] = ["length": [UnitLength.meters, UnitLength.kilometers, UnitLength.feet, UnitLength.yards, UnitLength.miles]
//                                       "temp": ["celsius", "fahrenheit", "kelvin"],
//                                       "time": ["seconds", "minutes", "hours", "days"],
//                                       "volume": ["milliliters", "liters", "cups", "pints", "gallons"]
    ]
    var body: some View {
        Form {
            Section {
                Picker("Input units", selection: $inputUnits) {
                    ForEach(choices["length"]!, id: \.self) {
                        Text($0.description)
                            .tag($0)
                    }
                }.pickerStyle(.menu)

                TextField("Input value", value: $inputAmount, format: .number)
                    .keyboardType(.decimalPad)
            } header: {
                Text("Input")
            }

            Section {
                Picker("Output units", selection: $outputUnits) {
                    ForEach(choices["length"]!, id: \.self) {
                        Text($0)
                            .tag($0)
                    }
                }.pickerStyle(.menu)
                Text(outputAmount, format: .number)
            } header: {
                Text("Output")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

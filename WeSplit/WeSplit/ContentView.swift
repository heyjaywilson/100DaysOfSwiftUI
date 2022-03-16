//
//  ContentView.swift
//  WeSplit
//
//  Created by Maegan Wilson on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var amountIsFocused: Bool

    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20

    var totalCheck: Double {
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection

        return checkAmount + tipValue
    }

    var totalPerPerson: Double  {
        let peopleCount = Double(numberOfPeople)

        let perPersonAmount = totalCheck / peopleCount

        return perPersonAmount
    }


    let formatter = FloatingPointFormatStyle<Double>.Currency.currency(code: Locale.current.currencyCode ?? "USD")

    @State private var name = ""
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: formatter)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)

                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                                .tag($0)
                        }
                    }
                }

                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< 101) {
                            Text($0, format: .percent)
                        }
                    }
                } header: {
                    Text("How much tip do you want to leave?")
                }

                Section {
                    Text(totalCheck, format: formatter)
                } header: {
                    Text("Total Check")
                }

                Section {
                    Text(totalPerPerson, format: formatter)
                } header: {
                    Text("Amount per person")
                }
            }.navigationTitle("WeSplit")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()

                        Button("Done") {
                            amountIsFocused = false
                        }.foregroundColor(.red)
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

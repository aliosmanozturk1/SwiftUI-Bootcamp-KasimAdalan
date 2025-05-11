//
//  ContentView.swift
//  Project_04_Widgets
//
//  Created by Ali Osman Öztürk on 11.05.2025.
//

import SwiftUI

struct MainView: View {
    @State private var textField = ""
    @State private var text = ""
    @State private var pictureName = "mutlu"
    @State private var switchValue = false
    @State private var pickerSelection = 0
    @State private var stepperSelection = 0
    @State private var sliderSelection = 50.0
    @State private var date = Date()
    @State private var time = Date()
    @State private var countryList = [String]()
    @State private var selectedCountry = ""
    
    var body: some View {
        VStack {
            Text(text)
            
            TextField("Veri giriniz", text: $textField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Oku") {
                text = textField
            }
            
            HStack {
                Button("Picture 1") {
                    pictureName = "mutlu"
                }
                
                Image(pictureName)
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Button("Picture 2") {
                    pictureName = "uzgun"
                }
            }
            
            Toggle("SwiftUI", isOn: $switchValue)
                .onChange(of: switchValue) { _, value in
                    print("Switch değeri: \(value)")
                }
                .padding()
            
            Picker("Lütfen Yemeği Seçin", selection: $pickerSelection) {
                Text("Yemekler").tag(0)
                Text("İçecekler").tag(1)
                Text("Tatlılar").tag(2)
            }.pickerStyle(.segmented)
                .onChange(of: pickerSelection) { _, value in
                    print("Picker Selected: \(value)")
                }
                .padding()
            
            Text(String(stepperSelection))
            
            Stepper("Stepper", value: $stepperSelection, in: 0...10)
                .padding()
            
            Text(String(Int(sliderSelection)))
            
            Slider(value: $sliderSelection, in: 0...100)
                .padding()
            
            Text("Bir kere tıkla...")
                .onTapGesture {
                    print("Bir kere tıklandı.")
                }
            Text("Çift tıkla...")
                .onTapGesture(count: 2) {
                    print("Çift tıklandı.")
                }
            
            DatePicker("Saat", selection: $time, displayedComponents: [.hourAndMinute])
                .padding()
            DatePicker("Tarih", selection: $date, displayedComponents: [.date])
                .padding()
            
            Picker("Select Country", selection: $selectedCountry) {
                ForEach(countryList, id: \.self) { country in
                    Text(country)
                }
            }.onAppear {
                countryList = ["Türkiye", "Almanya", "Amerika"]
                selectedCountry = countryList.first ?? ""   // En az bir öğe ile eşleştir
            }

            Button("Terminalde Print Et") {
                print("Switch State     : \(switchValue)")
                print("Segmented State  : \(pickerSelection)")
                print("Stepepr State    : \(stepperSelection)")
                print("Slider State     : \(sliderSelection)")
                print("Picker State     : \(selectedCountry)")
                
                let tf = DateFormatter()
                tf.dateFormat = "HH:mm"
                let alinanSaat = tf.string(from: time)
                print("Saat             : \(alinanSaat)")
                
                let tf2 = DateFormatter()
                tf2.dateFormat = "MM/dd/yyyy"
                let alinanTarih = tf2.string(from: date)
                print("Tarih            : \(alinanTarih)")
            }
        }
    }
}

#Preview {
    MainView()
}

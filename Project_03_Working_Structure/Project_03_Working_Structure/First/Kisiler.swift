//
//  Users.swift
//  Project_03_Working_Structure
//
//  Created by Ali Osman Öztürk on 11.05.2025.
//

class Kisiler {
    var isim: String?
    var yas: Int?
    var boy: Double?
    var bekar: Bool?
    
    init() {
        
    }
    
    init(isim: String? = nil, yas: Int? = nil, boy: Double? = nil, bekar: Bool? = nil) {
        self.isim = isim
        self.yas = yas
        self.boy = boy
        self.bekar = bekar
    }
}

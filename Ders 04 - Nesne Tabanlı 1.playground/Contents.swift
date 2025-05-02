import UIKit

class Araba {
    var renk: String?
    var hiz: Int?
    var calisiyorMu: Bool?
    
    init() {
        print("Boş init metodu çalıştı")
    }
    
    init(renk: String, hiz: Int, calisiyorMu: Bool) {
        self.renk = renk
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu // Shadowing
        print("Dolu init metodu çalıştı")
    }
    
    func calistir() { // Side Effect
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur() {
        calisiyorMu = true
        hiz = 0
    }
    
    func hizlan(kacKm:Int) {
        hiz! += kacKm //hiz = hiz! + kackm
    }
    
    func yavasla(kacKm:Int) {
        hiz! -= kacKm //hiz = hiz! - kackm
    }
    
    func bilgiAl() {
        print("-----------------------")
        print("Renk         : \(renk!)")
        print("Hız          : \(hiz!)")
        print("Çalışıyor mu : \(calisiyorMu!)")
    }
}

// Nesne oluşturma
var bmw = Araba()
var sahin = Araba()

// Değer Atama
bmw.renk = "Kırmızı"
bmw.hiz = 200
bmw.calisiyorMu = true

sahin.renk = "Siyah"
sahin.hiz = 0
sahin.calisiyorMu = false

// Değer Okuma
print("Renk         : \(bmw.renk!)")
print("Hız          : \(bmw.hiz!)")
print("Çalışıyor Mu : \(bmw.calisiyorMu!)")
print("-----------------------")
print("Renk         : \(sahin.renk!)")
print("Hız          : \(sahin.hiz!)")
print("Çalışıyor Mu : \(sahin.calisiyorMu!)")

// Fonksiyonla bilgi Okuma
bmw.bilgiAl()
sahin.bilgiAl()

// Durdurma
bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()

//Çalıştırma
sahin.bilgiAl()
sahin.calistir()
sahin.bilgiAl()

// Hızlanma
sahin.hizlan(kacKm: 100)
sahin.bilgiAl()

// Yavaşlama
sahin.yavasla(kacKm: 50)
sahin.bilgiAl()


// ------------------
// Normalde bmw=araba() dediğimizde () boş constructor'ı çağırıyor. Constructor aslında init diyebiliriz.

var mercedes = Araba(renk: "Kırmızı", hiz: 100, calisiyorMu: true)



class Fonksiyonlar {
    //Geri dönüş değeri olmayan ( void )
    func selamla1(){
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    //Geri dönüş değeri olan ( return )
    func selamla2() -> String {
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    
    //parametre
    func selamla3(isim:String){
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    func toplama(sayi1:Int,sayi2:Int) -> Int {
        let toplam = sayi1 + sayi2
        return toplam
    }
    
    //Overloading
    func carpma(sayi1:Int,sayi2:Int) {
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Double,sayi2:Double) {
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Int,sayi2:Int,isim:String) {
        print("Çarpma : \(sayi1 * sayi2) - İşlemi yapan : \(isim)")
    }
}

let f = Fonksiyonlar()

f.selamla1()

let gelenSonuc = f.selamla2()
print("Gelen Sonuç : \(gelenSonuc)")


f.selamla3(isim: "Zeynep")


let gelenToplam = f.toplama(sayi1: 10, sayi2: 20)
print("Gelen Toplam : \(gelenToplam)")

f.carpma(sayi1: 3, sayi2: 5, isim: "Zeynep")

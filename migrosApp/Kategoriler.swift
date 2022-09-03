//
//  Kategoriler.swift
//  migrosApp
//
//  Created by Arif Celebi on 3.09.2022.
//

import Foundation


class kategoriler {
    
    var kategoriId:Int?
    var kategoriAdi:String?
    var kategoriResimAdi:String?
    
    
    init(kategoriId: Int, kategoriAdi: String, kategoriResimAdi: String) {
        
        
       self.kategoriId = kategoriId
       self.kategoriAdi = kategoriAdi
       self.kategoriResimAdi = kategoriResimAdi
   }
}

//
//  ViewController.swift
//  migrosApp
//
//  Created by Arif Celebi on 30.08.2022.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var kategoriCollectionView: UICollectionView!
    var kategoriListesi = [kategoriler]()
   

     
        
    
    
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var image3: UIImageView!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        image1.layer.cornerRadius = 5
        image1.layer.masksToBounds = true
    
        image2.layer.cornerRadius = 5
        image2.layer.masksToBounds = true
        
        image3.layer.cornerRadius = 5
        image3.layer.masksToBounds = true
        
      
        let f1 = kategoriler(kategoriId: 1, kategoriAdi: "Meyve-Sebze", kategoriResimAdi: "meyve")
        let f2 = kategoriler(kategoriId: 2, kategoriAdi: "Et,Tavuk", kategoriResimAdi: "et")
        let f3 = kategoriler(kategoriId: 3, kategoriAdi: "Süt,Kahvaltı", kategoriResimAdi: "süt")
        let f4 = kategoriler(kategoriId: 4, kategoriAdi: "Temel Gıda", kategoriResimAdi: "temel gıda")
        let f5 = kategoriler(kategoriId: 5, kategoriAdi: "Dondurma", kategoriResimAdi: "dondurma")
        let f6 = kategoriler(kategoriId: 6, kategoriAdi: "Hazır Yemek", kategoriResimAdi: "hazır yemek")
        let f7 = kategoriler(kategoriId: 7, kategoriAdi: "Dondurma", kategoriResimAdi: "dondurma")
        let f8 = kategoriler(kategoriId: 8, kategoriAdi: "Atıştırmalık", kategoriResimAdi: "atıştırmalık")
        let f9 = kategoriler(kategoriId: 9, kategoriAdi: "İçecek", kategoriResimAdi: "icecek")
        let f10 = kategoriler(kategoriId: 10, kategoriAdi: "Temizlik", kategoriResimAdi: "temizlik")
        let f11 = kategoriler(kategoriId: 11, kategoriAdi: "Kişisel Bakım", kategoriResimAdi: "bakım")
        let f12 = kategoriler(kategoriId: 12, kategoriAdi: "Pet Shop", kategoriResimAdi: "pet shop")
        let f13 = kategoriler(kategoriId: 13, kategoriAdi: "Ev", kategoriResimAdi: "ev")
        let f14 = kategoriler(kategoriId: 14, kategoriAdi: "Kırtasiye", kategoriResimAdi: "kitap")
        let f15 = kategoriler(kategoriId: 15, kategoriAdi: "Çiçek", kategoriResimAdi: "çiçek")
        let f16 = kategoriler(kategoriId: 16, kategoriAdi: "Elektronik", kategoriResimAdi: "elektronik")
        
   
        kategoriListesi.append(f1)
        kategoriListesi.append(f2)
        kategoriListesi.append(f3)
        kategoriListesi.append(f4)
        kategoriListesi.append(f5)
        kategoriListesi.append(f6)
        kategoriListesi.append(f7)
        kategoriListesi.append(f8)
        kategoriListesi.append(f9)
        kategoriListesi.append(f10)
        kategoriListesi.append(f11)
        kategoriListesi.append(f12)
        kategoriListesi.append(f13)
        kategoriListesi.append(f14)
        kategoriListesi.append(f15)
        kategoriListesi.append(f16)
        
        
        
        let tasarim = UICollectionViewFlowLayout()
        
        tasarim.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        
        tasarim.minimumInteritemSpacing = 7
        tasarim.minimumLineSpacing = 15
        
        let genislik = self.kategoriCollectionView.frame.size.width
        
        let itemGenislik = (genislik-31)/4
        
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik)
        
        kategoriCollectionView.collectionViewLayout = tasarim
        
        kategoriCollectionView.delegate = self
        kategoriCollectionView.dataSource = self
        
        
    }


}


extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kategoriListesi.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let kategori = kategoriListesi[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "kategoriHucre", for: indexPath) as! KategoriCollectionViewCell
        
        cell.kategoriResimImageView.image = UIImage(named: kategori.kategoriResimAdi!)
        cell.kategoriAdiLabel.text = kategori.kategoriAdi
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 10.0
        
        return cell
        
    }
}


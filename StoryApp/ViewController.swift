//
//  ViewController.swift
//  StoryApp
//
//  Created by Kutman Kakiev on 21/1/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var landmarkText = [String]()
    
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    var chosenLandmarkText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarkNames.append("KTMU")
        landmarkNames.append("Manas Graduate")
        landmarkNames.append("Turism Faculty")
        landmarkNames.append("Library")
        landmarkNames.append("MYO")
        landmarkNames.append("Ogrenci Yurdu")
        
        landmarkImages.append(UIImage(named: "ktmu1")!)
        landmarkImages.append(UIImage(named: "ktmu2")!)
        landmarkImages.append(UIImage(named: "faculty3")!)
        landmarkImages.append(UIImage(named: "library")!)
        landmarkImages.append(UIImage(named: "myo")!)
        landmarkImages.append(UIImage(named: "yurt")!)
        
        
        landmarkText.append("Manas University was founded according to an agreement between the governments of the Republic of Turkey and the Kyrgyz Republic about establishment of Kyrgyz-Turkish Manas University in Bishkek, which was signed in Izmir on September 30, 1995. The agreement was afterward approved by the competent authorities of both countries. The university began operation in the 1997-1998 academic year.")
        
        landmarkText.append("The vision of Institute of Natural Sciences at Kyrgyzstan Turkey Manas University is to be an institution who prepare high qualified professionals and researchers who will contribute to society and the development of our country.")
        
        landmarkText.append("The Faculty of Tourism offers not only theoretical classes in spaces equipped with modern informations technology, but also pays special attention to practice, with culinary laboratories, model hotel rooms, and a bar for students to refine their practical skills. ")
        
        landmarkText.append("TUBITAK ULAKBİM TR Dizin, EBSCOhost, Google Scholar,  The European Reference Index for the Humanities and the Social Sciences (ERIH PLUS), ASOS Sosyal Bilimler İndeksi, Türk Eğitim İndeksi (TEİ), Araştırmax Bilimsel Yayın İndeksi, Akademik Türk Dergileri Dizin Indeksi, Open Academic Journals Index (OAJI), Scientific Indexing Services (SIS), Academic Resource Index (ResearchBib), Sosyal Bilimler Atıf Dizini (SOBIAD), CiteFactor Academic Scientific Journals, Academia.Edu, Cabell's Scholarly Analytics, DRJI Directory of Research Journals Indexing, Idealonline Database.")
        
        landmarkText.append("Kyrgyz-Turkish Manas University was opened as an educational establishment on November 26, 1997, in the main building on Manas Avenue, Bishkek, Kyrgyzstan. Initially the education was conducted in Turkish and English. In 1999-2000 academic year, the academic committee officially founded the School of Foreign Languages. The School of Foreign Languages made its own contribution to improve the quality of education. It updated structure of the academic committee in 2012-2013 and fully meets the standards of modern education. Senior instructor Muhittin Gumush was the first director of this School. Professor Zamira Kasymbekovna Derbisheva was the director of School of Foreign Languages from 2002 to 2014. Associate Professor Taalaibek Abdiev has been the director since March 2014.")
        
        landmarkText.append("Starting in the 2000-2001 academic year, Kyrgyz-Turkish Manas University started to offer dormitory accommodation for students. Students that live in the student dormitories live in an atmosphere of calm, trust, and freedom. Taking everything into account, it is possible to say that our dormitories are the best in the country. We want our students to become well-rounded and developed individuals, so our dormitories are not only a place to live, but a place with lots of sporting, cultural, and social events for students to grow into themselves. These events include poetry readings, discussions, theater performances, celebrations, informational meetings, excursions, and sporting competitions. Thus, students from all around the Turkic world can get to know each other, make new friends, and learn new languages. In the Old Dormitory, which started working in 2000, there are 500 spots, and in the New Dormitory, which was built in 2013, there are 688 spots. ")
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        //content.image = landmarkImages[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        chosenLandmarkText = landmarkText[indexPath.row]
        performSegue(withIdentifier: "secondPage", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondPage" {
            let destinationVC = segue.destination as! Page
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
            destinationVC.selectedLandmarkText = chosenLandmarkText
           
        }
    }
    
    
}


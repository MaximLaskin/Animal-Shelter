//
//  ChoiceOfAnimalViewController.swift
//  Animal Shelter
//
//  Created by Swift on 11.09.2022.
//

import UIKit

class ChoiceOfAnimalViewController: UIViewController {
    
    @IBAction func choiceButtonTapped(_ sender: UIButton) {
        var animals = [Animal]()
        
        if sender.imageView?.image == UIImage(named: "cat_login") {
            animals = Animal.getCatsList()
        } else if sender.imageView?.image == UIImage(named: "dog_login")  {
            animals = Animal.getDogsList()
        }
        performSegue(withIdentifier: "showChoice", sender: animals)
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let animalListVC = navigationVC.topViewController as? AnimalListViewController else { return }
        
        animalListVC.animals = sender as? [Animal]
    }


}

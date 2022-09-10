//
//  ChoiceOfAnimalViewController.swift
//  Animal Shelter
//
//  Created by Swift on 11.09.2022.
//

import UIKit

class ChoiceOfAnimalViewController: UIViewController {

    var cats = Animal.getCatsList()
    var dogs = Animal.getDogsList()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    @IBAction func dogButton(_ sender: UIButton) {
//    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let animalListVC = navigationVC.topViewController as? AnimalListViewController else { return }
        if segue.identifier == "dog" {
            animalListVC.animals = dogs
        } else if segue.identifier == "cats" {
            animalListVC.animals = cats
        }


    }


}

//
//  ChoiceViewController.swift
//  Animal Shelter
//
//  Created by Татьяна on 11.09.2022.
//

import UIKit

final class ChoiceViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet var catButton: UIButton!
    @IBOutlet var dogButton: UIButton!
    
    var animals = [Animal]()
    var userName: String!

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        catButton.layer.cornerRadius = 10
        dogButton.layer.cornerRadius = 10
    }

    // MARK: - IBAction
    
    @IBAction func choiceButtonTapped(_ sender: UIButton) {
        if sender.tag == 0 {
            animals = Animal.getCatsList()
        } else {
            animals = Animal.getDogsList()
        }
        performSegue(withIdentifier: "showChoice", sender: nil)
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let animalListVC = navigationVC.topViewController as? AnimalListViewController else { return }
        animalListVC.animals = animals
        animalListVC.userName = userName
    }
}

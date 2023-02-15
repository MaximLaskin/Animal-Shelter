//
//  AnimalListViewController.swift
//  Animal Shelter
//
//  Created by Татьяна on 07.09.2022.
//

import UIKit

final class AnimalListViewController: UITableViewController {
    // MARK: - Properties

    var animals: [Animal]!
    var userName: String!

    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .white
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        animals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let animal = animals[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AnimalTableViewCell
        
        cell.animalImage.image = UIImage(named: animal.nameAndBreed)
        cell.animalImage.layer.cornerRadius = cell.animalImage.bounds.height / 2
        cell.animalImage.clipsToBounds = true
        cell.animalNameAge.text = "\(animal.name), \(animal.age)"
        cell.animalBreed.text = animal.breed
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let animal = animals[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: animal)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        110
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? AnimalDetailsViewController else { return }
        detailVC.animal = sender as? Animal
        detailVC.userName = userName
    }
}

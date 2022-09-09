//
//  AnimalListViewController.swift
//  Animal Shelter
//
//  Created by Татьяна on 07.09.2022.
//

import UIKit

final class AnimalListViewController: UITableViewController {

    var animals = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        animals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let animal = animals[indexPath.row].nameAndBreed

        var content = cell.defaultContentConfiguration()
        content.text = animal
        content.image = UIImage(named: animal)
        
        cell.contentConfiguration = content
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let animal = animals[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: animal)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? AnimalDetailsViewController else { return }
        detailVC.animal = sender as? Animal
    }
}

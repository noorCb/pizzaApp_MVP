//
//  MainViewController.swift
//  PizzaApp
//
//  Created by Aisha Cabrera Bel on 10/04/2023.
//  Copyright © 2023 Noor Cabrera Bel. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pizzaTable: UITableView!
    
    var pizzaList: [CellInformation] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getPizzas()
        pizzaTable.dataSource = self
        pizzaTable.delegate = self
        pizzaTable.register(UINib(nibName: "PizzaCell", bundle: nil), forCellReuseIdentifier: "PizzaCell")
        
    }
    
    func getPizzas() {
        pizzaList.append(CellInformation(name: "Di Capra", image: "DICAPRAAAAA"))
        pizzaList.append(CellInformation(name: "Mitad-Mitad", image: "mitad-mitad"))
        pizzaList.append(CellInformation(name: "4 Estaciones", image: "PM4E"))
        pizzaList.append(CellInformation(name: "4 Quesos", image: "PM4Q"))
        pizzaList.append(CellInformation(name: "Al Gusto", image: "PMBA"))
        pizzaList.append(CellInformation(name: "Barbacoa", image: "PMBQM"))
        pizzaList.append(CellInformation(name: "Carbonara", image: "PMCA"))
        pizzaList.append(CellInformation(name: "Funghi", image: "PMFU"))
        pizzaList.append(CellInformation(name: "Hawaiana", image: "PMHO"))
        pizzaList.append(CellInformation(name: "Margarita", image: "PMMA"))
        pizzaList.append(CellInformation(name: "Mediterránea", image: "PMME"))
        pizzaList.append(CellInformation(name: "Prosciutto", image: "PMPR"))
        pizzaList.append(CellInformation(name: "Vegetariana", image: "PMVE"))
       
        
        
    }
    
    // MARK: TableView Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = pizzaList[indexPath.row]
        let drawer = item.cellDrawer
        let cell = drawer.tableView(tableView, cellForRowAt: indexPath)
        drawer.drawCell(cell, withItem: item)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 244
    }
}


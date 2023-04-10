//
//  PizzaCell.swift
//  PizzaApp
//
//  Created by Aisha Cabrera Bel on 10/04/2023.
//  Copyright © 2023 Noor Cabrera Bel. All rights reserved.
//

import UIKit

class PizzaCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var customizeButton: UIButton!
}

struct CellInformation {
    var name : String
    var image : String
}

class PizzaCellDrawer: DrawerProtocol {
    struct constants {
        static let id = "PizzaCell"
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: constants.id, for: indexPath)
    }
    
    func drawCell(_ cell: UITableViewCell, withItem item: Any) {
        guard let cell = cell as? PizzaCell,
            let item = item as? CellInformation else {
                return
        }
        
        cell.titleLabel.text = item.name
        cell.imageView?.image = UIImage(named: item.image)
        
        cell.pizzaImage.center = cell.center
    }
}

extension CellInformation: DraweItemProtocol {
    var cellDrawer: DrawerProtocol {
        return PizzaCellDrawer()
    }
    
    
}

//
//  DrawerProtocol.swift
//  PizzaApp
//
//  Created by Aisha Cabrera Bel on 10/04/2023.
//  Copyright © 2023 Noor Cabrera Bel. All rights reserved.
//

import UIKit

internal protocol DrawerProtocol {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    func drawCell(_ cell: UITableViewCell, withItem item: Any)
}
 
internal protocol DraweItemProtocol {
    var cellDrawer: DrawerProtocol {get}
}


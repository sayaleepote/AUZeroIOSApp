//
//  DashboardViewController.swift
//  AUZero
//
//  Created by Sayalee on 21/8/2022.
//

import UIKit

class DashboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            return tableView.dequeueReusableCell(withIdentifier: "PointsCell1", for: indexPath)
        case 1:
            return tableView.dequeueReusableCell(withIdentifier: "PointsCell2", for: indexPath)
        case 2:
            return tableView.dequeueReusableCell(withIdentifier: "PointsCell3", for: indexPath)
        case 3:
            return tableView.dequeueReusableCell(withIdentifier: "PointsCell4", for: indexPath)
        case 4:
            return tableView.dequeueReusableCell(withIdentifier: "PointsCell5", for: indexPath)
        case 5:
            return tableView.dequeueReusableCell(withIdentifier: "PointsCell6", for: indexPath)
        default:
            return UITableViewCell()

        }
    }

    @IBOutlet weak var pointsBoard: UIView!

    @IBOutlet weak var todayPoints: UIView!
    @IBOutlet weak var monthPoints: UIView!
    @IBOutlet weak var weekPoints: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        pointsBoard.layer.cornerRadius = 75
        todayPoints.layer.cornerRadius = 40
        weekPoints.layer.cornerRadius = 40
        monthPoints.layer.cornerRadius = 40
    }



}

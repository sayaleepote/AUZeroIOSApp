//
//  GreenSpotDetailsViewController.swift
//  AUZero
//
//  Created by Sayalee on 21/8/2022.
//

import UIKit
import Charts

class GreenSpotDetailsViewController: UIViewController, ChartViewDelegate {

    @IBOutlet weak var addressView: UIView!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var barChart: BarChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        addressView.layer.cornerRadius = 10
        infoView.layer.cornerRadius = 10
        barChart.delegate = self
        setupChart()
    }


    func setupChart() {

//        let dataSet = IChartDataSet(
//        let chartData = ChartData(dataSet: dataSet)
//        barChart.data = chartData
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

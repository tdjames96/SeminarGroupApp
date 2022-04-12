//
//  HomeViewController.swift
//  SS
//
//  Created by user211074 on 2/21/22.
//

import UIKit
import Parse
import Charts

class HomeViewController: ViewController {

    
    
    let user = PFUser()
    
    //user[""] = spendingText.text!
    //user[""] = incomeText.text!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createChart()

        // Do any additional setup after loading the view.
    }
    private func createChart() {
    // Create bar chart
    let barChart = BarChartView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height:
    view.frame.size.width))
    // Configure axis
    let xAxis = barChart.xAxis
    let rightAxis = barChart.rightAxis

    // Configure legend
    let legend = barChart.legend
    // Supply data
    var entries = [BarChartDataEntry]()
    var entries2 = [BarChartDataEntry]()
    for x in 0..<2{
    entries.append(BarChartDataEntry(

    x: Double(x),
    y: Double.random(in: 0...30)
    )
    )
    entries2.append(BarChartDataEntry(

    x: Double(x),
    y: Double.random(in: 0...30)
    )
    )
    }
    let set = BarChartDataSet(entries: entries, label: "Monthly Income")
    set.colors = [
    NSUIColor(cgColor: UIColor.systemBlue.cgColor),
    NSUIColor(cgColor: UIColor.systemBlue.cgColor),
    NSUIColor(cgColor: UIColor.systemBlue.cgColor),
    NSUIColor(cgColor: UIColor.systemBlue.cgColor),
    ]
    let set2 = BarChartDataSet(entries: entries2, label: "Monthly Spending")
    set2.colors = [
    NSUIColor(cgColor: UIColor.systemGray.cgColor),
    NSUIColor(cgColor: UIColor.systemGray.cgColor),
    NSUIColor(cgColor: UIColor.systemGray.cgColor),
    NSUIColor(cgColor: UIColor.systemGray.cgColor),
    ]
    let data = BarChartData(dataSets: [set, set2])
    barChart.data = data

    view.addSubview(barChart)
    barChart.center = view.center

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func logOut(_ sender: Any) {
        PFUser.logOut()
        
        let main = UIStoryboard(name :"Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "loginViewController")
        guard let windowsScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let
                delegate = windowsScene.delegate as? SceneDelegate else {return}
        
        delegate.window?.rootViewController = loginViewController
 
    }
    
}

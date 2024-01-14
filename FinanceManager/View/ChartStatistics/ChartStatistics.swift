//
//  chartStatistics.swift
//  FinanceManager
//
//  Created by Bercik on 11/01/2024.
//

import UIKit
import Charts

class ChartStatistics: UIView, ChartViewDelegate {
    
    @IBOutlet var chartData: UIView!
    @IBOutlet var monthLabel: UILabel!
    @IBOutlet var amountLabel: UILabel!
    @IBOutlet var savedPercent: UILabel!
    @IBOutlet var spentPercent: UILabel!
    
    var chart = PieChartView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        viewInit()
    }
    
    required  init?(coder: NSCoder) {
        super.init(coder: coder)
        viewInit()
    }
    
    private func viewInit() {
        chart.delegate = self
        
        let chartStatistics = Bundle.main.loadNibNamed("ChartStatistics", owner: self)![0] as! UIView
        chartStatistics.frame = self.bounds
        chartStatistics.backgroundColor = .none
        addSubview(chartStatistics)
        
        configChart(view: chartStatistics)
        configChartData()
        
        chartStatistics.addSubview(chart)
        chartStatistics.insertSubview(chartData, aboveSubview: chart)
    }
    
    private func configChart(view: UIView) {
        let colors : [UIColor] = [UIColor(named: "chartColorPlus")!,UIColor(named: "chartColorMinus")!]
        
        chart.frame = CGRect(x: 0, y: 0, width: view.frame.size.width * 1.25, height: view.frame.size.height * 1.25)
        chart.center = view.center
        
        let dataList = [ChartDataEntry(x: 80.0, y: 80.0),ChartDataEntry(x: 20.0, y: 20.0)]
        
        let set = PieChartDataSet(entries: dataList)
        set.colors = ChartColorTemplates.material()
        set.drawValuesEnabled = false
        set.colors = colors
        
        let data = PieChartData(dataSet: set)
        chart.legend.enabled = false
       
        chart.data = data
    }
    
    private func configChartData() {
        chartData.layer.cornerRadius = chartData.layer.bounds.width/2
        chartData.clipsToBounds = true
        chartData.layer.borderColor = UIColor.black.cgColor
        chartData.layer.borderWidth = 1.0
        chartData.backgroundColor = UIColor(named: "savedCardBackground")
        
        monthLabel.text = "January"
        monthLabel.textColor = UIColor(named: "inactiveColor")
        monthLabel.font = monthLabel.font.withSize(14)
        monthLabel.textAlignment = .center
        
        amountLabel.text = "830 zł"
        amountLabel.textColor = UIColor(named: "currencyTextColor")
        amountLabel.font = monthLabel.font.withSize(26)
        amountLabel.textAlignment = .center
        
        savedPercent.text = "80%"
        savedPercent.textColor = UIColor(named: "chartColorPlus")
        savedPercent.font = monthLabel.font.withSize(12)
        savedPercent.textAlignment = .center
        
        spentPercent.text = "20%"
        spentPercent.textColor = UIColor(named: "chartColorMinus")
        spentPercent.font = monthLabel.font.withSize(12)
        spentPercent.textAlignment = .center
    }
    
    func setupData(name: String){
        monthLabel.text = name
    }

}

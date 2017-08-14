//
//  TestExTableViewController.swift
//  Swift_Practice
//
//  Created by lyl on 2017/8/10.
//  Copyright © 2017年 LYL. All rights reserved.
//

import Foundation


import UIKit

class TestExtTableViewController: UITableViewController {
    
    //属性 只能写在 class 中。包括 析构函数。
    deinit {
        print("调用了析构函数")
    }
    
    
    
}

//为了增加扩展功能，可以增加 extention 类扩展 ，将模块功能 写在 对应的 extention 中。
//MARK: - 生命周期
extension TestExtTableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
}

//MARK: - 数据源方法
extension TestExtTableViewController{
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
}

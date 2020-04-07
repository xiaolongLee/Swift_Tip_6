//
//  XLNavController.swift
//  Swift5.1 自定义后退按钮
//
//  Created by 李小龙 on 2020/4/7.
//  Copyright © 2020 李小龙. All rights reserved.
//

import UIKit

class XLNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.children.count > 0 {
            
            let button = UIButton(type: .custom)
            button.setImage(UIImage.init(named: "back"), for: .normal)
            button.addTarget(viewController, action: #selector(backBarButtonItemHandle), for: .touchUpInside)
            button.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
            button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
            let backItem = UIBarButtonItem(customView: button)
            viewController.navigationItem.leftBarButtonItem = backItem
        }
        
        super.pushViewController(viewController, animated: animated)
    }
    
    @objc func backBarButtonItemHandle()
    {
        
    }

}

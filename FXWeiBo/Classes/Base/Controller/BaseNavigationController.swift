//
//  BaseNavigationController.swift
//  FXWeiBo
//
//  Created by 飞翔 on 2020/6/5.
//  Copyright © 2020 飞翔. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func config(title:String,normalImage:String,selectedImage:String)  {
        
        self.tabBarItem.title = title
        let originalImage = UIImage.init(named: normalImage)?.withRenderingMode(.alwaysOriginal)
        let selectImage = UIImage.init(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.image = originalImage
        self.tabBarItem.selectedImage = selectImage
        
        self.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.black,NSAttributedString.Key.font:UIFont.systemFont(ofSize: 15)], for: .normal)
        self.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.red,NSAttributedString.Key.font:UIFont.systemFont(ofSize: 15)], for: .selected)
        
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "返回", style: .plain, target: self, action: #selector(back))
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    
    @objc func back(){
        self.popViewController(animated: true)
    }
}

//
//  MainTabController.swift
//  FXWeiBo
//
//  Created by 飞翔 on 2020/6/5.
//  Copyright © 2020 飞翔. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepare()
        
    }
    
    func prepare() {
        
        let bundleName = Bundle.main.infoDictionary!["CFBundleName"] as! String
        _ =  MainTabObj.loadMainTab().map({value in
            
            let controllerStr = value[MainTabConstant().name]!
            let projectStr = bundleName  + "." + controllerStr
            let VCController = (NSClassFromString(projectStr) as! UIViewController.Type).init()
            VCController.title = value[MainTabConstant().title]!
            let navigationController = BaseNavigationController.init(rootViewController: VCController)
            navigationController.config(title: value[MainTabConstant().title]!, normalImage: value[MainTabConstant().normalName] ?? "", selectedImage: value[MainTabConstant().normalName] ?? "")
            self.addChild(navigationController)
            
        })
        
    }
    
}

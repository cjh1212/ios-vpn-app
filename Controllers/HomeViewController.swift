//
//  HomeViewController.swift
//  VPN
//
//  Created by 최지훈 on 9/24/22.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
//        view.addSubview(tableView)
        createServerButton()
        createConnectButton()
        let img = createImage()
    }
    
//    private let tableView: UITableView = {
//        let table = UITableView()
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        return table
//    }()
    
    func createServerButton() {
        let button = UIButton(type: .system)
        button.frame = CGRect(x:60, y:500, width:270, height:50)
        button.layer.cornerRadius = button.bounds.size.height / 2
        let color = UIColor(red: 14/255, green: 122/255, blue: 254/255, alpha: 1.0)
        button.layer.borderColor = color.cgColor
        button.layer.borderWidth = 3.0
        button.setTitle("Choose a Location", for: .normal)
        button.backgroundColor = .white
        button.showsMenuAsPrimaryAction = true
        button.menu = menu

        self.view.addSubview(button)
    }
    
    private lazy var korea = UIAction(title: "Seoul - Republic of Korea", attributes: [], state: .off){ action in
        print("Korea, Republic of")
    }
    
    private lazy var elements: [UIAction] = [korea]
    
    private lazy var menu = UIMenu(title: "Choose a Country", children: elements)
    
    func createConnectButton(){
        let button = UIButton(type: .system)
        button.frame = CGRect(x:60, y:570, width:270, height:50)
        button.layer.cornerRadius = button.bounds.size.height / 2
        let color = UIColor(red: 14/255, green: 122/255, blue: 254/255, alpha: 1.0)
        button.layer.borderColor = color.cgColor
        button.layer.borderWidth = 3.0
        button.setTitle("Connect", for: .normal)
        button.backgroundColor = .white
        
        //Click event
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    @objc func buttonClicked(sender: UIButton){
        print("Clicked")
    }
    
    func createImage() -> UIScrollView{
        let imageName = "map2"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        
        let scrollView = UIScrollView(frame:self.view.bounds)
        scrollView.delegate = self
        scrollView.frame = CGRect(x:60, y:200, width:270, height:270)
        scrollView.contentSize = imageView.bounds.size
        scrollView.addSubview(imageView)
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 1
        scrollView.zoomScale = 0.1
        
//        Point to start
//        scrollView.contentOffset = CGPoint(x: 1000, y:450)

        self.view.addSubview(scrollView)
        return scrollView
    }
    
    
    
}

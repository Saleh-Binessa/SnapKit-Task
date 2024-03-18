//
//  ViewController.swift
//  snapKitTask
//
//  Created by Saleh Bin Essa on 27/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let profileImageView = UIImageView()
    let accountNameLabel = UILabel()
    let usernameLabel = UILabel()
    let bioLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(profileImageView)
        
        view.addSubview(accountNameLabel)
        view.addSubview(usernameLabel)
        view.addSubview(bioLabel)
        
        setupUI()
        setupConstraints()
        
        func setupUI() {
            profileImageView.image = UIImage(named: "codedLogo")
            
            profileImageView.layer.cornerRadius = 37.5
            
            profileImageView.clipsToBounds = true
            
            accountNameLabel.text = "joincoded"
            usernameLabel.text = "CODED"
            bioLabel.text = "🥇 1st Coding Academy in the Middle East ..."
            
            // Setting number of lines for labels
            accountNameLabel.numberOfLines = 0
            usernameLabel.numberOfLines = 0
            bioLabel.numberOfLines = 0
        }
        
        func setupConstraints(){
            profileImageView.snp.makeConstraints { make in
                
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
                make.trailing.equalToSuperview().offset(-15)
                
                make.width.height.equalTo(75)
            }
            
            // account name Label Constraints
            accountNameLabel.snp.makeConstraints { make in
                make.centerY.equalTo(profileImageView.snp.centerY)
                make.leading.equalTo(profileImageView.snp.trailing).offset(20)
            }
            
            // Username Label Constraints
            usernameLabel.snp.makeConstraints { make in
                make.top.equalTo(profileImageView.snp.bottom).offset(20)
                make.leading.equalToSuperview().offset(20)
            }
            
            // Bio Label Constraints
            bioLabel.snp.makeConstraints { make in
                make.top.equalTo(usernameLabel.snp.bottom).offset(10)
                make.leading.equalTo(usernameLabel.snp.leading)
            }
            
        }
    }

}

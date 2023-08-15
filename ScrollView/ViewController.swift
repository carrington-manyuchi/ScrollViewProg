//
//  ViewController.swift
//  ScrollView
//
//  Created by DA MAC M1 157 on 2023/08/15.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: - UI Components
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .systemRed
        return scrollView
    }()
    
    private let contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .systemPurple
        return contentView
    }()
    
    
    private let imageViews: [UIImageView] = {
        var imageViews: [UIImageView] = []
        
        for x in 1...5 {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.image = UIImage(named: x.description)
            imageViews.append(imageView)
        }
        
        return imageViews
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        configureScrollViewConstraints()
    }
    
    private func configureScrollViewConstraints() {
        
        let composeScrollView = [
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        
        let composeContentView = [
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            //contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        ]
        
        let hConst = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        hConst.isActive = true
        hConst.priority = UILayoutPriority(50)
        
        
        NSLayoutConstraint.activate(composeScrollView)
        NSLayoutConstraint.activate(composeContentView)
        configureImages()
    }
    
    private func configureImages() {
        
        view.addSubview(imageViews[0])
        imageViews[0].translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imageViews[1])
        imageViews[1].translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imageViews[2])
        imageViews[2].translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imageViews[3])
        imageViews[3].translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imageViews[4])
        imageViews[4].translatesAutoresizingMaskIntoConstraints = false
        
       
        
        configureImagesConstraints()
    }
    
    private func configureImagesConstraints() {
        
        let composeImagesViewsZero = [
            imageViews[0].topAnchor.constraint(equalTo: contentView.topAnchor),
            imageViews[0].leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViews[0].trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViews[0].heightAnchor.constraint(equalToConstant: 300),
            imageViews[0].widthAnchor.constraint(equalTo: contentView.widthAnchor),
        ]
        
        let composeImagesViewsOne = [
            imageViews[1].topAnchor.constraint(equalTo: imageViews[0].bottomAnchor),
            imageViews[1].leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViews[1].trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViews[1].heightAnchor.constraint(equalToConstant: 300),
            imageViews[1].widthAnchor.constraint(equalTo: contentView.widthAnchor),
        ]
        
        let composeImagesViewsTwo = [
            imageViews[2].topAnchor.constraint(equalTo: imageViews[1].bottomAnchor),
            imageViews[2].leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViews[2].trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViews[2].heightAnchor.constraint(equalToConstant: 300),
            imageViews[2].widthAnchor.constraint(equalTo: contentView.widthAnchor),
        ]

        let composeImagesViewsThree = [
            imageViews[3].topAnchor.constraint(equalTo: imageViews[2].bottomAnchor),
            imageViews[3].leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViews[3].trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViews[3].heightAnchor.constraint(equalToConstant: 300),
            imageViews[3].widthAnchor.constraint(equalTo: contentView.widthAnchor),
        ]

        let composeImagesViewsFour = [
            imageViews[4].topAnchor.constraint(equalTo: imageViews[3].bottomAnchor),
            imageViews[4].leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViews[4].trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViews[4].heightAnchor.constraint(equalToConstant: 300),
            imageViews[4].widthAnchor.constraint(equalTo: contentView.widthAnchor),
            imageViews[4].bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ]
        
        
        NSLayoutConstraint.activate(composeImagesViewsZero)
        NSLayoutConstraint.activate(composeImagesViewsOne)
        NSLayoutConstraint.activate(composeImagesViewsTwo)
        NSLayoutConstraint.activate(composeImagesViewsThree)
        NSLayoutConstraint.activate(composeImagesViewsFour)
        
    }

}


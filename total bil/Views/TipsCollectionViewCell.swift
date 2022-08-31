//
//  TipsCollectionViewCell.swift
//  total bil
//
//  Created by Надежда Левицкая on 8/26/22.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {
    let percentLabel: UILabel = {
    let label = UILabel()
    label.text = "10%"
    label.textColor = .black
    label.textAlignment = .center
 //   label.font = UIFont(name: "Avenir Next Bold", size: 24)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()
    
    override var isSelected: Bool {
        didSet{
            if isSelected{
                layer.borderWidth = 3
                layer.borderColor = #colorLiteral(red: 0.639077723, green: 0.2492567599, blue: 0.6254395843, alpha: 1)
            } else {
                layer.borderWidth = 0
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.9599955678, green: 0.8068929911, blue: 0.9532987475, alpha: 1)
        layer.cornerRadius = 10
        
        addSubview(percentLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        percentLabel.font = UIFont(name: "Avenir Next Bold", size: frame.height / 3.4)

    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            percentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            percentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -2),
            percentLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

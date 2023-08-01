//
//  DetailImageCell.swift
//  DesafioGithub
//
//  Created by Vinicius Soares Lima on 12/05/23.
//

import Foundation
import UIKit

class DetailImageCell: UITableViewCell {
    lazy var image = UIImageView(frame: .zero)
    
    func setupcell(viewModel: UserDetailViewModel) {
        let url = URL(string: viewModel.imageURL)
        self.image.translatesAutoresizingMaskIntoConstraints = false
        self.image.contentMode = .scaleAspectFit
        self.image.image = (self.image.image == nil) ? UIImage(named: "placeholder") : self.image.image
        if let url = url {
            self.image.load(url: url)
        }
        self.addSubview(self.image)
        self.setupConstrants()
    }
    private func setupConstrants(){
        self.image.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.image.topAnchor.constraint(equalTo: topAnchor),
            self.image.bottomAnchor.constraint(equalTo: bottomAnchor),
            self.image.leftAnchor.constraint(equalTo: leftAnchor),
            self.image.rightAnchor.constraint(equalTo: rightAnchor)
        ])
    }
}

extension DetailImageCell: CellProtocol {
    func height() -> CGFloat {
        let screenSize = UIScreen.main.bounds
        return screenSize.width
    }
    
    
}

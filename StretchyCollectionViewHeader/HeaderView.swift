//
//  HeaderView.swift
//  StretchyCollectionViewHeader
//
//  Created by Dave Troupe on 4/24/20.
//  Copyright © 2020 DavidTroupe. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {

    public let imageView: UIImageView = {
        let img = UIImage(named: "AlbumCover")
        let imageView = UIImageView(image: img)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        setupImageView()
    }

    private func setupImageView() {
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}

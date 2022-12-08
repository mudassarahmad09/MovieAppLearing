//
//  MoiveDetailUI.swift
//  MovieApp
//
//  Created by Mudassar Ahmad on 08/12/2022.
//

import Foundation
import SnapKit

class MoiveDetailUI: UIView {
    lazy var posterImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "detailDummy")
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Jon Snow"
        return label
    }()
    
    lazy var synopsisTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Jon Snow is working on new film. It will be big one"
        return textView
    }()
    
    func layout(in viewController: UIViewController) {
        viewController.view.backgroundColor = .black
        viewController.view.addSubview(posterImageView)
        
        setupPosterImageView()
    }
    
}

// MARK: - View setup

extension MoiveDetailUI {
    fileprivate func setupPosterImageView() {
        
        posterImageView.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(0.45)
            make.leading.trailing.equalToSuperview()
            make.top.equalToSuperview()
        }
    }
    
    fileprivate func setupTitleLabel() {
        addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(posterImageView.snp.right).offset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(posterImageView)
        }
    }
    
    fileprivate func setupSynopsisTextView() {
        addSubview(synopsisTextView)
        
        synopsisTextView.snp.makeConstraints { make in
            make.left.equalTo(posterImageView)
            make.right.bottom.equalToSuperview().inset(16)
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
        }
    }
}

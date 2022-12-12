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
        viewController.view.addSubview(titleLabel)
        viewController.view.addSubview(synopsisTextView)
        setupPosterImageView()
        setupTitleLabel()
        setupSynopsisTextView()
    }
    
}

// MARK: - View setup

extension MoiveDetailUI {
    private func setupPosterImageView() {
        posterImageView.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(0.45)
            make.leading.trailing.equalToSuperview()
            make.top.equalToSuperview()
        }
    }
    
    private func setupTitleLabel() {
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(posterImageView.snp.right).offset(16)
            make.leading.equalToSuperview()
        }
    }
    
    private func setupSynopsisTextView() {
        synopsisTextView.snp.makeConstraints { make in
            make.left.equalTo(titleLabel.snp.right).offset(16)
            make.leading.equalToSuperview()
        }
    }
}

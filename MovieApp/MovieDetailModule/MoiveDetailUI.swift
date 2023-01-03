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
        label.backgroundColor = .white
        label.textColor = .red
        return label
    }()
    
    lazy var synopsisTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Jon Snow is working on new film. It will be big one"
        textView.backgroundColor = .white
        textView.textColor = .red
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
            make.top.equalTo(posterImageView.snp.bottom).offset(10)
            make.leading.equalToSuperview().inset(15)
        }
    }
    
    private func setupSynopsisTextView() {
        synopsisTextView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.greaterThanOrEqualTo(44)
        }
    }
}

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
        image.image = UIImage(systemName: "trash")
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(posterImageView)
        addSubview(titleLabel)
        addSubview(synopsisTextView)
        
        posterImageView.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(150)
            make.top.left.equalToSuperview().inset(16)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(posterImageView.snp.right).offset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(posterImageView)
        }
        
        synopsisTextView.snp.makeConstraints { make in
            make.left.equalTo(posterImageView)
            make.right.bottom.equalToSuperview().inset(16)
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

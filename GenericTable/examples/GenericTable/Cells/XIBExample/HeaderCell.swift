//
//  HeaderCell.swift
//  tables_relembrar
//
//  Created by Lucas Araujo on 26/12/19.
//  Copyright © 2019 costa. All rights reserved.
//

import UIKit

class HeaderCell: BaseCell {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    override func setupPlaceholder() {
        firstLabel.text = "MUSSUM IPSUM"
        secondLabel.text = "Mussum Ipsum, cacilds vidis litro abertis. Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget"
        self.contentView.layoutSubviews()
        addLoading(on: firstLabel)
        addLoading(on: secondLabel)
    }
    
    override func prepareForReuse() {
        firstLabel.text = ""
        secondLabel.text = ""
    }
    
    func setupView(title: String, subtitle: String) {
        endLoading()
        
        firstLabel.text = title
        secondLabel.text = subtitle
    }
    
}

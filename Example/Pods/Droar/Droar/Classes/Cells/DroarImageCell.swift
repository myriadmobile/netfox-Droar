//
//  DroarImageCell.swift
//  Droar
//
//  Created by Nathan Jangula on 10/26/17.
//

import Foundation

public class DroarImageCell : UITableViewCell, DroarCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var largeImageView: UIImageView!
    
    public static func create(title: String? = "", image: UIImage? = nil, allowSelection: Bool = false) -> DroarImageCell {
        var cell: DroarImageCell?
        
        for view in Bundle.podBundle.loadNibNamed("DroarImageCell", owner: self, options: nil) ?? [Any]() {
            if view is DroarImageCell {
                cell = view as? DroarImageCell
                break
            }
        }
        
        cell?.titleLabel.text = title
        cell?.largeImageView?.image = image
        cell?.selectionStyle = allowSelection ? .gray : .none

        return cell ?? DroarImageCell()
    }
    
    public func setEnabled(_ enabled: Bool) {
        titleLabel.isEnabled = enabled
        backgroundColor = enabled ? UIColor.white : UIColor.disabledGray
        isUserInteractionEnabled = enabled
    }
    
    public func stateDump() -> [String : String]? {
        return nil
    }
}

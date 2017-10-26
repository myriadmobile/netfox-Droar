//
//  netfox_Droar.swift
//  netfox-Droar
//
//  Created by Nathan Jangula on 10/12/17.
//

import Foundation
import Droar
import netfox

@objc public class netfox_Droar : NSObject, DroarKnob {
    
    @objc private static let sharedInstance = netfox_Droar()
    private let dispatchOnce = DispatchOnce()
    
    override private init() {}
    
    public func droarSectionWillBeginLoading(tableView: UITableView?) {
        dispatchOnce.perform {
            NFX.sharedInstance().start()
            NFX.sharedInstance().setGesture(NFX.ENFXGesture.custom)
        }
    }
    
    public func droarSectionTitle() -> String {
        return "Netfox"
    }
    
    public func droarSectionPosition() -> PositionInfo {
        return PositionInfo(position: .top, priority: .medium)
    }
    
    public func droarSectionNumberOfCells() -> Int {
        return 1
    }
    
    public func droarSectionCellForIndex(index: Int, tableView: UITableView) -> DroarCell {
        return DroarLabelCell.create(title: "Launch Netfox", detail: "", allowSelection: true)
    }
    
    public func droarSectionIndexSelected(tableView: UITableView, selectedIndex: Int) {
        Droar.toggleVisibility()
        NFX.sharedInstance().show()
    }
}

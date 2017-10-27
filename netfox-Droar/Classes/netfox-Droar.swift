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
    
    public func droarKnobWillBeginLoading(tableView: UITableView?) {
        dispatchOnce.perform {
            NFX.sharedInstance().start()
            NFX.sharedInstance().setGesture(NFX.ENFXGesture.custom)
        }
    }
    
    public func droarKnobTitle() -> String {
        return "Netfox"
    }
    
    public func droarKnobPosition() -> PositionInfo {
        return PositionInfo(position: .top, priority: .medium)
    }
    
    public func droarKnobNumberOfCells() -> Int {
        return 1
    }
    
    public func droarKnobCellForIndex(index: Int, tableView: UITableView) -> DroarCell {
        return DroarLabelCell.create(title: "Launch Netfox", detail: "", allowSelection: true)
    }
    
    public func droarKnobIndexSelected(tableView: UITableView, selectedIndex: Int) {
        Droar.toggleVisibility()
        NFX.sharedInstance().show()
    }
}

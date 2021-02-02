//
//  Timer+CoreDataProperties.swift
//  work&analyse
//
//  Created by Ruslan Khanov on 02.02.2021.
//
//

import Foundation
import CoreData


extension Timer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Timer> {
        return NSFetchRequest<Timer>(entityName: "Timer")
    }

    @NSManaged public var name: String?
    @NSManaged public var date: Date?
    @NSManaged public var tasks: Task?

}

extension Timer : Identifiable {

}

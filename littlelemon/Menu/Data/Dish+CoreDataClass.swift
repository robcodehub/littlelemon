//
//  Dish+CoreDataClass.swift
//  littlelemon
//
//  Created by Rob Wise on 24/10/2023.
//

import Foundation
import CoreData

@objc(Dish)
public class Dish: NSManagedObject {
    @NSManaged public var title: String?
    @NSManaged public var desc: String?
    @NSManaged public var image: String?
    @NSManaged public var price: String
    @NSManaged public var category: String?
}

//
//	Slab.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class Slab : NSObject, NSCoding, Mappable{

	var max : Float?
	var min : Float?
	var name : String?
	var num : Int?
	var otcMax : Float?
	var otcPercent : Float?
	var wageredMax : Float?
	var wageredPercent : Float?


	class func newInstance(map: Map) -> Mappable?{
		return Slab()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		max <- map["max"]
		min <- map["min"]
		name <- map["name"]
		num <- map["num"]
		otcMax <- map["otc_max"]
		otcPercent <- map["otc_percent"]
		wageredMax <- map["wagered_max"]
		wageredPercent <- map["wagered_percent"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         max = aDecoder.decodeObject(forKey: "max") as? Float
         min = aDecoder.decodeObject(forKey: "min") as? Float
         name = aDecoder.decodeObject(forKey: "name") as? String
         num = aDecoder.decodeObject(forKey: "num") as? Int
         otcMax = aDecoder.decodeObject(forKey: "otc_max") as? Float
         otcPercent = aDecoder.decodeObject(forKey: "otc_percent") as? Float
         wageredMax = aDecoder.decodeObject(forKey: "wagered_max") as? Float
         wageredPercent = aDecoder.decodeObject(forKey: "wagered_percent") as? Float

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if max != nil{
			aCoder.encode(max, forKey: "max")
		}
		if min != nil{
			aCoder.encode(min, forKey: "min")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if num != nil{
			aCoder.encode(num, forKey: "num")
		}
		if otcMax != nil{
			aCoder.encode(otcMax, forKey: "otc_max")
		}
		if otcPercent != nil{
			aCoder.encode(otcPercent, forKey: "otc_percent")
		}
		if wageredMax != nil{
			aCoder.encode(wageredMax, forKey: "wagered_max")
		}
		if wageredPercent != nil{
			aCoder.encode(wageredPercent, forKey: "wagered_percent")
		}

	}

}
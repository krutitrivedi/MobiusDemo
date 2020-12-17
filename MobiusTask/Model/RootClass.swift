//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class RootClass : NSObject, NSCoding, Mappable{

	var cls : String?
	var bonusBooster : String?
	var bonusImageBack : String?
	var bonusImageFront : String?
	var campaign : String?
	var code : String?
	var createdAt : String?
	var daysSinceLastPurchaseMin : Int?
	var eligibilityUserLevels : [Int]?
	var eligibilityUserSegments : [String]?
	var id : String?
	var isActive : Bool?
	var isBonusBoosterEnabled : Bool?
	var isDeleted : AnyObject?
	var lastUpdatedAt : String?
	var ribbonMsg : String?
	var slabs : [Slab]?
	var tabType : String?
	var tags : Tag?
	var userLimit : Int?
	var userRedeemLimit : Int?
	var userSegmentationType : String?
	var validFrom : String?
	var validUntil : String?
	var visibilityUserLevels : [Int]?
	var visibilityUserSegments : [String]?
	var wagerBonusExpiry : Int?
	var wagerToReleaseRatioDenominator : Int?
	var wagerToReleaseRatioNumerator : Int?


	class func newInstance(map: Map) -> Mappable?{
		return RootClass()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		cls <- map["_cls"]
		bonusBooster <- map["bonus_booster"]
		bonusImageBack <- map["bonus_image_back"]
		bonusImageFront <- map["bonus_image_front"]
		campaign <- map["campaign"]
		code <- map["code"]
		createdAt <- map["created_at"]
		daysSinceLastPurchaseMin <- map["days_since_last_purchase_min"]
		eligibilityUserLevels <- map["eligibility_user_levels"]
		eligibilityUserSegments <- map["eligibility_user_segments"]
		id <- map["id"]
		isActive <- map["is_active"]
		isBonusBoosterEnabled <- map["is_bonus_booster_enabled"]
		isDeleted <- map["is_deleted"]
		lastUpdatedAt <- map["last_updated_at"]
		ribbonMsg <- map["ribbon_msg"]
		slabs <- map["slabs"]
		tabType <- map["tab_type"]
		tags <- map["tags"]
		userLimit <- map["user_limit"]
		userRedeemLimit <- map["user_redeem_limit"]
		userSegmentationType <- map["user_segmentation_type"]
		validFrom <- map["valid_from"]
		validUntil <- map["valid_until"]
		visibilityUserLevels <- map["visibility_user_levels"]
		visibilityUserSegments <- map["visibility_user_segments"]
		wagerBonusExpiry <- map["wager_bonus_expiry"]
		wagerToReleaseRatioDenominator <- map["wager_to_release_ratio_denominator"]
		wagerToReleaseRatioNumerator <- map["wager_to_release_ratio_numerator"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         cls = aDecoder.decodeObject(forKey: "_cls") as? String
         bonusBooster = aDecoder.decodeObject(forKey: "bonus_booster") as? String
         bonusImageBack = aDecoder.decodeObject(forKey: "bonus_image_back") as? String
         bonusImageFront = aDecoder.decodeObject(forKey: "bonus_image_front") as? String
         campaign = aDecoder.decodeObject(forKey: "campaign") as? String
         code = aDecoder.decodeObject(forKey: "code") as? String
         createdAt = aDecoder.decodeObject(forKey: "created_at") as? String
         daysSinceLastPurchaseMin = aDecoder.decodeObject(forKey: "days_since_last_purchase_min") as? Int
         eligibilityUserLevels = aDecoder.decodeObject(forKey: "eligibility_user_levels") as? [Int]
         eligibilityUserSegments = aDecoder.decodeObject(forKey: "eligibility_user_segments") as? [String]
         id = aDecoder.decodeObject(forKey: "id") as? String
         isActive = aDecoder.decodeObject(forKey: "is_active") as? Bool
         isBonusBoosterEnabled = aDecoder.decodeObject(forKey: "is_bonus_booster_enabled") as? Bool
         isDeleted = aDecoder.decodeObject(forKey: "is_deleted") as? AnyObject
         lastUpdatedAt = aDecoder.decodeObject(forKey: "last_updated_at") as? String
         ribbonMsg = aDecoder.decodeObject(forKey: "ribbon_msg") as? String
         slabs = aDecoder.decodeObject(forKey: "slabs") as? [Slab]
         tabType = aDecoder.decodeObject(forKey: "tab_type") as? String
         tags = aDecoder.decodeObject(forKey: "tags") as? Tag
         userLimit = aDecoder.decodeObject(forKey: "user_limit") as? Int
         userRedeemLimit = aDecoder.decodeObject(forKey: "user_redeem_limit") as? Int
         userSegmentationType = aDecoder.decodeObject(forKey: "user_segmentation_type") as? String
         validFrom = aDecoder.decodeObject(forKey: "valid_from") as? String
         validUntil = aDecoder.decodeObject(forKey: "valid_until") as? String
         visibilityUserLevels = aDecoder.decodeObject(forKey: "visibility_user_levels") as? [Int]
         visibilityUserSegments = aDecoder.decodeObject(forKey: "visibility_user_segments") as? [String]
         wagerBonusExpiry = aDecoder.decodeObject(forKey: "wager_bonus_expiry") as? Int
         wagerToReleaseRatioDenominator = aDecoder.decodeObject(forKey: "wager_to_release_ratio_denominator") as? Int
         wagerToReleaseRatioNumerator = aDecoder.decodeObject(forKey: "wager_to_release_ratio_numerator") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if cls != nil{
			aCoder.encode(cls, forKey: "_cls")
		}
		if bonusBooster != nil{
			aCoder.encode(bonusBooster, forKey: "bonus_booster")
		}
		if bonusImageBack != nil{
			aCoder.encode(bonusImageBack, forKey: "bonus_image_back")
		}
		if bonusImageFront != nil{
			aCoder.encode(bonusImageFront, forKey: "bonus_image_front")
		}
		if campaign != nil{
			aCoder.encode(campaign, forKey: "campaign")
		}
		if code != nil{
			aCoder.encode(code, forKey: "code")
		}
		if createdAt != nil{
			aCoder.encode(createdAt, forKey: "created_at")
		}
		if daysSinceLastPurchaseMin != nil{
			aCoder.encode(daysSinceLastPurchaseMin, forKey: "days_since_last_purchase_min")
		}
		if eligibilityUserLevels != nil{
			aCoder.encode(eligibilityUserLevels, forKey: "eligibility_user_levels")
		}
		if eligibilityUserSegments != nil{
			aCoder.encode(eligibilityUserSegments, forKey: "eligibility_user_segments")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if isActive != nil{
			aCoder.encode(isActive, forKey: "is_active")
		}
		if isBonusBoosterEnabled != nil{
			aCoder.encode(isBonusBoosterEnabled, forKey: "is_bonus_booster_enabled")
		}
		if isDeleted != nil{
			aCoder.encode(isDeleted, forKey: "is_deleted")
		}
		if lastUpdatedAt != nil{
			aCoder.encode(lastUpdatedAt, forKey: "last_updated_at")
		}
		if ribbonMsg != nil{
			aCoder.encode(ribbonMsg, forKey: "ribbon_msg")
		}
		if slabs != nil{
			aCoder.encode(slabs, forKey: "slabs")
		}
		if tabType != nil{
			aCoder.encode(tabType, forKey: "tab_type")
		}
		if tags != nil{
			aCoder.encode(tags, forKey: "tags")
		}
		if userLimit != nil{
			aCoder.encode(userLimit, forKey: "user_limit")
		}
		if userRedeemLimit != nil{
			aCoder.encode(userRedeemLimit, forKey: "user_redeem_limit")
		}
		if userSegmentationType != nil{
			aCoder.encode(userSegmentationType, forKey: "user_segmentation_type")
		}
		if validFrom != nil{
			aCoder.encode(validFrom, forKey: "valid_from")
		}
		if validUntil != nil{
			aCoder.encode(validUntil, forKey: "valid_until")
		}
		if visibilityUserLevels != nil{
			aCoder.encode(visibilityUserLevels, forKey: "visibility_user_levels")
		}
		if visibilityUserSegments != nil{
			aCoder.encode(visibilityUserSegments, forKey: "visibility_user_segments")
		}
		if wagerBonusExpiry != nil{
			aCoder.encode(wagerBonusExpiry, forKey: "wager_bonus_expiry")
		}
		if wagerToReleaseRatioDenominator != nil{
			aCoder.encode(wagerToReleaseRatioDenominator, forKey: "wager_to_release_ratio_denominator")
		}
		if wagerToReleaseRatioNumerator != nil{
			aCoder.encode(wagerToReleaseRatioNumerator, forKey: "wager_to_release_ratio_numerator")
		}

	}

}
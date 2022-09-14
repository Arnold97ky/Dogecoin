//
//  Models.swift
//  Dogecoin
//
//  Created by ArnoldKyi on 5/7/21.
//

import Foundation

struct APIResponse: Codable {
    let data: [Int: DogeCoinData]
}

struct DogeCoinData: Codable {
    let id: Int
    let name: String
    let symbol: String
    let date_added: String
    let tags: [String]
    let total_supply: Float
    let quote: [String: Quote]
}

struct Quote: Codable {
    let price: Float
    let volume_24h: Float
}

/*
   "data": {
     "74": {
       "id": 74,
       "name": "Dogecoin",
       "symbol": "DOGE",
       "slug": "dogecoin",
       "num_market_pairs": 354,
       "date_added": "2013-12-15T00:00:00.000Z",

       "max_supply": null,
       "circulating_supply": 129503221027.63477,
       "total_supply": 129503221027.63477,
       "is_active": 1,
       "platform": null,
       "cmc_rank": 4,
       "is_fiat": 0,
       "last_updated": "2021-05-07T12:14:03.000Z",
       "quote": {
         "USD": {
           "price": 0.61619544965745,
           "volume_24h": 21974614001.497993,
           "percent_change_1h": 0.29442118,
           "percent_change_24h": 0.61952816,
           "percent_change_7d": 98.00590192,
           "percent_change_30d": 961.78296031,
           "percent_change_60d": 1013.12444989,
           "percent_change_90d": 1147.3752612,
           "market_cap": 79799295513.21153,
           "last_updated": "2021-05-07T12:14:03.000Z"
         }
       }
     }

 */

//
//  SimplePizzaFactory.swift
//  PizzaStore
//
//  Created by Homma Takushi on 2015/09/05.
//  Copyright (c) 2015年 mfmf.me. All rights reserved.
//

import Foundation

class SimplePizzaFactory {
  
  /**
  ピザを作成します。
  
  :param: type ピザの種類
  */
  func createPizza(type: String) -> Pizza {
    var pizza: Pizza
    
    switch type {
    case "チーズ":
      pizza = CheesePizza(type: type)
    case "野菜":
      pizza = VeggiePizza(type: type)
    default:
      fatalError(type + "はお取り扱いしておりません。")
    }
    
    return pizza
  }
}
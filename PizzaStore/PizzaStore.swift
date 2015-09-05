//
//  PizzaStore.swift
//  PizzaStore
//
//  Created by Homma Takushi on 2015/09/05.
//  Copyright (c) 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// ピザ屋さん
class PizzaStore {
  private var factory: SimplePizzaFactory

  /**
  コンストラクタ
  
  :returns: ピザ屋さん
  */
  init() {
    self.factory = SimplePizzaFactory()
  }
  
  /**
  ピザを注文します。
  
  :param: type ピザの種類
  */
  func orderPizza(type: String) -> Pizza {
    var pizza: Pizza = self.factory.createPizza(type)
    
    pizza.prepare()
    pizza.bake()
    pizza.cut()
    pizza.box()
    
    return pizza
  }
}
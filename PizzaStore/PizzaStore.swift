//
//  PizzaStore.swift
//  PizzaStore
//
//  Created by Homma Takushi on 2015/09/05.
//  Copyright (c) 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// ピザ屋さんの抽象クラス
class PizzaStore {

  /**
  （抽象クラス）コンストラクタ
  
  :returns: （抽象クラス）ピザ屋さん
  */
  init() {
    if (self.dynamicType === PizzaStore.self) {
      fatalError("Abstract Class")
    }
  }
  
  /**
  ピザを注文します。
  
  :param: type ピザの種類
  */
  func orderPizza(type: String) -> Pizza {
    var pizza: Pizza = self.createPizza(type)
    
    pizza.prepare()
    pizza.bake()
    pizza.cut()
    pizza.box()
    
    return pizza
  }
  
  /**
  （抽象クラス）ピザを作成します。
  
  :param: type ピザの種類
  
  :returns: ピザ
  */
  private func createPizza(type: String) -> Pizza {
    fatalError("Abstract Class")
  }
}

/// ニューヨークスタイルのピザ屋さん
class NYPizzaStore: PizzaStore {
  override private func createPizza(type: String) -> Pizza {
    var pizza: Pizza
  
    switch type {
    case "チーズ":
      pizza = NYStyleCheesePizza()
    default:
      fatalError(type + "はお取り扱いしておりません。")
    }
  
    return pizza
  }
}

/// シカゴスタイルのピザ屋さん
class ChicagoPizzaStore: PizzaStore {
  override private func createPizza(type: String) -> Pizza {
    var pizza: Pizza
    
    switch type {
    case "チーズ":
      pizza = ChicagoStypeCheedOPizza()
    default:
      fatalError(type + "はお取り扱いしておりません。")
    }
    
    return pizza
  }
}
//
//  Pizza.swift
//  PizzaStore
//
//  Created by Homma Takushi on 2015/09/05.
//  Copyright (c) 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// ピザの抽象クラス
class Pizza {
  
  /// ピザの種類
  var type: String
  
  /**
  コンストラクタ
  
  :returns: ピザ
  */
  init(type: String) {
    self.type = type
  }
  
  /**
  下ごしらえをします。
  */
  func prepare() {
    println(self.type + "ピザの下ごしらえをします。")
  }
  
  /**
  焼きます。
  */
  func bake() {
    println(self.type + "ピザを焼きます。")
  }
  
  /**
  切ります。
  */
  func cut() {
    println(self.type + "ピザを切ります。")
  }
  
  /**
  箱詰めします。
  */
  func box() {
    println(self.type + "ピザを箱詰めします。")
  }

}

/// チーズピザ
class CheesePizza : Pizza {
  
}

/// 野菜ピザ
class VeggiePizza: Pizza {
  
}

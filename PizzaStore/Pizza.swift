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
  
  /// 名前
  private(set) var name: String
  
  /// 生地の種類
  private var dough: String
  
  /// ソースの種類
  private var sauce: String
  
  /// トッピング
  private var toppings: [String]
  
  /**
  コンストラクタ
  
  :returns: ピザ
  */
  init() {
    self.name = ""
    self.dough = ""
    self.sauce = ""
    self.toppings = []
    
    if (self.dynamicType === PizzaStore.self) {
      fatalError("Abstract Class")
    }
  }
  
  /**
  下処理をします。
  */
  func prepare() {
    println(self.name + "を下処理")
    println("生地をこねる……")
    println("ソースを追加……")
    println("トッピングを追加：")
    for t in self.toppings {
      println("  " + t)
    }
  }
  
  /**
  焼きます。
  */
  func bake() {
    println("350度で25分焼く")
  }
  
  /**
  切り分けます。
  */
  func cut() {
    println("ピザを扇型に切り分ける")
  }
  
  /**
  箱に入れます。
  */
  func box() {
    println("PizzaStoreの正式な箱にピザを入れる")
  }
}

/// ニューヨークスタイルのチーズピザ
class NYStyleCheesePizza : Pizza {
  override init() {
    super.init()
    
    super.name = "ニューヨークスタイルのソース&チーズピザ"
    super.dough = "薄いクラスト生地"
    super.sauce = "マリナラソース"
    
    super.toppings = ["粉レッジャーノチーズ"]
  }
  
  /**
  切り分けます
  */
  override func cut() {
    println("ピザを四角形に切り分ける")
  }
}

/// シカゴスタイルのチーズピザ
class ChicagoStypeCheedOPizza: Pizza {
  override init() {
    super.init()
    
    super.name = "シカゴスタイルのディープディッシュチーズピザ"
    super.dough = "極厚クラスト処理"
    super.sauce = "プラムトマトソース"
    
    super.toppings = ["刻んだモツァレラチーズ"]
  }
}
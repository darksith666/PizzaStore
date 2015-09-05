//
//  main.swift
//  PizzaStore
//
//  Created by Homma Takushi on 2015/09/05.
//  Copyright (c) 2015年 mfmf.me. All rights reserved.
//

import Foundation

var nyStore: NYPizzaStore = NYPizzaStore()
var chicagoStore: ChicagoPizzaStore = ChicagoPizzaStore()

var pizza: Pizza = nyStore.orderPizza("チーズ")
//pizza.name = "Cheese" //Cannot assign to 'name' in 'pizza'
println("イーサンの注文は" + pizza.name + "\n")

pizza = chicagoStore.orderPizza("チーズ")
println("ジョエルの注文は" + pizza.name + "\n")
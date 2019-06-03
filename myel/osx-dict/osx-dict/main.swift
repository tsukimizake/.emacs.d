//
//  main.swift
//  osx-dict
//
//  Created by admin_sho on 2015/12/10.
//  Copyright © 2015年 tsukimizake. All rights reserved.
//
import Foundation

func callDictionary(str:String)->Unmanaged<CFString>?{
    let range = CFRangeMake(0, str.characters.count)
    return DCSCopyTextDefinition(nil, str, range)
}

let args = Process.arguments
let str = args.dropFirst().first

if(str == nil){
	print("No argument passed. This command will translate first argument.")
	exit(1)
a

let res = callDictionary(str!)


if (res == nil){
	print("\(str)Not found.")
	exit(0)
}



print(res!.takeRetainedValue() as String)




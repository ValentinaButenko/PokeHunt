//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Blocks: UIView{

    var firstBlock: UIView!
    var secondBlock: UIView!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }

    func setup(){
        self.setupFirstBlock()
        self.setupSecondBlock()
    }

    func setupFirstBlock(){
        let firstBlock = UIView(frame: CGRectMake(55, 0, 110, 110))
        firstBlock.backgroundColor = UIColor.redColor()
        self .addSubview(firstBlock)
        self.firstBlock = firstBlock
    }

    func setupSecondBlock(){
        let secondBlock = UIView(frame: CGRectMake(0, 128, 220, 70))
        secondBlock.backgroundColor = UIColor.blueColor()
        self .addSubview(secondBlock)
        self.secondBlock = secondBlock
    }
}

let result = Blocks(frame: CGRectMake(0, 0, 220, 198))

result

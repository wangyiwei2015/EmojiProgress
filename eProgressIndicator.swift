import UIKit

class eProgressIndicator: UIView {
    var progress: Float = 0
    var statusChar: [String]?
    var length: Int = 1
    var text: UILabel!
    
    init(_ chars: [String], length: Int, frame: CGRect) {
        super.init(frame: frame)
        self.statusChar = chars
        if(length > 1) {self.length = length}
        text = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        text.font = .systemFont(ofSize: 14)
        var str = ""
        for _ in 1...length {
            str += chars[0]
        }
        text.text = str
        self.addSubview(text)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func resetStatusCharacters(_ chars: [String]) {
        self.statusChar = chars
    }
    
    public func setLength(_ len: Int) {
        if(len > 0) {self.length = len}
        self.setProgress(progress)
    }
    
    public func setFont(_ font: UIFont) {
        text.font = font
    }
    
    public func setProgress(_ p: Float) {
        if(statusChar == nil) {return}
        let char = statusChar!
        let count = char.count
        if(count >= 2) {
            let blockCount:Float = p * Float(length) * Float(count - 1)
            //let subblock = blockCount.truncatingRemainder(dividingBy: Float(char.count - 1))
            let subblock = Int(blockCount) % (count - 1)
            let block = Int(blockCount / Float(count - 1))
            var str = ""
            if(block == 1) {str += char[count - 1]}
            else if(block > 1) {
                for _ in 1...block {
                    str += char[count - 1]
                }
            }
            if(subblock > 0) {str += char[subblock]}
            let remaining: Int = length - str.count
            if(remaining > 1) {
                for _ in 1...remaining {str += char[0]}
            } else if(remaining == 1) {str += char[0]}
            text.text = str
        }
    }
}

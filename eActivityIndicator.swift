import UIKit

class eActivityIndicator: UIView {
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
    
    private var currentFrame: Int = 0
    private var statusChar: [String]?
    private var text: UILabel!
    private var animationTimer: Timer?
    public var isAnimating = false
    private var fps: Int = 3
    
    init(_ chars: [String], fps: Int, frame: CGRect) {
        statusChar = chars
        text = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        text.font = .systemFont(ofSize: 20)
        text.text = chars[0]
        text.textAlignment = .center
        super.init(frame: frame)
        self.addSubview(text)
        self.fps = fps
    }
    
    public func resetStatusCharacters(_ chars: [String]) {
        self.statusChar = chars
    }
    
    public func startAnimating() {
        animationTimer = Timer.scheduledTimer(timeInterval: TimeInterval(1.0 / Double(fps)), target: self, selector: #selector(nextFrame), userInfo: nil, repeats: true)
        isAnimating = true
    }
    
    public func stopAnimating() {
        animationTimer?.invalidate()
        isAnimating = false
    }
    
    @objc func nextFrame() {
        let maxIndex = (statusChar?.count ?? 0) - 1
        if(maxIndex < 1) {return}
        currentFrame = (currentFrame == maxIndex) ? 0 : currentFrame + 1
        text.text = statusChar?[currentFrame]
    }
    
    public func setSize(_ size: CGFloat) {
        text.font = .systemFont(ofSize: size)
    }
}

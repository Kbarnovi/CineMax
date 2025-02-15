import UIKit

@IBDesignable
class BasicInput: UIView {
    
    // MARK: - UI Elements
    private let button = UIButton(type: .system)
    
    // MARK: - Inspectable Properties (For Storyboard)
    @IBInspectable var title: String = "Click Me" {
        didSet { button.setTitle(title, for: .normal) }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 10 {
        didSet { button.layer.cornerRadius = cornerRadius }
    }

    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        button.setTitle(title, for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = cornerRadius
        button.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(button)
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: topAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}

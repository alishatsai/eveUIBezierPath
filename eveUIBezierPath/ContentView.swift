//
//  ContentView.swift
//  eveUIBezierPath
//
//  Created by Alisha on 2020/11/21.
//

import SwiftUI

var backImageView: UIView = makeBackImageView() //底圖
var helmetView: UIView = makeHelmetView()       //頭盔
var faceView: UIView = makeFaceView()           //臉
var eyeSmileView: UIView = makeEyeSmileView()   //笑眼
var eyeAngryView: UIView = makeEyeAngryView()   //怒眼
var eyeRoundView: UIView = makeEyeRoundView()   //圓眼
var bodyView: UIView = makeBodyView()           //軀幹
var bodyTopView: UIView = makeBodyTopView()     //軀幹上方
var shadowView: UIView = makeShadowView()       //eve陰影
var handRightView: UIView = makeHandRightView() //右手
var handLeftView: UIView = makeHandLeftView()   //左手
var shadowHRView: UIView = makeShadowHRView()   //右手陰影
var shadowHLView: UIView = makeShadowHLView()   //左手陰影
var heartView: UIView = makeHeartView()         //心臟
    
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        let eveView = UIView()
        eveView.frame = CGRect(x: 0, y: 180, width: 350, height: 350)
        
//        eveView.addSubview(backImageView)//完成底圖描繪可隱藏
        eveView.addSubview(bodyView)
        eveView.addSubview(bodyTopView)
        eveView.addSubview(helmetView)
        eveView.addSubview(faceView)
        eveView.addSubview(eyeSmileView)
        eveView.addSubview(eyeAngryView)
        eveView.addSubview(eyeRoundView)
        eveView.addSubview(heartView)
        eveView.addSubview(shadowHRView)
        eveView.addSubview(shadowHLView)
        eveView.addSubview(handRightView)
        eveView.addSubview(handLeftView)
//        eveView.addSubview(shadowView)
    
        view.addSubview(eveView)

    
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}

//底圖
func makeBackImageView() -> UIView {
    let backImageView = UIView()
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 375, height: 375))
    imageView.image = UIImage(named: "eve.png")
    imageView.backgroundColor = UIColor.systemBlue
    imageView.alpha = 0.8
    backImageView.addSubview(imageView)
    return backImageView
}

//頭盔
func makeHelmetView() -> UIView {
    let helmetView = UIView()
    let helmetPath = UIBezierPath()

    //375/2 = 187.5
    helmetPath.move(to: CGPoint(x: 108, y: 82))
    helmetPath.addCurve(to: CGPoint(x: 267, y: 82), controlPoint1: CGPoint(x: 120, y: -19), controlPoint2: CGPoint(x: 256, y: -19))
    helmetPath.addCurve(to: CGPoint(x: 187.5, y: 130), controlPoint1: CGPoint(x: 269, y: 115), controlPoint2: CGPoint( x: 227, y: 130))
    helmetPath.addCurve(to: CGPoint(x: 108, y: 82), controlPoint1: CGPoint(x: 148, y: 130), controlPoint2: CGPoint(x: 106, y: 115))
    helmetPath.close()
    
    let helmetLayer = CAShapeLayer()
    helmetLayer.path = helmetPath.cgPath
    helmetLayer.lineCap = CAShapeLayerLineCap.round
    helmetLayer.lineJoin = CAShapeLayerLineJoin.round
    helmetLayer.strokeColor = CGColor(srgbRed: 10/255, green: 10/255, blue: 10/255, alpha: 0.2)
    helmetLayer.fillColor = CGColor(srgbRed: 249/255, green: 249/255, blue: 249/255, alpha: 1)
    helmetView.layer.addSublayer(helmetLayer)
    
    return helmetView
}

//臉
func makeFaceView() -> UIView {
    let faceView = UIView()
    let facePath = UIBezierPath()
    facePath.move(to: CGPoint(x: 125, y: 68))
    facePath.addCurve(to: CGPoint(x: 250, y: 68), controlPoint1: CGPoint(x: 131, y: 0), controlPoint2: CGPoint(x: 244, y: 0))
    facePath.addCurve(to: CGPoint(x: 125, y: 68), controlPoint1: CGPoint(x: 252, y: 103), controlPoint2: CGPoint(x: 125, y: 103))
    facePath.close()
    
    let faceLayer = CAShapeLayer()
    faceLayer.path = facePath.cgPath
    faceLayer.lineCap = CAShapeLayerLineCap.round
    faceLayer.lineJoin = CAShapeLayerLineJoin.round
    faceLayer.strokeColor = CGColor(srgbRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
    faceLayer.fillColor = CGColor(srgbRed: 1/255, green: 1/255, blue: 1/255, alpha: 1)
    faceView.layer.addSublayer(faceLayer)
    
    return faceView
}

//笑眼
func makeEyeSmileView() -> UIView {
    let eyeSmileView = UIView()
    //right
    let rightEyeSmileView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    let rightEyeSmilePath = UIBezierPath()
    rightEyeSmilePath.move(to: CGPoint(x: 196, y: 55))
    rightEyeSmilePath.addCurve(to: CGPoint(x: 232, y: 54), controlPoint1: CGPoint(x: 198, y: 38), controlPoint2: CGPoint(x: 234, y: 40))
    rightEyeSmilePath.addCurve(to: CGPoint(x: 196, y: 55), controlPoint1: CGPoint(x: 228, y: 50), controlPoint2: CGPoint(x: 203, y: 49))
    rightEyeSmilePath.close()
    let rightEyeSmileLayer = CAShapeLayer()
    rightEyeSmileLayer.path = rightEyeSmilePath.cgPath
    rightEyeSmileLayer.strokeColor = CGColor(srgbRed: 50/255, green: 175/255, blue: 204/255, alpha: 1)
    rightEyeSmileLayer.lineCap = CAShapeLayerLineCap.round
    rightEyeSmileLayer.lineJoin = CAShapeLayerLineJoin.round
    rightEyeSmileLayer.fillColor = CGColor(srgbRed: 34/255, green: 164/255, blue: 204/255, alpha: 1)
    rightEyeSmileView.layer.addSublayer(rightEyeSmileLayer)
    
    //left
    let leftEyeSmileView = UIView(frame: CGRect(x: 176, y: 0, width: 200, height: 200))
    let leftEyeSmileLayer = CAShapeLayer()
    leftEyeSmileLayer.path = rightEyeSmilePath.cgPath
    leftEyeSmileLayer.strokeColor = CGColor(srgbRed: 50/255, green: 175/255, blue: 204/255, alpha: 1)
    leftEyeSmileLayer.lineCap = CAShapeLayerLineCap.round
    leftEyeSmileLayer.lineJoin = CAShapeLayerLineJoin.round
    leftEyeSmileLayer.fillColor = CGColor(srgbRed: 34/255, green: 164/255, blue: 204/255, alpha: 1)
    leftEyeSmileView.layer.addSublayer(leftEyeSmileLayer)
    
    //mirror
    leftEyeSmileView.transform = CGAffineTransform(scaleX: -1, y: 1)
    
    eyeSmileView.addSubview(rightEyeSmileView)
    eyeSmileView.addSubview(leftEyeSmileView)
    return eyeSmileView
}

//圓眼
func makeEyeRoundView() -> UIView {
    let eyeRoundView = UIView()
    //right
    let rightEyeRoundView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    let rightEyeRoundPath = UIBezierPath()
    rightEyeRoundPath.move(to: CGPoint(x: 196, y: 55))
    rightEyeRoundPath.addCurve(to: CGPoint(x: 232, y: 54), controlPoint1: CGPoint(x: 198, y: 38), controlPoint2: CGPoint(x: 234, y: 40))
    rightEyeRoundPath.addCurve(to: CGPoint(x: 196, y: 55), controlPoint1: CGPoint(x: 232, y: 62), controlPoint2: CGPoint(x: 198, y: 67))
    rightEyeRoundPath.close()
    let rightEyeRoundLayer = CAShapeLayer()
    rightEyeRoundLayer.path = rightEyeRoundPath.cgPath
    rightEyeRoundLayer.strokeColor = CGColor(srgbRed: 50/255, green: 175/255, blue: 204/255, alpha: 1)
    rightEyeRoundLayer.lineCap = CAShapeLayerLineCap.round
    rightEyeRoundLayer.lineJoin = CAShapeLayerLineJoin.round
    rightEyeRoundLayer.fillColor = CGColor(srgbRed: 34/255, green: 164/255, blue: 204/255, alpha: 1)
    rightEyeRoundView.layer.addSublayer(rightEyeRoundLayer)
    
    //left
    let leftEyeRoundView = UIView(frame: CGRect(x: 176, y: 0, width: 200, height: 200))
    let leftEyeRoundLayer = CAShapeLayer()
    leftEyeRoundLayer.path = rightEyeRoundPath.cgPath
    leftEyeRoundLayer.strokeColor = CGColor(srgbRed: 50/255, green: 175/255, blue: 204/255, alpha: 1)
    leftEyeRoundLayer.lineCap = CAShapeLayerLineCap.round
    leftEyeRoundLayer.lineJoin = CAShapeLayerLineJoin.round
    leftEyeRoundLayer.fillColor = CGColor(srgbRed: 34/255, green: 164/255, blue: 204/255, alpha: 1)
    leftEyeRoundView.layer.addSublayer(leftEyeRoundLayer)
    
    //mirror
    leftEyeRoundView.transform = CGAffineTransform(scaleX: -1, y: 1)
    
    eyeRoundView.addSubview(rightEyeRoundView)
    eyeRoundView.addSubview(leftEyeRoundView)
    return eyeRoundView
}

//怒眼
func makeEyeAngryView() -> UIView {
    let eyeAngryView = UIView()
    //right
    let rightEyeAngryView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    let rightEyeAngryPath = UIBezierPath()
    rightEyeAngryPath.move(to: CGPoint(x: 230, y: 48))
    rightEyeAngryPath.addCurve(to: CGPoint(x: 196, y: 55), controlPoint1: CGPoint(x: 232, y: 62), controlPoint2: CGPoint(x: 198, y: 67))
    rightEyeAngryPath.close()
    
    let rightEyeAngryLayer = CAShapeLayer()
    rightEyeAngryLayer.path = rightEyeAngryPath.cgPath
    rightEyeAngryLayer.strokeColor = CGColor(srgbRed: 235/255, green: 70/255, blue: 64/255, alpha: 1)
    rightEyeAngryLayer.lineCap = CAShapeLayerLineCap.round
    rightEyeAngryLayer.lineJoin = CAShapeLayerLineJoin.round
    rightEyeAngryLayer.fillColor = CGColor(srgbRed: 235/255, green: 100/255, blue: 80/255, alpha: 1)
    rightEyeAngryView.layer.addSublayer(rightEyeAngryLayer)
    
    //left
    let leftEyeAngryView = UIView(frame: CGRect(x: 176, y: 0, width: 200, height: 200))
    let leftEyeAngryLayer = CAShapeLayer()
    leftEyeAngryLayer.path = rightEyeAngryPath.cgPath
    leftEyeAngryLayer.strokeColor = CGColor(srgbRed: 235/255, green: 70/255, blue: 64/255, alpha: 1)
    leftEyeAngryLayer.lineCap = CAShapeLayerLineCap.round
    leftEyeAngryLayer.lineJoin = CAShapeLayerLineJoin.round
    leftEyeAngryLayer.fillColor = CGColor(srgbRed: 235/255, green: 100/255, blue: 80/255, alpha: 1)
    leftEyeAngryView.layer.addSublayer(leftEyeAngryLayer)
    
    //mirror
    leftEyeAngryView.transform = CGAffineTransform(scaleX: -1, y: 1)
    
    eyeAngryView.addSubview(rightEyeAngryView)
    eyeAngryView.addSubview(leftEyeAngryView)
    return eyeAngryView
}

func makeBodyView() -> UIView {
    let bodyView = UIView()
    let bodyPath = UIBezierPath()
    bodyPath.move(to: CGPoint(x: 269, y: 126))
    bodyPath.addCurve(to: CGPoint(x: 188, y: 329), controlPoint1: CGPoint(x: 285, y: 200), controlPoint2: CGPoint(x: 250, y: 330))
    bodyPath.addCurve(to: CGPoint(x: 107, y: 126), controlPoint1: CGPoint(x: 126, y: 330), controlPoint2: CGPoint(x: 91, y: 200))
    bodyPath.addCurve(to: CGPoint(x: 269, y: 126), controlPoint1: CGPoint(x: 114, y: 108), controlPoint2: CGPoint(x: 262, y: 108))
    bodyPath.close()

    let bodyLayer = CAShapeLayer()
    bodyLayer.path = bodyPath.cgPath
    bodyLayer.strokeColor = CGColor(srgbRed: 10/255, green: 10/255, blue: 10/255, alpha: 0.2)
    bodyLayer.lineCap = CAShapeLayerLineCap.round
    bodyLayer.lineJoin = CAShapeLayerLineJoin.round
    bodyLayer.fillColor = CGColor(srgbRed: 249/255, green: 249/255, blue: 249/255, alpha: 1)
    bodyView.layer.addSublayer(bodyLayer)
    return bodyView
}

//軀幹上方
func makeBodyTopView() -> UIView {
    let bodyTopView = UIView()
    let bodyTopPath = UIBezierPath()
    bodyTopPath.move(to: CGPoint(x: 269, y: 126))
    bodyTopPath.addCurve(to: CGPoint(x: 107, y: 126), controlPoint1: CGPoint(x: 228, y: 146), controlPoint2: CGPoint(x: 148, y: 146))
    bodyTopPath.addCurve(to: CGPoint(x: 269, y: 126), controlPoint1: CGPoint(x: 114, y: 108), controlPoint2: CGPoint(x: 262, y: 108))
    bodyTopPath.close()
       
    let bodyTopLayer = CAShapeLayer()
    bodyTopLayer.path = bodyTopPath.cgPath
    bodyTopLayer.strokeColor = CGColor(srgbRed: 10/255, green: 10/255, blue: 10/255, alpha: 0.2)
    bodyTopLayer.lineCap = CAShapeLayerLineCap.round
    bodyTopLayer.lineJoin = CAShapeLayerLineJoin.round
    bodyTopLayer.fillColor = CGColor(srgbRed: 230/255, green: 230/255, blue: 230/255, alpha: 0.5)
    bodyTopView.layer.addSublayer(bodyTopLayer)
    return bodyTopView
}

//eve陰影
func makeShadowView() -> UIView {
    let shadowView = UIView()
    let shadowPath = UIBezierPath(ovalIn: CGRect(x: 143, y: 343, width: 90, height: 30))
    
    let shadowLayer = CAShapeLayer()
    shadowLayer.path = shadowPath.cgPath
    shadowLayer.fillColor = CGColor(srgbRed: 230/255, green: 230/255, blue: 230/255, alpha: 0.5)
    shadowView.layer.addSublayer(shadowLayer)
    
    return shadowView
}

//右手
func makeHandRightView() -> UIView {
    let handRightView = UIView()
    let handRightPath = UIBezierPath()
    handRightPath.move(to: CGPoint(x: 288, y: 155))
    handRightPath.addCurve(to: CGPoint(x: 251, y: 287), controlPoint1: CGPoint(x: 291, y: 203), controlPoint2: CGPoint(x: 274, y: 284))
    handRightPath.addCurve(to: CGPoint(x: 262, y: 151), controlPoint1: CGPoint(x: 238, y: 284), controlPoint2: CGPoint(x: 262, y: 211))
    handRightPath.addCurve(to: CGPoint(x: 288, y: 155), controlPoint1: CGPoint(x: 262, y: 137), controlPoint2: CGPoint(x: 282, y: 140))
    handRightPath.close()
    
    let handRightLayer = CAShapeLayer()
    handRightLayer.path = handRightPath.cgPath
    handRightLayer.strokeColor = CGColor(srgbRed: 10/255, green: 10/255, blue: 10/255, alpha: 0.2)
    handRightLayer.fillColor = CGColor(srgbRed: 249/255, green: 249/255, blue: 249/255, alpha: 1)
    handRightLayer.lineCap = CAShapeLayerLineCap.round
    handRightLayer.lineJoin = CAShapeLayerLineJoin.round
    handRightLayer.anchorPoint = CGPoint(x: 262, y: 151)
    handRightView.layer.addSublayer(handRightLayer)
    
    return handRightView
}

//左手
func makeHandLeftView() -> UIView {
    let handLeftView = UIView()
    let handLeftPath = UIBezierPath()
    handLeftPath.move(to: CGPoint(x: 87, y: 155))
    handLeftPath.addCurve(to: CGPoint(x: 124, y: 287), controlPoint1: CGPoint(x: 84, y: 203), controlPoint2: CGPoint(x: 102, y: 284))
    handLeftPath.addCurve(to: CGPoint(x: 113, y: 151), controlPoint1: CGPoint(x: 137, y: 284), controlPoint2: CGPoint(x: 113, y: 211))
    handLeftPath.addCurve(to: CGPoint(x: 87, y: 155), controlPoint1: CGPoint(x: 113, y: 137), controlPoint2: CGPoint(x: 93, y: 140))
    handLeftPath.close()
    
    let handLeftLayer = CAShapeLayer()
    handLeftLayer.path = handLeftPath.cgPath
    handLeftLayer.strokeColor = CGColor(srgbRed: 10/255, green: 10/255, blue: 10/255, alpha: 0.2)
    handLeftLayer.fillColor = CGColor(srgbRed: 249/255, green: 249/255, blue: 249/255, alpha: 1)
    handLeftLayer.lineCap = CAShapeLayerLineCap.round
    handLeftLayer.lineJoin = CAShapeLayerLineJoin.round
    handLeftView.layer.addSublayer(handLeftLayer)
    
    return handLeftView
}
//右手陰影
func makeShadowHRView() -> UIView {
    let shadowHRView = UIView()
    let shadowHRPath = UIBezierPath()
    shadowHRPath.move(to: CGPoint(x: 252, y: 149))
    shadowHRPath.addQuadCurve(to: CGPoint(x: 268, y: 138), controlPoint: CGPoint(x: 262, y: 133))
    shadowHRPath.addCurve(to: CGPoint(x: 239, y: 278), controlPoint1: CGPoint(x: 272, y: 172), controlPoint2: CGPoint(x: 255, y: 278))
    shadowHRPath.addCurve(to: CGPoint(x: 252, y: 149), controlPoint1: CGPoint(x: 232, y: 278), controlPoint2: CGPoint(x: 252, y: 199))
    
    shadowHRPath.close()
    
    let shadowHRLayer = CAShapeLayer()
    shadowHRLayer.path = shadowHRPath.cgPath
    shadowHRLayer.fillColor = CGColor(srgbRed: 218/255, green: 218/255, blue: 218/255, alpha: 0.4)
    shadowHRLayer.lineCap = CAShapeLayerLineCap.round
    shadowHRLayer.lineJoin = CAShapeLayerLineJoin.round
    shadowHRView.layer.addSublayer(shadowHRLayer)
    
    return shadowHRView
}
//左手陰影
func makeShadowHLView() -> UIView {
    let shadowHLView = UIView()
    let shadowHLPath = UIBezierPath()
    shadowHLPath.move(to: CGPoint(x: 123, y: 149))
    shadowHLPath.addQuadCurve(to: CGPoint(x: 107, y: 138), controlPoint: CGPoint(x: 113, y: 133))
    shadowHLPath.addCurve(to: CGPoint(x: 136, y: 278), controlPoint1: CGPoint(x: 103, y: 172), controlPoint2: CGPoint(x: 120, y: 278))
    shadowHLPath.addCurve(to: CGPoint(x: 123, y: 149), controlPoint1: CGPoint(x: 143, y: 278), controlPoint2: CGPoint(x: 123, y: 199))
    shadowHLPath.close()
    
    let shadowHLLayer = CAShapeLayer()
    shadowHLLayer.path = shadowHLPath.cgPath
    shadowHLLayer.fillColor = CGColor(srgbRed: 218/255, green: 218/255, blue: 218/255, alpha: 0.4)
    shadowHLLayer.lineCap = CAShapeLayerLineCap.round
    shadowHLLayer.lineJoin = CAShapeLayerLineJoin.round
    shadowHLView.layer.addSublayer(shadowHLLayer)
    
    return shadowHLView
}
//心臟
func makeHeartView() -> UIView {
    let heartView = UIView()
    let heartPath = UIBezierPath()
    heartPath.move(to: CGPoint(x: 223, y: 170))
    heartPath.addCurve(to: CGPoint(x: 223, y: 186), controlPoint1: CGPoint(x: 250, y: 150), controlPoint2: CGPoint(x: 230, y: 186))
    heartPath.addCurve(to: CGPoint(x: 223, y: 170), controlPoint1: CGPoint(x: 216, y: 186), controlPoint2: CGPoint(x: 196, y: 150))
    heartPath.close()
    
    let heartLayer = CAShapeLayer()
    heartLayer.path = heartPath.cgPath
    heartLayer.strokeColor = CGColor(srgbRed: 255/255, green: 70/255, blue: 64/255, alpha: 0.7)
    heartLayer.fillColor = CGColor(srgbRed: 255/255, green: 70/255, blue: 64/255, alpha: 0.5)
    heartLayer.lineCap = CAShapeLayerLineCap.round
    heartLayer.lineJoin = CAShapeLayerLineJoin.round
    heartView.layer.addSublayer(heartLayer)
    
    return heartView
}

//表情變化
struct ContentView: View {
    var body: some View {
        VStack {
            DrawView()
            HStack {
                Button(action: {
                    clickHappy()
                }) {
                    Text("Happy")
                    .background(Color.yellow)
                }
                .frame(width: 60, height: 50)
                .position(x: 120, y: 250)
                
                Button(action: {
                    clickAngry()
                }) {
                    Text("Angry")
                    .background(Color.yellow)
                }
                .frame(width: 60, height: 50)
                .position(x: 75, y: 250)
            }
        }
        .background(
            Image("outerSpace")
                .edgesIgnoringSafeArea(.all)
        )
        
    }
    
    //click Happy
    func clickHappy() {
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.5, delay: 0, options: .curveEaseInOut) {
            eyeSmileView.alpha = 1
            eyeRoundView.alpha = 0
            eyeAngryView.alpha = 0
            heartView.alpha = 1
        } completion: { (_) in
            UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.5, delay: 1, options: .curveEaseInOut) {
                eyeSmileView.alpha = 0
                eyeRoundView.alpha = 1
                eyeAngryView.alpha = 0
                heartView.alpha = 0.5
            }
        }
    }
    //click Angry
    func clickAngry() {
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.5, delay: 0, options: .curveEaseInOut) {
            eyeSmileView.alpha = 0
            eyeRoundView.alpha = 0
            eyeAngryView.alpha = 1
            heartView.alpha = 0
        } completion: { (_) in
            UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.5, delay: 1, options: .curveEaseInOut) {
                eyeSmileView.alpha = 0
                eyeRoundView.alpha = 1
                eyeAngryView.alpha = 0
                heartView.alpha = 0.5
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

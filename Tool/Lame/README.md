#LAME MP3 Encoder

- lame-ios-build  <https://github.com/kewlbear/lame-ios-build>
- lame <https://sourceforge.net/projects/lame/files/lame/>
- lame iOS打包 <http://www.jianshu.com/p/864a9fbaa79e>

```swift

import UIKit
import AVFoundation

class ViewController: UIViewController {


var web:UIWebView?
var articleStr = "C8SFSCBU00038FO9"

override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view, typically from a nib.
//        web = UIWebView(frame: self.view.bounds)
//        web?.delegate = self
//        view.addSubview(web!)
//        webRequestHTML()





}


lazy var record: AVAudioRecorder? = {
// 开始录音

// url : 录音文件的路径
let url = URL(string: "/Users/batang/Desktop/test.caf")

// setting : 录音的设置项
// 录音参数设置(不需要掌握, 一些固定的配置)
let configDic: [String: AnyObject] = [
// 编码格式
AVFormatIDKey: NSNumber(value: Int32(kAudioFormatLinearPCM) as Int32),
// 采样率
AVSampleRateKey: NSNumber(value: 11025.0 as Float),
// 通道数
AVNumberOfChannelsKey: NSNumber(value: 2 as Int32),
// 录音质量
AVEncoderAudioQualityKey: NSNumber(value: Int32(AVAudioQuality.min.rawValue) as Int32)
]


do {
let record = try AVAudioRecorder(url: url!, settings: configDic)
// 准备录音(系统会给我们分配一些资源)
record.prepareToRecord()

return record
// 开始录音
// 直接就开始录音(需要我们手动通过代码结束录音)
//            record.record()
// 从未来的某个时间点, 开始录音(需要我们手动通过代码结束录音)
//            record.recordAtTime(record.deviceCurrentTime + 3)

// 从现在开始录音, 录多久
//            record.recordForDuration(3)

// 从哪个时间点开始录, 录多久
//            record.recordAtTime(<#T##time: NSTimeInterval##NSTimeInterval#>, forDuration: <#T##NSTimeInterval#>)



}catch {
print(error)
return nil
}


}()


override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
// Dispose of any resources that can be recreated.
}

}

extension ViewController{

override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
print("开始录音")
record?.record()
}

override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
// 根据当前的录音时间, 做处理
// 如果录音不超过两秒, 则删除录音
// 如果超过, 就正常处理
if (record?.currentTime)! > TimeInterval(2) {
record?.stop()
}else {
print("录音时间太短")
// 删除录音文件
// 如果想要删除录音文件, 必须先让录音停止
record?.stop()
record?.deleteRecording()
}

print("结束录音")
// 结束录音
record?.stop()


// 转码
let path = BJLameTool.audio(toMP3: "/Users/batang/Desktop/test.caf", isDeleteSourchFile: true)
print(path ?? "空")

}

}
```

# ios-Line-Chart

### [Tool for creating simple line charts](https://github.com/tyfal/ios-Line-Chart/blob/master/LineChartTest/AnimationFunctions.swift)

![Example Chart](https://github.com/tyfal/ios-Line-Chart/blob/master/READMEimgs/lineChartEx.png)

With minimal code.
      
      @IBOutlet weak var LineChart: UIView!

      override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view, typically from a nib.

          drawSeries(CurrentVC: LineChart, ySeries: [7.0, 2.0, 4.0, 3.0, 4.0, 6.0, 4.0, 3.0, 1.0, 12.0, 10.0])
      }

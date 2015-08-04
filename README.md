# FPStepView

FPStepView is a simple view show the steps. Written in Objective-c.

![Sample](https://github.com/FellowPlusDev/FPStepView/blob/master/sample.png)

## Installation
#### CocoaPods

	pod 'FPStepView', '~> 1.0.0'
	
#### Source File
You can copy all the files under the `Sources` folder into your project.

## Usage

```objective-c
self.stepView = [[FPStepView alloc] initWithFrame:CGRectMake(0, 30, CGRectGetWidth(self.view.frame), 9)];
self.stepView.totalStep = 6;
self.stepView.currentStep = 2;
self.stepView.finishedStepColor = [UIColor redColor];
self.stepView.comingStepColor = [UIColor blueColor];
[self.view addSubview:self.stepView];
```
## Author

Liu Yi, 61@fellowplus.com

## License

FPStepView is available under the MIT license. See the LICENSE file for more info.
# FPStepView

FPStepView is a simple view show the steps. Written in Objective-c.

## Installation
#### CocoaPods

	pod 'FPStepView', :git => 'https://github.com/FellowPlusDev/FPStepView.git'
	
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
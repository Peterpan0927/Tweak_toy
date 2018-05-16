%hook   UIScreen
+(id)mainScreen
{
  UIScreen *foo = %orig;
	CGRect &cc = MSHookIvar<CGRect>(foo, "_bounds");
  cc.size.width=1080.0f;
  cc.size.height=1920.0f;
  NSLog(@"=========================debug:[%f]",cc.size.width);
  CGRect screenBounds = [foo bounds];
  NSLog(@"============:1[%f]",screenBounds.size.height);
  return  foo;
}
%end

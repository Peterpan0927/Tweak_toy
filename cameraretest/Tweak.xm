%hook CAMApplication
- (void)startSwitchModeTest{
    %orig;
    NSLog(@"CameraHook");
}

%end

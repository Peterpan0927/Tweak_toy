#include <notify.h>
%hook SBScreenShotter
- (void)saveScreenshot:(BOOL)down {
  %orig;
  NSLog(@"makesure");
  NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.Accessibility.plist"];
  [dictionary setObject:[NSNumber numberWithInt:2] forKey:@"DefaultRouteForCallPreference"];
  [dictionary writeToFile:@"/var/mobile/Library/Preferences/com.apple.Accessibility.plist" atomically:YES];
  notify_post("com.apple.accessibility.defaultrouteforcall");
} 
%end

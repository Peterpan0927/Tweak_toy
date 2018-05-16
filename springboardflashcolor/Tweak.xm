%hook SBScreenFlash


- (void)flashColor:(UIColor *)color withCompletion:(id)arg2{
  int R = (arc4random() % 256) ;
  int G = (arc4random() % 256) ;
  int B = (arc4random() % 256) ;
  UIColor *to = [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
  %orig(to, nil);
}



%end

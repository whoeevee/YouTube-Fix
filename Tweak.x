#import <Foundation/Foundation.h>

%hook YTImageSelectionStrategyImageURLs

- (NSURL *)selectedImageURL {

	NSURL *url = %orig;

	if ([[url host] isEqualToString:@"yt3.ggpht.com"]) {

		NSURLComponents *components = [
			[NSURLComponents alloc] initWithURL:url resolvingAgainstBaseURL:YES
		];

		components.host = @"yt4.ggpht.com";
		return [components URL];
	}

	return url;
}

%end
#include <iostream>
#include <string>


%hook AVPlayer

- (void)setRate:(float)rate {
    if (rate == 1.0) { // Assuming 1.0 is the normal rate for video ads
        %orig(2.0); // Doubles the speed for ad playback
    } else {
        %orig(rate); // Applies the original rate for non-ad content
    }
}

%end

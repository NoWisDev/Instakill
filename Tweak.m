#import "Instakill-Swift.h"

__attribute__((constructor)) static void init(void) {
    Instakill *instaKill = [Instakill new];
    [instaKill arm];
}
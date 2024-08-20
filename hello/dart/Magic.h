//
//  Magic.h
//  Dart
//
//  Created by Ivan Inozemtsev on 07.08.2024.
//

#ifndef Magic_h
#define Magic_h

#include <inttypes.h>

#ifdef __cplusplus
extern "C" {
#endif

int64_t GetDartMagic();

int64_t AnotherMagic() { return 7; }

#ifdef __cplusplus
}
#endif

#endif /* Magic_h */

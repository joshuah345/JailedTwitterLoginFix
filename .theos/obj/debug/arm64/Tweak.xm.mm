#line 1 "Tweak.xm"
#ifdef __OBJC__
#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#endif


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class TFSKeychain; @class TFSKeychainDefaultTwitterConfiguration; 
static NSString * (*_logos_orig$_ungrouped$TFSKeychain$providerDefaultAccessGroup)(_LOGOS_SELF_TYPE_NORMAL TFSKeychain* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$TFSKeychain$providerDefaultAccessGroup(_LOGOS_SELF_TYPE_NORMAL TFSKeychain* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$TFSKeychain$providerSharedAccessGroup)(_LOGOS_SELF_TYPE_NORMAL TFSKeychain* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$TFSKeychain$providerSharedAccessGroup(_LOGOS_SELF_TYPE_NORMAL TFSKeychain* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$TFSKeychainDefaultTwitterConfiguration$defaultAccessGroup)(_LOGOS_SELF_TYPE_NORMAL TFSKeychainDefaultTwitterConfiguration* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$TFSKeychainDefaultTwitterConfiguration$defaultAccessGroup(_LOGOS_SELF_TYPE_NORMAL TFSKeychainDefaultTwitterConfiguration* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$TFSKeychainDefaultTwitterConfiguration$sharedAccessGroup)(_LOGOS_SELF_TYPE_NORMAL TFSKeychainDefaultTwitterConfiguration* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$TFSKeychainDefaultTwitterConfiguration$sharedAccessGroup(_LOGOS_SELF_TYPE_NORMAL TFSKeychainDefaultTwitterConfiguration* _LOGOS_SELF_CONST, SEL); 

#line 6 "Tweak.xm"

static NSString * _logos_method$_ungrouped$TFSKeychain$providerDefaultAccessGroup(_LOGOS_SELF_TYPE_NORMAL TFSKeychain* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *query = [NSDictionary dictionaryWithObjectsAndKeys:
                           (__bridge NSString *)kSecClassGenericPassword, (__bridge NSString *)kSecClass,
                           @"bundleSeedID", kSecAttrAccount,
                           @"", kSecAttrService,
                           (id)kCFBooleanTrue, kSecReturnAttributes,
                           nil];
    CFDictionaryRef result = nil;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
    if (status == errSecItemNotFound)
        status = SecItemAdd((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
        if (status != errSecSuccess)
            return nil;
    NSString *accessGroup = [(__bridge NSDictionary *)result objectForKey:(__bridge NSString *)kSecAttrAccessGroup];

    return accessGroup;
}
static NSString * _logos_method$_ungrouped$TFSKeychain$providerSharedAccessGroup(_LOGOS_SELF_TYPE_NORMAL TFSKeychain* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *query = [NSDictionary dictionaryWithObjectsAndKeys:
                           (__bridge NSString *)kSecClassGenericPassword, (__bridge NSString *)kSecClass,
                           @"bundleSeedID", kSecAttrAccount,
                           @"", kSecAttrService,
                           (id)kCFBooleanTrue, kSecReturnAttributes,
                           nil];
    CFDictionaryRef result = nil;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
    if (status == errSecItemNotFound)
        status = SecItemAdd((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
        if (status != errSecSuccess)
            return nil;
    NSString *accessGroup = [(__bridge NSDictionary *)result objectForKey:(__bridge NSString *)kSecAttrAccessGroup];

    return accessGroup;
}



static NSString * _logos_method$_ungrouped$TFSKeychainDefaultTwitterConfiguration$defaultAccessGroup(_LOGOS_SELF_TYPE_NORMAL TFSKeychainDefaultTwitterConfiguration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *query = [NSDictionary dictionaryWithObjectsAndKeys:
                           (__bridge NSString *)kSecClassGenericPassword, (__bridge NSString *)kSecClass,
                           @"bundleSeedID", kSecAttrAccount,
                           @"", kSecAttrService,
                           (id)kCFBooleanTrue, kSecReturnAttributes,
                           nil];
    CFDictionaryRef result = nil;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
    if (status == errSecItemNotFound)
        status = SecItemAdd((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
        if (status != errSecSuccess)
            return nil;
    NSString *accessGroup = [(__bridge NSDictionary *)result objectForKey:(__bridge NSString *)kSecAttrAccessGroup];

    return accessGroup;
}
static NSString * _logos_method$_ungrouped$TFSKeychainDefaultTwitterConfiguration$sharedAccessGroup(_LOGOS_SELF_TYPE_NORMAL TFSKeychainDefaultTwitterConfiguration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDictionary *query = [NSDictionary dictionaryWithObjectsAndKeys:
                           (__bridge NSString *)kSecClassGenericPassword, (__bridge NSString *)kSecClass,
                           @"bundleSeedID", kSecAttrAccount,
                           @"", kSecAttrService,
                           (id)kCFBooleanTrue, kSecReturnAttributes,
                           nil];
    CFDictionaryRef result = nil;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
    if (status == errSecItemNotFound)
        status = SecItemAdd((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
        if (status != errSecSuccess)
            return nil;
    NSString *accessGroup = [(__bridge NSDictionary *)result objectForKey:(__bridge NSString *)kSecAttrAccessGroup];

    return accessGroup;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$TFSKeychain = objc_getClass("TFSKeychain"); { MSHookMessageEx(_logos_class$_ungrouped$TFSKeychain, @selector(providerDefaultAccessGroup), (IMP)&_logos_method$_ungrouped$TFSKeychain$providerDefaultAccessGroup, (IMP*)&_logos_orig$_ungrouped$TFSKeychain$providerDefaultAccessGroup);}{ MSHookMessageEx(_logos_class$_ungrouped$TFSKeychain, @selector(providerSharedAccessGroup), (IMP)&_logos_method$_ungrouped$TFSKeychain$providerSharedAccessGroup, (IMP*)&_logos_orig$_ungrouped$TFSKeychain$providerSharedAccessGroup);}Class _logos_class$_ungrouped$TFSKeychainDefaultTwitterConfiguration = objc_getClass("TFSKeychainDefaultTwitterConfiguration"); { MSHookMessageEx(_logos_class$_ungrouped$TFSKeychainDefaultTwitterConfiguration, @selector(defaultAccessGroup), (IMP)&_logos_method$_ungrouped$TFSKeychainDefaultTwitterConfiguration$defaultAccessGroup, (IMP*)&_logos_orig$_ungrouped$TFSKeychainDefaultTwitterConfiguration$defaultAccessGroup);}{ MSHookMessageEx(_logos_class$_ungrouped$TFSKeychainDefaultTwitterConfiguration, @selector(sharedAccessGroup), (IMP)&_logos_method$_ungrouped$TFSKeychainDefaultTwitterConfiguration$sharedAccessGroup, (IMP*)&_logos_orig$_ungrouped$TFSKeychainDefaultTwitterConfiguration$sharedAccessGroup);}} }
#line 79 "Tweak.xm"

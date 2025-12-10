#include <xamarin/xamarin.h>
#include "registrar.h"
extern "C" {


@implementation Microsoft_Maui_MauiUIApplicationDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UIWindow * callback_405_Microsoft_Maui_MauiUIApplicationDelegate_get_Window (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIWindow *) window
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIWindow * rv = { 0 };
		rv = callback_405_Microsoft_Maui_MauiUIApplicationDelegate_get_Window (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_406_Microsoft_Maui_MauiUIApplicationDelegate_set_Window (id self, SEL sel, UIWindow * p0, GCHandle* exception_gchandle);
	-(void) setWindow:(UIWindow *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_406_Microsoft_Maui_MauiUIApplicationDelegate_set_Window (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_391_Microsoft_Maui_MauiUIApplicationDelegate_WillFinishLaunching (id self, SEL sel, UIApplication * p0, NSDictionary * p1, GCHandle* exception_gchandle);
	-(BOOL) application:(UIApplication *)p0 willFinishLaunchingWithOptions:(NSDictionary *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_391_Microsoft_Maui_MauiUIApplicationDelegate_WillFinishLaunching (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_392_Microsoft_Maui_MauiUIApplicationDelegate_FinishedLaunching (id self, SEL sel, UIApplication * p0, NSDictionary * p1, GCHandle* exception_gchandle);
	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_392_Microsoft_Maui_MauiUIApplicationDelegate_FinishedLaunching (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_393_Microsoft_Maui_MauiUIApplicationDelegate_RespondsToSelector (id self, SEL sel, SEL p0, GCHandle* exception_gchandle);
	-(BOOL) respondsToSelector:(SEL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_393_Microsoft_Maui_MauiUIApplicationDelegate_RespondsToSelector (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UISceneConfiguration * callback_394_Microsoft_Maui_MauiUIApplicationDelegate_GetConfiguration (id self, SEL sel, UIApplication * p0, UISceneSession * p1, UISceneConnectionOptions * p2, GCHandle* exception_gchandle);
	-(UISceneConfiguration *) application:(UIApplication *)p0 configurationForConnectingSceneSession:(UISceneSession *)p1 options:(UISceneConnectionOptions *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UISceneConfiguration * rv = { 0 };
		rv = callback_394_Microsoft_Maui_MauiUIApplicationDelegate_GetConfiguration (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_395_Microsoft_Maui_MauiUIApplicationDelegate_PerformActionForShortcutItem (id self, SEL sel, UIApplication * p0, UIApplicationShortcutItem * p1, void (^p2)(BOOL), GCHandle* exception_gchandle);
	-(void) application:(UIApplication *)p0 performActionForShortcutItem:(UIApplicationShortcutItem *)p1 completionHandler:(void (^)(BOOL))p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_395_Microsoft_Maui_MauiUIApplicationDelegate_PerformActionForShortcutItem (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_396_Microsoft_Maui_MauiUIApplicationDelegate_OpenUrl (id self, SEL sel, UIApplication * p0, NSURL * p1, NSDictionary * p2, GCHandle* exception_gchandle);
	-(BOOL) application:(UIApplication *)p0 openURL:(NSURL *)p1 options:(NSDictionary *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_396_Microsoft_Maui_MauiUIApplicationDelegate_OpenUrl (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_397_Microsoft_Maui_MauiUIApplicationDelegate_ContinueUserActivity (id self, SEL sel, UIApplication * p0, NSUserActivity * p1, void (^p2)(id *), GCHandle* exception_gchandle);
	-(BOOL) application:(UIApplication *)p0 continueUserActivity:(NSUserActivity *)p1 restorationHandler:(void (^)(id *))p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_397_Microsoft_Maui_MauiUIApplicationDelegate_ContinueUserActivity (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_398_Microsoft_Maui_MauiUIApplicationDelegate_OnActivated (id self, SEL sel, UIApplication * p0, GCHandle* exception_gchandle);
	-(void) applicationDidBecomeActive:(UIApplication *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_398_Microsoft_Maui_MauiUIApplicationDelegate_OnActivated (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_399_Microsoft_Maui_MauiUIApplicationDelegate_OnResignActivation (id self, SEL sel, UIApplication * p0, GCHandle* exception_gchandle);
	-(void) applicationWillResignActive:(UIApplication *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_399_Microsoft_Maui_MauiUIApplicationDelegate_OnResignActivation (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_400_Microsoft_Maui_MauiUIApplicationDelegate_WillTerminate (id self, SEL sel, UIApplication * p0, GCHandle* exception_gchandle);
	-(void) applicationWillTerminate:(UIApplication *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_400_Microsoft_Maui_MauiUIApplicationDelegate_WillTerminate (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_401_Microsoft_Maui_MauiUIApplicationDelegate_DidEnterBackground (id self, SEL sel, UIApplication * p0, GCHandle* exception_gchandle);
	-(void) applicationDidEnterBackground:(UIApplication *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_401_Microsoft_Maui_MauiUIApplicationDelegate_DidEnterBackground (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_402_Microsoft_Maui_MauiUIApplicationDelegate_WillEnterForeground (id self, SEL sel, UIApplication * p0, GCHandle* exception_gchandle);
	-(void) applicationWillEnterForeground:(UIApplication *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_402_Microsoft_Maui_MauiUIApplicationDelegate_WillEnterForeground (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_403_Microsoft_Maui_MauiUIApplicationDelegate_ApplicationSignificantTimeChange (id self, SEL sel, UIApplication * p0, GCHandle* exception_gchandle);
	-(void) applicationSignificantTimeChange:(UIApplication *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_403_Microsoft_Maui_MauiUIApplicationDelegate_ApplicationSignificantTimeChange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_404_Microsoft_Maui_MauiUIApplicationDelegate_PerformFetch (id self, SEL sel, UIApplication * p0, void (^p1)(void *), GCHandle* exception_gchandle);
	-(void) application:(UIApplication *)p0 performFetchWithCompletionHandler:(void (^)(void *))p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_404_Microsoft_Maui_MauiUIApplicationDelegate_PerformFetch (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_407_Microsoft_Maui_MauiUIApplicationDelegate_BuildMenu (id self, SEL sel, id p0, GCHandle* exception_gchandle);
	-(void) buildMenuWithBuilder:(id)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_407_Microsoft_Maui_MauiUIApplicationDelegate_BuildMenu (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_408_Microsoft_Maui_MauiUIApplicationDelegate_CanPerform (id self, SEL sel, SEL p0, NSObject * p1, GCHandle* exception_gchandle);
	-(BOOL) canPerformAction:(SEL)p0 withSender:(NSObject *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_408_Microsoft_Maui_MauiUIApplicationDelegate_CanPerform (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_409_Microsoft_Maui_MauiUIApplicationDelegate_MenuItemSelected (id self, SEL sel, UICommand * p0, GCHandle* exception_gchandle);
	-(void) MenuItemSelected:(UICommand *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_409_Microsoft_Maui_MauiUIApplicationDelegate_MenuItemSelected (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_390_Microsoft_Maui_MauiUIApplicationDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_390_Microsoft_Maui_MauiUIApplicationDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIResponder class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation AppDelegate {
}

	id callback_0_FindMyMoney_AppDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_0_FindMyMoney_AppDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_MauiUIApplicationDelegate class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Compatibility_Platform_iOS_GlobalCloseContextGestureRecognizer : UIGestureRecognizer {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) touchesBegan:(NSSet *)p0 withEvent:(UIEvent *)p1;
	-(void) touchesEnded:(NSSet *)p0 withEvent:(UIEvent *)p1;
	-(void) touchesMoved:(NSSet *)p0 withEvent:(UIEvent *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Compatibility_Platform_iOS_GlobalCloseContextGestureRecognizer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_5_Microsoft_Maui_Controls_Compatibility_Platform_iOS_GlobalCloseContextGestureRecognizer_TouchesBegan (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesBegan:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_5_Microsoft_Maui_Controls_Compatibility_Platform_iOS_GlobalCloseContextGestureRecognizer_TouchesBegan (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_6_Microsoft_Maui_Controls_Compatibility_Platform_iOS_GlobalCloseContextGestureRecognizer_TouchesEnded (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesEnded:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_6_Microsoft_Maui_Controls_Compatibility_Platform_iOS_GlobalCloseContextGestureRecognizer_TouchesEnded (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_7_Microsoft_Maui_Controls_Compatibility_Platform_iOS_GlobalCloseContextGestureRecognizer_TouchesMoved (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesMoved:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_7_Microsoft_Maui_Controls_Compatibility_Platform_iOS_GlobalCloseContextGestureRecognizer_TouchesMoved (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Compatibility_Platform_iOS_NativeViewPropertyListener : NSObject {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) observeValueForKeyPath:(NSString *)p0 ofObject:(NSObject *)p1 change:(NSDictionary *)p2 context:(void *)p3;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Compatibility_Platform_iOS_NativeViewPropertyListener {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_8_Microsoft_Maui_Controls_Compatibility_Platform_iOS_NativeViewPropertyListener_ObserveValue (id self, SEL sel, NSString * p0, NSObject * p1, NSDictionary * p2, void * p3, GCHandle* exception_gchandle);
	-(void) observeValueForKeyPath:(NSString *)p0 ofObject:(NSObject *)p1 change:(NSDictionary *)p2 context:(void *)p3
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_8_Microsoft_Maui_Controls_Compatibility_Platform_iOS_NativeViewPropertyListener_ObserveValue (self, _cmd, p0, p1, p2, p3, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Platform_ModalWrapper : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Platform_ModalWrapper {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_534_Microsoft_Maui_Platform_ModalWrapper__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_534_Microsoft_Maui_Platform_ModalWrapper__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Platform_ControlsModalWrapper : Microsoft_Maui_Platform_ModalWrapper<UIAdaptivePresentationControllerDelegate> {
}
	-(void) presentationControllerDidDismiss:(UIPresentationController *)p0;
	-(void) dismissViewControllerAnimated:(BOOL)p0 completion:(void (^)())p1;
	-(NSUInteger) supportedInterfaceOrientations;
	-(NSInteger) preferredInterfaceOrientationForPresentation;
	-(BOOL) shouldAutorotate;
	-(BOOL) shouldAutorotateToInterfaceOrientation:(NSInteger)p0;
	-(BOOL) shouldAutomaticallyForwardRotationMethods;
	-(void) viewDidLayoutSubviews;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidLoad;
	-(UIViewController *) childViewControllerForStatusBarStyle;
@end

@implementation Microsoft_Maui_Controls_Platform_ControlsModalWrapper {
}

	void callback_11_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_DidDismiss (id self, SEL sel, UIPresentationController * p0, GCHandle* exception_gchandle);
	-(void) presentationControllerDidDismiss:(UIPresentationController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_11_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_DidDismiss (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_12_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_DismissViewController (id self, SEL sel, BOOL p0, void (^p1)(), GCHandle* exception_gchandle);
	-(void) dismissViewControllerAnimated:(BOOL)p0 completion:(void (^)())p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_12_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_DismissViewController (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSUInteger callback_13_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_GetSupportedInterfaceOrientations (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSUInteger) supportedInterfaceOrientations
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSUInteger rv = { 0 };
		rv = callback_13_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_GetSupportedInterfaceOrientations (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSInteger callback_14_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_PreferredInterfaceOrientationForPresentation (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSInteger) preferredInterfaceOrientationForPresentation
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSInteger rv = { 0 };
		rv = callback_14_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_PreferredInterfaceOrientationForPresentation (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_15_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ShouldAutorotate (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) shouldAutorotate
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_15_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ShouldAutorotate (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_16_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ShouldAutorotateToInterfaceOrientation (id self, SEL sel, NSInteger p0, GCHandle* exception_gchandle);
	-(BOOL) shouldAutorotateToInterfaceOrientation:(NSInteger)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_16_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ShouldAutorotateToInterfaceOrientation (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_17_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_get_ShouldAutomaticallyForwardRotationMethods (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) shouldAutomaticallyForwardRotationMethods
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_17_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_get_ShouldAutomaticallyForwardRotationMethods (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_18_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_18_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_19_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ViewWillAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewWillAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_19_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ViewWillAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_20_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_20_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UIViewController * callback_21_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ChildViewControllerForStatusBarStyle (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIViewController *) childViewControllerForStatusBarStyle
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIViewController * rv = { 0 };
		rv = callback_21_Microsoft_Maui_Controls_Platform_ControlsModalWrapper_ChildViewControllerForStatusBarStyle (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	CGSize callback_121_Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_121_Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_122_Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView_WillRemoveSubview (id self, SEL sel, UIView * p0, GCHandle* exception_gchandle);
	-(void) willRemoveSubview:(UIView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_122_Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView_WillRemoveSubview (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_123_Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView_AddSubview (id self, SEL sel, UIView * p0, GCHandle* exception_gchandle);
	-(void) addSubview:(UIView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_123_Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView_AddSubview (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_124_Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_124_Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutHeaderContainer : Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView {
}
	-(void) layoutSubviews;
	-(void) safeAreaInsetsDidChange;
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutHeaderContainer {
}

	void callback_42_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutHeaderContainer_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_42_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutHeaderContainer_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_43_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutHeaderContainer_SafeAreaInsetsDidChange (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) safeAreaInsetsDidChange
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_43_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutHeaderContainer_SafeAreaInsetsDidChange (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UIViewController * callback_51_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_get_SelectedViewController (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIViewController *) selectedViewController
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIViewController * rv = { 0 };
		rv = callback_51_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_get_SelectedViewController (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_52_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_set_SelectedViewController (id self, SEL sel, UIViewController * p0, GCHandle* exception_gchandle);
	-(void) setSelectedViewController:(UIViewController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_52_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_set_SelectedViewController (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_53_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_DidShowViewController (id self, SEL sel, UINavigationController * p0, UIViewController * p1, BOOL p2, GCHandle* exception_gchandle);
	-(void) navigationController:(UINavigationController *)p0 didShowViewController:(UIViewController *)p1 animated:(BOOL)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_53_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_DidShowViewController (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_54_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_TraitCollectionDidChange (id self, SEL sel, UITraitCollection * p0, GCHandle* exception_gchandle);
	-(void) traitCollectionDidChange:(UITraitCollection *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_54_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_TraitCollectionDidChange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_55_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_55_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_56_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_56_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_57_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_ViewWillLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewWillLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_57_Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer_ViewWillLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_107_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewController_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_107_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewController_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_108_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewController_ViewSafeAreaInsetsDidChange (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewSafeAreaInsetsDidChange
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_108_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewController_ViewSafeAreaInsetsDidChange (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_UIContainerCell {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_120_Microsoft_Maui_Controls_Platform_Compatibility_UIContainerCell_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_120_Microsoft_Maui_Controls_Platform_Compatibility_UIContainerCell_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_ItemsViewCell {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_155_Microsoft_Maui_Controls_Handlers_Items_ItemsViewCell__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_155_Microsoft_Maui_Controls_Handlers_Items_ItemsViewCell__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UICollectionViewCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_TemplatedCell {
}

	UICollectionViewLayoutAttributes * callback_188_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell_PreferredLayoutAttributesFittingAttributes (id self, SEL sel, UICollectionViewLayoutAttributes * p0, GCHandle* exception_gchandle);
	-(UICollectionViewLayoutAttributes *) preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionViewLayoutAttributes * rv = { 0 };
		rv = callback_188_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell_PreferredLayoutAttributesFittingAttributes (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_189_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_189_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_190_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell_PrepareForReuse (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) prepareForReuse
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_190_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell_PrepareForReuse (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_191_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell_get_Selected (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) isSelected
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_191_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell_get_Selected (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_192_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell_set_Selected (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) setSelected:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_192_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell_set_Selected (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_187_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_187_Microsoft_Maui_Controls_Handlers_Items_TemplatedCell__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_ItemsViewCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_CarouselTemplatedCell {
}

	id callback_125_Microsoft_Maui_Controls_Handlers_Items_CarouselTemplatedCell__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_125_Microsoft_Maui_Controls_Handlers_Items_CarouselTemplatedCell__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_TemplatedCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UICollectionViewDelegate {
}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UICollectionViewDelegateFlowLayout {
}

	id callback_1234_UIKit_UICollectionViewDelegateFlowLayout__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1234_UIKit_UICollectionViewDelegateFlowLayout__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@implementation Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2 {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_163_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_Scrolled (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_163_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_Scrolled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UIEdgeInsets callback_164_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_GetInsetForSection (id self, SEL sel, UICollectionView * p0, UICollectionViewLayout * p1, void * p2, GCHandle* exception_gchandle);
	-(UIEdgeInsets) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 insetForSectionAtIndex:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIEdgeInsets rv = { 0 };
		rv = callback_164_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_GetInsetForSection (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGFloat callback_165_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_GetMinimumInteritemSpacingForSection (id self, SEL sel, UICollectionView * p0, UICollectionViewLayout * p1, void * p2, GCHandle* exception_gchandle);
	-(CGFloat) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 minimumInteritemSpacingForSectionAtIndex:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGFloat rv = { 0 };
		rv = callback_165_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_GetMinimumInteritemSpacingForSection (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGFloat callback_166_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_GetMinimumLineSpacingForSection (id self, SEL sel, UICollectionView * p0, UICollectionViewLayout * p1, void * p2, GCHandle* exception_gchandle);
	-(CGFloat) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 minimumLineSpacingForSectionAtIndex:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGFloat rv = { 0 };
		rv = callback_166_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_GetMinimumLineSpacingForSection (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_167_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_CellDisplayingEnded (id self, SEL sel, UICollectionView * p0, UICollectionViewCell * p1, NSIndexPath * p2, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didEndDisplayingCell:(UICollectionViewCell *)p1 forItemAtIndexPath:(NSIndexPath *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_167_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_CellDisplayingEnded (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_168_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_GetSizeForItem (id self, SEL sel, UICollectionView * p0, UICollectionViewLayout * p1, NSIndexPath * p2, GCHandle* exception_gchandle);
	-(CGSize) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 sizeForItemAtIndexPath:(NSIndexPath *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_168_Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2_GetSizeForItem (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator {
}

	void callback_134_Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator_Scrolled (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_134_Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator_Scrolled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_135_Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator_ScrollAnimationEnded (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_135_Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator_ScrollAnimationEnded (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_136_Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator_DecelerationEnded (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_136_Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator_DecelerationEnded (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_137_Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator_DraggingStarted (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_137_Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator_DraggingStarted (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_138_Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator_DraggingEnded (id self, SEL sel, UIScrollView * p0, BOOL p1, GCHandle* exception_gchandle);
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_138_Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator_DraggingEnded (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_169_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_get_FlipsHorizontallyInOppositeLayoutDirection (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) flipsHorizontallyInOppositeLayoutDirection
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_169_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_get_FlipsHorizontallyInOppositeLayoutDirection (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_170_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_ShouldInvalidateLayout (id self, SEL sel, UICollectionViewLayoutAttributes * p0, UICollectionViewLayoutAttributes * p1, GCHandle* exception_gchandle);
	-(BOOL) shouldInvalidateLayoutForPreferredLayoutAttributes:(UICollectionViewLayoutAttributes *)p0 withOriginalAttributes:(UICollectionViewLayoutAttributes *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_170_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_ShouldInvalidateLayout (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGPoint callback_171_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_TargetContentOffset (id self, SEL sel, CGPoint p0, CGPoint p1, GCHandle* exception_gchandle);
	-(CGPoint) targetContentOffsetForProposedContentOffset:(CGPoint)p0 withScrollingVelocity:(CGPoint)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGPoint rv = { 0 };
		rv = callback_171_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_TargetContentOffset (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UICollectionViewLayoutInvalidationContext * callback_172_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_GetInvalidationContext (id self, SEL sel, UICollectionViewLayoutAttributes * p0, UICollectionViewLayoutAttributes * p1, GCHandle* exception_gchandle);
	-(UICollectionViewLayoutInvalidationContext *) invalidationContextForPreferredLayoutAttributes:(UICollectionViewLayoutAttributes *)p0 withOriginalAttributes:(UICollectionViewLayoutAttributes *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionViewLayoutInvalidationContext * rv = { 0 };
		rv = callback_172_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_GetInvalidationContext (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_173_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_PrepareLayout (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) prepareLayout
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_173_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_PrepareLayout (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_174_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_PrepareForCollectionViewUpdates (id self, SEL sel, NSArray * p0, GCHandle* exception_gchandle);
	-(void) prepareForCollectionViewUpdates:(NSArray *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_174_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_PrepareForCollectionViewUpdates (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGPoint callback_175_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_TargetContentOffsetForProposedContentOffset (id self, SEL sel, CGPoint p0, GCHandle* exception_gchandle);
	-(CGPoint) targetContentOffsetForProposedContentOffset:(CGPoint)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGPoint rv = { 0 };
		rv = callback_175_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_TargetContentOffsetForProposedContentOffset (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_176_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_FinalizeCollectionViewUpdates (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) finalizeCollectionViewUpdates
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_176_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_FinalizeCollectionViewUpdates (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_177_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_ShouldInvalidateLayoutForBoundsChange (id self, SEL sel, CGRect p0, GCHandle* exception_gchandle);
	-(BOOL) shouldInvalidateLayoutForBoundsChange:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_177_Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout_ShouldInvalidateLayoutForBoundsChange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_CarouselViewLayout {
}

	void callback_139_Microsoft_Maui_Controls_Handlers_Items_CarouselViewLayout_PrepareForCollectionViewUpdates (id self, SEL sel, NSArray * p0, GCHandle* exception_gchandle);
	-(void) prepareForCollectionViewUpdates:(NSArray *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_139_Microsoft_Maui_Controls_Handlers_Items_CarouselViewLayout_PrepareForCollectionViewUpdates (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_140_Microsoft_Maui_Controls_Handlers_Items_CarouselViewLayout_FinalizeCollectionViewUpdates (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) finalizeCollectionViewUpdates
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_140_Microsoft_Maui_Controls_Handlers_Items_CarouselViewLayout_FinalizeCollectionViewUpdates (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_DefaultCell {
}

	id callback_141_Microsoft_Maui_Controls_Handlers_Items_DefaultCell__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_141_Microsoft_Maui_Controls_Handlers_Items_DefaultCell__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_ItemsViewCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_GridViewLayout {
}

	CGSize callback_142_Microsoft_Maui_Controls_Handlers_Items_GridViewLayout_get_CollectionViewContentSize (id self, SEL sel, GCHandle* exception_gchandle);
	-(CGSize) collectionViewContentSize
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_142_Microsoft_Maui_Controls_Handlers_Items_GridViewLayout_get_CollectionViewContentSize (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSArray * callback_143_Microsoft_Maui_Controls_Handlers_Items_GridViewLayout_LayoutAttributesForElementsInRect (id self, SEL sel, CGRect p0, GCHandle* exception_gchandle);
	-(NSArray *) layoutAttributesForElementsInRect:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSArray * rv = { 0 };
		rv = callback_143_Microsoft_Maui_Controls_Handlers_Items_GridViewLayout_LayoutAttributesForElementsInRect (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UICollectionViewLayoutInvalidationContext * callback_144_Microsoft_Maui_Controls_Handlers_Items_GridViewLayout_GetInvalidationContext (id self, SEL sel, UICollectionViewLayoutAttributes * p0, UICollectionViewLayoutAttributes * p1, GCHandle* exception_gchandle);
	-(UICollectionViewLayoutInvalidationContext *) invalidationContextForPreferredLayoutAttributes:(UICollectionViewLayoutAttributes *)p0 withOriginalAttributes:(UICollectionViewLayoutAttributes *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionViewLayoutInvalidationContext * rv = { 0 };
		rv = callback_144_Microsoft_Maui_Controls_Handlers_Items_GridViewLayout_GetInvalidationContext (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1 {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UICollectionViewCell * callback_156_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_GetCell (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(UICollectionViewCell *) collectionView:(UICollectionView *)p0 cellForItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionViewCell * rv = { 0 };
		rv = callback_156_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_GetCell (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void * callback_157_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_GetItemsCount (id self, SEL sel, UICollectionView * p0, void * p1, GCHandle* exception_gchandle);
	-(void *) collectionView:(UICollectionView *)p0 numberOfItemsInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_157_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_GetItemsCount (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_158_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_158_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_159_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_LoadView (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) loadView
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_159_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_LoadView (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_160_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_ViewWillAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewWillAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_160_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_ViewWillAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_161_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_ViewWillLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewWillLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_161_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_ViewWillLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void * callback_162_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_NumberOfSections (id self, SEL sel, UICollectionView * p0, GCHandle* exception_gchandle);
	-(void *) numberOfSectionsInCollectionView:(UICollectionView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_162_Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1_NumberOfSections (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_StructuredItemsViewController_1 {
}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewController_1 {
}

	void callback_183_Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewController_1_ItemSelected (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didSelectItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_183_Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewController_1_ItemSelected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_184_Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewController_1_ItemDeselected (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didDeselectItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_184_Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewController_1_ItemDeselected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewController_1 {
}

	UICollectionReusableView * callback_145_Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewController_1_GetViewForSupplementaryElement (id self, SEL sel, UICollectionView * p0, NSString * p1, NSIndexPath * p2, GCHandle* exception_gchandle);
	-(UICollectionReusableView *) collectionView:(UICollectionView *)p0 viewForSupplementaryElementOfKind:(NSString *)p1 atIndexPath:(NSIndexPath *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionReusableView * rv = { 0 };
		rv = callback_145_Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewController_1_GetViewForSupplementaryElement (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewDelegator_2 {
}

	void callback_185_Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewDelegator_2_ItemSelected (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didSelectItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_185_Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewDelegator_2_ItemSelected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_186_Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewDelegator_2_ItemDeselected (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didDeselectItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_186_Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewDelegator_2_ItemDeselected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewDelegator_2 {
}

	CGSize callback_146_Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewDelegator_2_GetReferenceSizeForHeader (id self, SEL sel, UICollectionView * p0, UICollectionViewLayout * p1, void * p2, GCHandle* exception_gchandle);
	-(CGSize) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 referenceSizeForHeaderInSection:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_146_Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewDelegator_2_GetReferenceSizeForHeader (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGSize callback_147_Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewDelegator_2_GetReferenceSizeForFooter (id self, SEL sel, UICollectionView * p0, UICollectionViewLayout * p1, void * p2, GCHandle* exception_gchandle);
	-(CGSize) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 referenceSizeForFooterInSection:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_147_Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewDelegator_2_GetReferenceSizeForFooter (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_148_Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewDelegator_2_ScrollAnimationEnded (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_148_Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewDelegator_2_ScrollAnimationEnded (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UIEdgeInsets callback_149_Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewDelegator_2_GetInsetForSection (id self, SEL sel, UICollectionView * p0, UICollectionViewLayout * p1, void * p2, GCHandle* exception_gchandle);
	-(UIEdgeInsets) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 insetForSectionAtIndex:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIEdgeInsets rv = { 0 };
		rv = callback_149_Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewDelegator_2_GetInsetForSection (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items_HeightConstrainedTemplatedCell : Microsoft_Maui_Controls_Handlers_Items_TemplatedCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_HeightConstrainedTemplatedCell {
}

	id callback_150_Microsoft_Maui_Controls_Handlers_Items_HeightConstrainedTemplatedCell__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_150_Microsoft_Maui_Controls_Handlers_Items_HeightConstrainedTemplatedCell__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_TemplatedCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items_HorizontalCell : Microsoft_Maui_Controls_Handlers_Items_HeightConstrainedTemplatedCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_HorizontalCell {
}

	id callback_151_Microsoft_Maui_Controls_Handlers_Items_HorizontalCell__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_151_Microsoft_Maui_Controls_Handlers_Items_HorizontalCell__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_HeightConstrainedTemplatedCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultCell : Microsoft_Maui_Controls_Handlers_Items_DefaultCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultCell {
}

	id callback_152_Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultCell__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_152_Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultCell__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_DefaultCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultSupplementalView : Microsoft_Maui_Controls_Handlers_Items_DefaultCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultSupplementalView {
}

	id callback_153_Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultSupplementalView__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_153_Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultSupplementalView__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_DefaultCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items_HorizontalSupplementaryView : Microsoft_Maui_Controls_Handlers_Items_HeightConstrainedTemplatedCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_HorizontalSupplementaryView {
}

	id callback_154_Microsoft_Maui_Controls_Handlers_Items_HorizontalSupplementaryView__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_154_Microsoft_Maui_Controls_Handlers_Items_HorizontalSupplementaryView__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_HeightConstrainedTemplatedCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_ListViewLayout {
}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_MauiCollectionView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_178_Microsoft_Maui_Controls_Handlers_Items_MauiCollectionView_ScrollRectToVisible (id self, SEL sel, CGRect p0, BOOL p1, GCHandle* exception_gchandle);
	-(void) scrollRectToVisible:(CGRect)p0 animated:(BOOL)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_178_Microsoft_Maui_Controls_Handlers_Items_MauiCollectionView_ScrollRectToVisible (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_179_Microsoft_Maui_Controls_Handlers_Items_MauiCollectionView_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_179_Microsoft_Maui_Controls_Handlers_Items_MauiCollectionView_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewController_1 {
}

	BOOL callback_180_Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewController_1_CanMoveItem (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(BOOL) collectionView:(UICollectionView *)p0 canMoveItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_180_Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewController_1_CanMoveItem (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_181_Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewController_1_MoveItem (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, NSIndexPath * p2, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 moveItemAtIndexPath:(NSIndexPath *)p1 toIndexPath:(NSIndexPath *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_181_Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewController_1_MoveItem (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewDelegator_2 {
}

	NSIndexPath * callback_182_Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewDelegator_2_GetTargetIndexPathForMove (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, NSIndexPath * p2, GCHandle* exception_gchandle);
	-(NSIndexPath *) collectionView:(UICollectionView *)p0 targetIndexPathForMoveFromItemAtIndexPath:(NSIndexPath *)p1 toProposedIndexPath:(NSIndexPath *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSIndexPath * rv = { 0 };
		rv = callback_182_Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewDelegator_2_GetTargetIndexPathForMove (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items_WidthConstrainedTemplatedCell : Microsoft_Maui_Controls_Handlers_Items_TemplatedCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_WidthConstrainedTemplatedCell {
}

	id callback_197_Microsoft_Maui_Controls_Handlers_Items_WidthConstrainedTemplatedCell__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_197_Microsoft_Maui_Controls_Handlers_Items_WidthConstrainedTemplatedCell__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_TemplatedCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items_VerticalCell : Microsoft_Maui_Controls_Handlers_Items_WidthConstrainedTemplatedCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_VerticalCell {
}

	id callback_193_Microsoft_Maui_Controls_Handlers_Items_VerticalCell__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_193_Microsoft_Maui_Controls_Handlers_Items_VerticalCell__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_WidthConstrainedTemplatedCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultCell : Microsoft_Maui_Controls_Handlers_Items_DefaultCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultCell {
}

	id callback_194_Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultCell__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_194_Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultCell__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_DefaultCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultSupplementalView : Microsoft_Maui_Controls_Handlers_Items_DefaultCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultSupplementalView {
}

	id callback_195_Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultSupplementalView__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_195_Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultSupplementalView__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_DefaultCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items_VerticalSupplementaryView : Microsoft_Maui_Controls_Handlers_Items_WidthConstrainedTemplatedCell {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_VerticalSupplementaryView {
}

	id callback_196_Microsoft_Maui_Controls_Handlers_Items_VerticalSupplementaryView__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_196_Microsoft_Maui_Controls_Handlers_Items_VerticalSupplementaryView__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items_WidthConstrainedTemplatedCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_ItemsViewCell2 {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_219_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewCell2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_219_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewCell2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UICollectionViewCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2 {
}

	UICollectionViewLayoutAttributes * callback_243_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2_PreferredLayoutAttributesFittingAttributes (id self, SEL sel, UICollectionViewLayoutAttributes * p0, GCHandle* exception_gchandle);
	-(UICollectionViewLayoutAttributes *) preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionViewLayoutAttributes * rv = { 0 };
		rv = callback_243_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2_PreferredLayoutAttributesFittingAttributes (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_244_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_244_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_245_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2_PrepareForReuse (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) prepareForReuse
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_245_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2_PrepareForReuse (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_246_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2_get_Selected (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) isSelected
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_246_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2_get_Selected (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_247_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2_set_Selected (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) setSelected:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_247_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2_set_Selected (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_242_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_242_Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_ItemsViewCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_CarouselTemplatedCell2 : Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2 {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_CarouselTemplatedCell2 {
}

	id callback_198_Microsoft_Maui_Controls_Handlers_Items2_CarouselTemplatedCell2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_198_Microsoft_Maui_Controls_Handlers_Items2_CarouselTemplatedCell2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2 {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_226_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2_Scrolled (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_226_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2_Scrolled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UIEdgeInsets callback_227_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2_GetInsetForSection (id self, SEL sel, UICollectionView * p0, UICollectionViewLayout * p1, void * p2, GCHandle* exception_gchandle);
	-(UIEdgeInsets) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 insetForSectionAtIndex:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIEdgeInsets rv = { 0 };
		rv = callback_227_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2_GetInsetForSection (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGFloat callback_228_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2_GetMinimumInteritemSpacingForSection (id self, SEL sel, UICollectionView * p0, UICollectionViewLayout * p1, void * p2, GCHandle* exception_gchandle);
	-(CGFloat) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 minimumInteritemSpacingForSectionAtIndex:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGFloat rv = { 0 };
		rv = callback_228_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2_GetMinimumInteritemSpacingForSection (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGFloat callback_229_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2_GetMinimumLineSpacingForSection (id self, SEL sel, UICollectionView * p0, UICollectionViewLayout * p1, void * p2, GCHandle* exception_gchandle);
	-(CGFloat) collectionView:(UICollectionView *)p0 layout:(UICollectionViewLayout *)p1 minimumLineSpacingForSectionAtIndex:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGFloat rv = { 0 };
		rv = callback_229_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2_GetMinimumLineSpacingForSection (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_230_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2_CellDisplayingEnded (id self, SEL sel, UICollectionView * p0, UICollectionViewCell * p1, NSIndexPath * p2, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didEndDisplayingCell:(UICollectionViewCell *)p1 forItemAtIndexPath:(NSIndexPath *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_230_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2_CellDisplayingEnded (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2 {
}

	void callback_206_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2_Scrolled (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_206_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2_Scrolled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_207_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2_ScrollAnimationEnded (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_207_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2_ScrollAnimationEnded (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_208_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2_DecelerationEnded (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_208_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2_DecelerationEnded (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_209_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2_DraggingStarted (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_209_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2_DraggingStarted (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_210_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2_DraggingEnded (id self, SEL sel, UIScrollView * p0, BOOL p1, GCHandle* exception_gchandle);
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_210_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2_DraggingEnded (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2 {
}

	id callback_211_Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_211_Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_ItemsViewCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1 {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UICollectionViewCell * callback_220_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_GetCell (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(UICollectionViewCell *) collectionView:(UICollectionView *)p0 cellForItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionViewCell * rv = { 0 };
		rv = callback_220_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_GetCell (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void * callback_221_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_GetItemsCount (id self, SEL sel, UICollectionView * p0, void * p1, GCHandle* exception_gchandle);
	-(void *) collectionView:(UICollectionView *)p0 numberOfItemsInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_221_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_GetItemsCount (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_222_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_222_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_223_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_LoadView (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) loadView
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_223_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_LoadView (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_224_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_ViewWillLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewWillLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_224_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_ViewWillLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void * callback_225_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_NumberOfSections (id self, SEL sel, UICollectionView * p0, GCHandle* exception_gchandle);
	-(void *) numberOfSectionsInCollectionView:(UICollectionView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_225_Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1_NumberOfSections (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_StructuredItemsViewController2_1 {
}

	UICollectionReusableView * callback_240_Microsoft_Maui_Controls_Handlers_Items2_StructuredItemsViewController2_1_GetViewForSupplementaryElement (id self, SEL sel, UICollectionView * p0, NSString * p1, NSIndexPath * p2, GCHandle* exception_gchandle);
	-(UICollectionReusableView *) collectionView:(UICollectionView *)p0 viewForSupplementaryElementOfKind:(NSString *)p1 atIndexPath:(NSIndexPath *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionReusableView * rv = { 0 };
		rv = callback_240_Microsoft_Maui_Controls_Handlers_Items2_StructuredItemsViewController2_1_GetViewForSupplementaryElement (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_241_Microsoft_Maui_Controls_Handlers_Items2_StructuredItemsViewController2_1_ViewWillLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewWillLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_241_Microsoft_Maui_Controls_Handlers_Items2_StructuredItemsViewController2_1_ViewWillLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewController2_1 {
}

	void callback_236_Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewController2_1_ItemSelected (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didSelectItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_236_Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewController2_1_ItemSelected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_237_Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewController2_1_ItemDeselected (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didDeselectItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_237_Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewController2_1_ItemDeselected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_GroupableItemsViewController2_1 {
}

	UICollectionReusableView * callback_212_Microsoft_Maui_Controls_Handlers_Items2_GroupableItemsViewController2_1_GetViewForSupplementaryElement (id self, SEL sel, UICollectionView * p0, NSString * p1, NSIndexPath * p2, GCHandle* exception_gchandle);
	-(UICollectionReusableView *) collectionView:(UICollectionView *)p0 viewForSupplementaryElementOfKind:(NSString *)p1 atIndexPath:(NSIndexPath *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionReusableView * rv = { 0 };
		rv = callback_212_Microsoft_Maui_Controls_Handlers_Items2_GroupableItemsViewController2_1_GetViewForSupplementaryElement (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewDelegator2_2 {
}

	void callback_238_Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewDelegator2_2_ItemSelected (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didSelectItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_238_Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewDelegator2_2_ItemSelected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_239_Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewDelegator2_2_ItemDeselected (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didDeselectItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_239_Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewDelegator2_2_ItemDeselected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_GroupableItemsViewDelegator2_2 {
}

	void callback_213_Microsoft_Maui_Controls_Handlers_Items2_GroupableItemsViewDelegator2_2_ScrollAnimationEnded (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_213_Microsoft_Maui_Controls_Handlers_Items2_GroupableItemsViewDelegator2_2_ScrollAnimationEnded (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_HeightConstrainedTemplatedCell2 : Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2 {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_HeightConstrainedTemplatedCell2 {
}

	id callback_214_Microsoft_Maui_Controls_Handlers_Items2_HeightConstrainedTemplatedCell2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_214_Microsoft_Maui_Controls_Handlers_Items2_HeightConstrainedTemplatedCell2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_HorizontalCell2 : Microsoft_Maui_Controls_Handlers_Items2_HeightConstrainedTemplatedCell2 {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_HorizontalCell2 {
}

	id callback_215_Microsoft_Maui_Controls_Handlers_Items2_HorizontalCell2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_215_Microsoft_Maui_Controls_Handlers_Items2_HorizontalCell2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_HeightConstrainedTemplatedCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultCell2 : Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2 {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultCell2 {
}

	id callback_216_Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultCell2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_216_Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultCell2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultSupplementalView2 : Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2 {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultSupplementalView2 {
}

	id callback_217_Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultSupplementalView2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_217_Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultSupplementalView2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_HorizontalSupplementaryView2 : Microsoft_Maui_Controls_Handlers_Items2_HeightConstrainedTemplatedCell2 {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_HorizontalSupplementaryView2 {
}

	id callback_218_Microsoft_Maui_Controls_Handlers_Items2_HorizontalSupplementaryView2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_218_Microsoft_Maui_Controls_Handlers_Items2_HorizontalSupplementaryView2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_HeightConstrainedTemplatedCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewController2_1 {
}

	BOOL callback_233_Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewController2_1_CanMoveItem (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(BOOL) collectionView:(UICollectionView *)p0 canMoveItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_233_Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewController2_1_CanMoveItem (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_234_Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewController2_1_MoveItem (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, NSIndexPath * p2, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 moveItemAtIndexPath:(NSIndexPath *)p1 toIndexPath:(NSIndexPath *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_234_Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewController2_1_MoveItem (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewDelegator2_2 {
}

	NSIndexPath * callback_235_Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewDelegator2_2_GetTargetIndexPathForMove (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, NSIndexPath * p2, GCHandle* exception_gchandle);
	-(NSIndexPath *) collectionView:(UICollectionView *)p0 targetIndexPathForMoveFromItemAtIndexPath:(NSIndexPath *)p1 toProposedIndexPath:(NSIndexPath *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSIndexPath * rv = { 0 };
		rv = callback_235_Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewDelegator2_2_GetTargetIndexPathForMove (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_WidthConstrainedTemplatedCell2 : Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2 {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_WidthConstrainedTemplatedCell2 {
}

	id callback_252_Microsoft_Maui_Controls_Handlers_Items2_WidthConstrainedTemplatedCell2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_252_Microsoft_Maui_Controls_Handlers_Items2_WidthConstrainedTemplatedCell2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_VerticalCell2 : Microsoft_Maui_Controls_Handlers_Items2_WidthConstrainedTemplatedCell2 {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_VerticalCell2 {
}

	id callback_248_Microsoft_Maui_Controls_Handlers_Items2_VerticalCell2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_248_Microsoft_Maui_Controls_Handlers_Items2_VerticalCell2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_WidthConstrainedTemplatedCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultCell2 : Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2 {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultCell2 {
}

	id callback_249_Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultCell2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_249_Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultCell2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultSupplementalView2 : Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2 {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultSupplementalView2 {
}

	id callback_250_Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultSupplementalView2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_250_Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultSupplementalView2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_VerticalSupplementaryView2 : Microsoft_Maui_Controls_Handlers_Items2_WidthConstrainedTemplatedCell2 {
}
	-(id) initWithFrame:(CGRect)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_VerticalSupplementaryView2 {
}

	id callback_251_Microsoft_Maui_Controls_Handlers_Items2_VerticalSupplementaryView2__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_251_Microsoft_Maui_Controls_Handlers_Items2_VerticalSupplementaryView2__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Items2_WidthConstrainedTemplatedCell2 class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_MauiNavigationBar : UINavigationBar {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) safeAreaInsetsDidChange;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_MauiNavigationBar {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_273_Microsoft_Maui_Controls_Handlers_Compatibility_MauiNavigationBar_SafeAreaInsetsDidChange (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) safeAreaInsetsDidChange
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_273_Microsoft_Maui_Controls_Handlers_Compatibility_MauiNavigationBar_SafeAreaInsetsDidChange (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_272_Microsoft_Maui_Controls_Handlers_Compatibility_MauiNavigationBar__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_272_Microsoft_Maui_Controls_Handlers_Compatibility_MauiNavigationBar__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UINavigationBar class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_VisualElementRenderer_1 {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_279_Microsoft_Maui_Controls_Handlers_Compatibility_VisualElementRenderer_1_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_279_Microsoft_Maui_Controls_Handlers_Compatibility_VisualElementRenderer_1_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'Microsoft.Maui.Controls.Handlers.Compatibility.VisualElementRenderer`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2 {
}

	void callback_276_Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_276_Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_277_Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2_SizeToFit (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) sizeToFit
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_277_Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2_SizeToFit (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_278_Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_278_Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'Microsoft.Maui.Controls.Handlers.Compatibility.ViewRenderer`2' from Objective-C because the type is generic.");

		return self;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer {
}

	id callback_274_Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_274_Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_CellTableViewCell {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_iOS7ButtonContainer : UIView {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_iOS7ButtonContainer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_289_Microsoft_Maui_Controls_Handlers_Compatibility_iOS7ButtonContainer_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_289_Microsoft_Maui_Controls_Handlers_Compatibility_iOS7ButtonContainer_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_HeaderWrapperView : UITableViewHeaderFooterView {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_HeaderWrapperView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_310_Microsoft_Maui_Controls_Handlers_Compatibility_HeaderWrapperView_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_310_Microsoft_Maui_Controls_Handlers_Compatibility_HeaderWrapperView_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_FormsRefreshControl {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_313_Microsoft_Maui_Controls_Handlers_Compatibility_FormsRefreshControl_get_Hidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) isHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_313_Microsoft_Maui_Controls_Handlers_Compatibility_FormsRefreshControl_get_Hidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_314_Microsoft_Maui_Controls_Handlers_Compatibility_FormsRefreshControl_set_Hidden (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) setHidden:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_314_Microsoft_Maui_Controls_Handlers_Compatibility_FormsRefreshControl_set_Hidden (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_315_Microsoft_Maui_Controls_Handlers_Compatibility_FormsRefreshControl_BeginRefreshing (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) beginRefreshing
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_315_Microsoft_Maui_Controls_Handlers_Compatibility_FormsRefreshControl_BeginRefreshing (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UIScrollViewDelegate {
}

	id callback_1369_UIKit_UIScrollViewDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1369_UIKit_UIScrollViewDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UITableViewSource {
}

	id callback_1502_UIKit_UITableViewSource__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1502_UIKit_UITableViewSource__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UITableViewCell * callback_377_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_GetCell (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UITableViewCell * rv = { 0 };
		rv = callback_377_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_GetCell (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGFloat callback_378_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_GetHeightForHeader (id self, SEL sel, UITableView * p0, void * p1, GCHandle* exception_gchandle);
	-(CGFloat) tableView:(UITableView *)p0 heightForHeaderInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGFloat rv = { 0 };
		rv = callback_378_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_GetHeightForHeader (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UIView * callback_379_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_GetViewForHeader (id self, SEL sel, UITableView * p0, void * p1, GCHandle* exception_gchandle);
	-(UIView *) tableView:(UITableView *)p0 viewForHeaderInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIView * rv = { 0 };
		rv = callback_379_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_GetViewForHeader (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_380_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_WillDisplayHeaderView (id self, SEL sel, UITableView * p0, UIView * p1, void * p2, GCHandle* exception_gchandle);
	-(void) tableView:(UITableView *)p0 willDisplayHeaderView:(UIView *)p1 forSection:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_380_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_WillDisplayHeaderView (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void * callback_381_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_NumberOfSections (id self, SEL sel, UITableView * p0, GCHandle* exception_gchandle);
	-(void *) numberOfSectionsInTableView:(UITableView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_381_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_NumberOfSections (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_382_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_RowSelected (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_382_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_RowSelected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void * callback_383_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_RowsInSection (id self, SEL sel, UITableView * p0, void * p1, GCHandle* exception_gchandle);
	-(void *) tableView:(UITableView *)p0 numberOfRowsInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_383_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_RowsInSection (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSArray * callback_384_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_SectionIndexTitles (id self, SEL sel, UITableView * p0, GCHandle* exception_gchandle);
	-(NSArray *) sectionIndexTitlesForTableView:(UITableView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSArray * rv = { 0 };
		rv = callback_384_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_SectionIndexTitles (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSString * callback_385_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_TitleForHeader (id self, SEL sel, UITableView * p0, void * p1, GCHandle* exception_gchandle);
	-(NSString *) tableView:(UITableView *)p0 titleForHeaderInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSString * rv = { 0 };
		rv = callback_385_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer_TitleForHeader (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_UnEvenTableViewModelRenderer {
}

	CGFloat callback_386_Microsoft_Maui_Controls_Handlers_Compatibility_UnEvenTableViewModelRenderer_GetHeightForRow (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(CGFloat) tableView:(UITableView *)p0 heightForRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGFloat rv = { 0 };
		rv = callback_386_Microsoft_Maui_Controls_Handlers_Compatibility_UnEvenTableViewModelRenderer_GetHeightForRow (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_TableViewRenderer {
}

	void callback_388_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewRenderer_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_388_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewRenderer_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_389_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewRenderer_TraitCollectionDidChange (id self, SEL sel, UITraitCollection * p0, GCHandle* exception_gchandle);
	-(void) traitCollectionDidChange:(UITraitCollection *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_389_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewRenderer_TraitCollectionDidChange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_387_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewRenderer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_387_Microsoft_Maui_Controls_Handlers_Compatibility_TableViewRenderer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Platform_ResignFirstResponderTouchGestureRecognizer : UITapGestureRecognizer {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Platform_ResignFirstResponderTouchGestureRecognizer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_PrimaryToolbarItem : UIBarButtonItem {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_PrimaryToolbarItem {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Platform_DragAndDropDelegate_CustomLocalStateData : NSObject {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Controls_Platform_DragAndDropDelegate_CustomLocalStateData {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_22_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_CustomLocalStateData__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_22_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_CustomLocalStateData__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Platform_DragAndDropDelegate : NSObject<UIDragInteractionDelegate, UIDropInteractionDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) dragInteraction:(UIDragInteraction *)p0 prefersFullSizePreviewsForSession:(id)p1;
	-(void) dropInteraction:(UIDropInteraction *)p0 sessionDidEnd:(id)p1;
	-(void) dragInteraction:(UIDragInteraction *)p0 session:(id)p1 didEndWithOperation:(NSUInteger)p2;
	-(void) dragInteraction:(UIDragInteraction *)p0 session:(id)p1 willEndWithOperation:(NSUInteger)p2;
	-(NSArray *) dragInteraction:(UIDragInteraction *)p0 itemsForBeginningSession:(id)p1;
	-(BOOL) dropInteraction:(UIDropInteraction *)p0 canHandleSession:(id)p1;
	-(void) dropInteraction:(UIDropInteraction *)p0 sessionDidExit:(id)p1;
	-(UIDropProposal *) dropInteraction:(UIDropInteraction *)p0 sessionDidUpdate:(id)p1;
	-(void) dropInteraction:(UIDropInteraction *)p0 performDrop:(id)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Platform_DragAndDropDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_23_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_PrefersFullSizePreviews (id self, SEL sel, UIDragInteraction * p0, id p1, GCHandle* exception_gchandle);
	-(BOOL) dragInteraction:(UIDragInteraction *)p0 prefersFullSizePreviewsForSession:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_23_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_PrefersFullSizePreviews (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_24_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_SessionDidEnd (id self, SEL sel, UIDropInteraction * p0, id p1, GCHandle* exception_gchandle);
	-(void) dropInteraction:(UIDropInteraction *)p0 sessionDidEnd:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_24_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_SessionDidEnd (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_25_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_SessionDidEnd (id self, SEL sel, UIDragInteraction * p0, id p1, NSUInteger p2, GCHandle* exception_gchandle);
	-(void) dragInteraction:(UIDragInteraction *)p0 session:(id)p1 didEndWithOperation:(NSUInteger)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_25_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_SessionDidEnd (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_26_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_SessionWillEnd (id self, SEL sel, UIDragInteraction * p0, id p1, NSUInteger p2, GCHandle* exception_gchandle);
	-(void) dragInteraction:(UIDragInteraction *)p0 session:(id)p1 willEndWithOperation:(NSUInteger)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_26_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_SessionWillEnd (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSArray * callback_27_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_GetItemsForBeginningSession (id self, SEL sel, UIDragInteraction * p0, id p1, GCHandle* exception_gchandle);
	-(NSArray *) dragInteraction:(UIDragInteraction *)p0 itemsForBeginningSession:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSArray * rv = { 0 };
		rv = callback_27_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_GetItemsForBeginningSession (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_28_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_CanHandleSession (id self, SEL sel, UIDropInteraction * p0, id p1, GCHandle* exception_gchandle);
	-(BOOL) dropInteraction:(UIDropInteraction *)p0 canHandleSession:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_28_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_CanHandleSession (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_29_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_SessionDidExit (id self, SEL sel, UIDropInteraction * p0, id p1, GCHandle* exception_gchandle);
	-(void) dropInteraction:(UIDropInteraction *)p0 sessionDidExit:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_29_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_SessionDidExit (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UIDropProposal * callback_30_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_SessionDidUpdate (id self, SEL sel, UIDropInteraction * p0, id p1, GCHandle* exception_gchandle);
	-(UIDropProposal *) dropInteraction:(UIDropInteraction *)p0 sessionDidUpdate:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIDropProposal * rv = { 0 };
		rv = callback_30_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_SessionDidUpdate (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_31_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_PerformDrop (id self, SEL sel, UIDropInteraction * p0, id p1, GCHandle* exception_gchandle);
	-(void) dropInteraction:(UIDropInteraction *)p0 performDrop:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_31_Microsoft_Maui_Controls_Platform_DragAndDropDelegate_PerformDrop (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation __UIGestureRecognizerToken {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_1013_UIKit_UIGestureRecognizer_Token__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1013_UIKit_UIGestureRecognizer_Token__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __UIGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UIGestureRecognizer *)p0;
@end

@implementation __UIGestureRecognizer {
}

	void callback_32_Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer_Callback_Activated (id self, SEL sel, UIGestureRecognizer * p0, GCHandle* exception_gchandle);
	-(void) target:(UIGestureRecognizer *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_32_Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer_Callback_Activated (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@interface Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer : UIGestureRecognizer {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) touchesBegan:(NSSet *)p0 withEvent:(UIEvent *)p1;
	-(void) touchesEnded:(NSSet *)p0 withEvent:(UIEvent *)p1;
	-(void) touchesMoved:(NSSet *)p0 withEvent:(UIEvent *)p1;
	-(void) touchesCancelled:(NSSet *)p0 withEvent:(UIEvent *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_33_Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer_TouchesBegan (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesBegan:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_33_Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer_TouchesBegan (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_34_Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer_TouchesEnded (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesEnded:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_34_Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer_TouchesEnded (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_35_Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer_TouchesMoved (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesMoved:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_35_Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer_TouchesMoved (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_36_Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer_TouchesCancelled (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesCancelled:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_36_Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer_TouchesCancelled (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_37_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer_ViewWillLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewWillLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_37_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer_ViewWillLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_38_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_38_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_39_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_39_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_40_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer_ViewWillAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewWillAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_40_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer_ViewWillAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_41_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer_ViewWillDisappear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewWillDisappear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_41_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer_ViewWillDisappear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_44_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_get_PrefersHomeIndicatorAutoHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) prefersHomeIndicatorAutoHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_44_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_get_PrefersHomeIndicatorAutoHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_45_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_PrefersStatusBarHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) prefersStatusBarHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_45_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_PrefersStatusBarHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSInteger callback_46_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_get_PreferredStatusBarUpdateAnimation (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSInteger) preferredStatusBarUpdateAnimation
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSInteger rv = { 0 };
		rv = callback_46_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_get_PreferredStatusBarUpdateAnimation (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_47_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_47_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_48_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_ViewWillAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewWillAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_48_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_ViewWillAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_49_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_49_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_50_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_50_Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer {
}

	CGRect callback_58_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_get_Frame (id self, SEL sel, GCHandle* exception_gchandle);
	-(CGRect) frame
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGRect rv = { 0 };
		rv = callback_58_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_get_Frame (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_59_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_set_Frame (id self, SEL sel, CGRect p0, GCHandle* exception_gchandle);
	-(void) setFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_59_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_set_Frame (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_60_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_60_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_61_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_WillMoveToSuperview (id self, SEL sel, UIView * p0, GCHandle* exception_gchandle);
	-(void) willMoveToSuperview:(UIView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_61_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_WillMoveToSuperview (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_62_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_get_IntrinsicContentSize (id self, SEL sel, GCHandle* exception_gchandle);
	-(CGSize) intrinsicContentSize
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_62_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_get_IntrinsicContentSize (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGSize callback_63_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_63_Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellSearchResultsRenderer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UITableViewCell * callback_64_Microsoft_Maui_Controls_Platform_Compatibility_ShellSearchResultsRenderer_GetCell (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UITableViewCell * rv = { 0 };
		rv = callback_64_Microsoft_Maui_Controls_Platform_Compatibility_ShellSearchResultsRenderer_GetCell (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_65_Microsoft_Maui_Controls_Platform_Compatibility_ShellSearchResultsRenderer_RowSelected (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_65_Microsoft_Maui_Controls_Platform_Compatibility_ShellSearchResultsRenderer_RowSelected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void * callback_66_Microsoft_Maui_Controls_Platform_Compatibility_ShellSearchResultsRenderer_NumberOfSections (id self, SEL sel, UITableView * p0, GCHandle* exception_gchandle);
	-(void *) numberOfSectionsInTableView:(UITableView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_66_Microsoft_Maui_Controls_Platform_Compatibility_ShellSearchResultsRenderer_NumberOfSections (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void * callback_67_Microsoft_Maui_Controls_Platform_Compatibility_ShellSearchResultsRenderer_RowsInSection (id self, SEL sel, UITableView * p0, void * p1, GCHandle* exception_gchandle);
	-(void *) tableView:(UITableView *)p0 numberOfRowsInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_67_Microsoft_Maui_Controls_Platform_Compatibility_ShellSearchResultsRenderer_RowsInSection (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UIGestureRecognizerDelegate {
}

	id callback_1280_UIKit_UIGestureRecognizerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1280_UIKit_UIGestureRecognizerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_GestureDelegate : NSObject<UIGestureRecognizerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) gestureRecognizerShouldBegin:(UIGestureRecognizer *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_GestureDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_68_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_GestureDelegate_ShouldBegin (id self, SEL sel, UIGestureRecognizer * p0, GCHandle* exception_gchandle);
	-(BOOL) gestureRecognizerShouldBegin:(UIGestureRecognizer *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_68_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_GestureDelegate_ShouldBegin (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UINavigationControllerDelegate {
}

	id callback_1299_UIKit_UINavigationControllerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1299_UIKit_UINavigationControllerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_NavDelegate : NSObject<UINavigationControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(id) navigationController:(UINavigationController *)p0 animationControllerForOperation:(NSInteger)p1 fromViewController:(UIViewController *)p2 toViewController:(UIViewController *)p3;
	-(void) navigationController:(UINavigationController *)p0 didShowViewController:(UIViewController *)p1 animated:(BOOL)p2;
	-(void) navigationController:(UINavigationController *)p0 willShowViewController:(UIViewController *)p1 animated:(BOOL)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_NavDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	id callback_69_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_NavDelegate_GetAnimationControllerForOperation (id self, SEL sel, UINavigationController * p0, NSInteger p1, UIViewController * p2, UIViewController * p3, GCHandle* exception_gchandle);
	-(id) navigationController:(UINavigationController *)p0 animationControllerForOperation:(NSInteger)p1 fromViewController:(UIViewController *)p2 toViewController:(UIViewController *)p3
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		id rv = { 0 };
		rv = callback_69_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_NavDelegate_GetAnimationControllerForOperation (self, _cmd, p0, p1, p2, p3, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_70_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_NavDelegate_DidShowViewController (id self, SEL sel, UINavigationController * p0, UIViewController * p1, BOOL p2, GCHandle* exception_gchandle);
	-(void) navigationController:(UINavigationController *)p0 didShowViewController:(UIViewController *)p1 animated:(BOOL)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_70_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_NavDelegate_DidShowViewController (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_71_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_NavDelegate_WillShowViewController (id self, SEL sel, UINavigationController * p0, UIViewController * p1, BOOL p2, GCHandle* exception_gchandle);
	-(void) navigationController:(UINavigationController *)p0 willShowViewController:(UIViewController *)p1 animated:(BOOL)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_71_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_NavDelegate_WillShowViewController (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_72_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ShouldPopItem (id self, SEL sel, UINavigationBar * p0, UINavigationItem * p1, GCHandle* exception_gchandle);
	-(BOOL) navigationBar:(UINavigationBar *)p0 shouldPopItem:(UINavigationItem *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_72_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ShouldPopItem (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_73_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_DidPopItem (id self, SEL sel, UINavigationBar * p0, UINavigationItem * p1, GCHandle* exception_gchandle);
	-(BOOL) navigationBar:(UINavigationBar *)p0 didPopItem:(UINavigationItem *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_73_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_DidPopItem (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_74_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ViewDidDisappear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewDidDisappear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_74_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ViewDidDisappear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_75_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ViewWillAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewWillAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_75_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ViewWillAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_76_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_76_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_77_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_77_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_78_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ViewDidAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewDidAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_78_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_ViewDidAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSArray * callback_79_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_PopToRootViewController (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(NSArray *) popToRootViewControllerAnimated:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSArray * rv = { 0 };
		rv = callback_79_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_PopToRootViewController (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSArray * callback_80_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_get_ViewControllers (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSArray *) viewControllers
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSArray * rv = { 0 };
		rv = callback_80_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_get_ViewControllers (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_81_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_set_ViewControllers (id self, SEL sel, NSArray * p0, GCHandle* exception_gchandle);
	-(void) setViewControllers:(NSArray *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_81_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_set_ViewControllers (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSArray * callback_82_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_PopToViewController (id self, SEL sel, UIViewController * p0, BOOL p1, GCHandle* exception_gchandle);
	-(NSArray *) popToViewController:(UIViewController *)p0 animated:(BOOL)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSArray * rv = { 0 };
		rv = callback_82_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_PopToViewController (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_83_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_PushViewController (id self, SEL sel, UIViewController * p0, BOOL p1, GCHandle* exception_gchandle);
	-(void) pushViewController:(UIViewController *)p0 animated:(BOOL)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_83_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_PushViewController (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UIViewController * callback_84_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_PopViewController (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(UIViewController *) popViewControllerAnimated:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIViewController * rv = { 0 };
		rv = callback_84_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_PopViewController (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_87_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell_get_Selected (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) isSelected
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_87_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell_get_Selected (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_88_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell_set_Selected (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) setSelected:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_88_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell_set_Selected (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_89_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_89_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_90_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_90_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_85_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_85_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UICollectionViewCell class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}

	id callback_86_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell__ctor (id self, SEL sel, CGRect p0, bool* call_super, GCHandle* exception_gchandle);
	-(id) initWithFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_86_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell__ctor (self, _cmd, p0, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UICollectionViewCell class] };
			rv = ((id (*)(objc_super*, SEL, CGRect)) objc_msgSendSuper) (&super, @selector (initWithFrame:), p0);
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_92_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_CanMoveItem (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(BOOL) collectionView:(UICollectionView *)p0 canMoveItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_92_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_CanMoveItem (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UICollectionViewCell * callback_93_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_GetCell (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(UICollectionViewCell *) collectionView:(UICollectionView *)p0 cellForItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionViewCell * rv = { 0 };
		rv = callback_93_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_GetCell (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void * callback_94_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_GetItemsCount (id self, SEL sel, UICollectionView * p0, void * p1, GCHandle* exception_gchandle);
	-(void *) collectionView:(UICollectionView *)p0 numberOfItemsInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_94_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_GetItemsCount (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_95_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ItemDeselected (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didDeselectItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_95_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ItemDeselected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_96_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ItemSelected (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) collectionView:(UICollectionView *)p0 didSelectItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_96_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ItemSelected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void * callback_97_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_NumberOfSections (id self, SEL sel, UICollectionView * p0, GCHandle* exception_gchandle);
	-(void *) numberOfSectionsInCollectionView:(UICollectionView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_97_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_NumberOfSections (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_98_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShouldSelectItem (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(BOOL) collectionView:(UICollectionView *)p0 shouldSelectItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_98_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShouldSelectItem (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_99_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_99_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_100_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_100_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_91_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_91_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UICollectionViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_101_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_101_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_102_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_ViewWillTransitionToSize (id self, SEL sel, CGSize p0, id p1, GCHandle* exception_gchandle);
	-(void) viewWillTransitionToSize:(CGSize)p0 withTransitionCoordinator:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_102_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_ViewWillTransitionToSize (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_103_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_103_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_104_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_ViewWillAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewWillAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_104_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_ViewWillAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_105_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_ViewSafeAreaInsetsDidChange (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewSafeAreaInsetsDidChange
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_105_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_ViewSafeAreaInsetsDidChange (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_106_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_TraitCollectionDidChange (id self, SEL sel, UITraitCollection * p0, GCHandle* exception_gchandle);
	-(void) traitCollectionDidChange:(UITraitCollection *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_106_Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer_TraitCollectionDidChange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_SeparatorView : UIView {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_SeparatorView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_110_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_SeparatorView_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_110_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_SeparatorView_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_109_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_SeparatorView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_109_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_SeparatorView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	CGFloat callback_111_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_GetHeightForRow (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(CGFloat) tableView:(UITableView *)p0 heightForRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGFloat rv = { 0 };
		rv = callback_111_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_GetHeightForRow (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UITableViewCell * callback_112_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_GetCell (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UITableViewCell * rv = { 0 };
		rv = callback_112_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_GetCell (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGFloat callback_113_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_GetHeightForFooter (id self, SEL sel, UITableView * p0, void * p1, GCHandle* exception_gchandle);
	-(CGFloat) tableView:(UITableView *)p0 heightForFooterInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGFloat rv = { 0 };
		rv = callback_113_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_GetHeightForFooter (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UIView * callback_114_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_GetViewForFooter (id self, SEL sel, UITableView * p0, void * p1, GCHandle* exception_gchandle);
	-(UIView *) tableView:(UITableView *)p0 viewForFooterInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIView * rv = { 0 };
		rv = callback_114_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_GetViewForFooter (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void * callback_115_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_NumberOfSections (id self, SEL sel, UITableView * p0, GCHandle* exception_gchandle);
	-(void *) numberOfSectionsInTableView:(UITableView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_115_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_NumberOfSections (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_116_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_RowSelected (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_116_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_RowSelected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void * callback_117_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_RowsInSection (id self, SEL sel, UITableView * p0, void * p1, GCHandle* exception_gchandle);
	-(void *) tableView:(UITableView *)p0 numberOfRowsInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_117_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_RowsInSection (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_118_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_Scrolled (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_118_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_Scrolled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_119_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_WillDisplay (id self, SEL sel, UITableView * p0, UITableViewCell * p1, NSIndexPath * p2, GCHandle* exception_gchandle);
	-(void) tableView:(UITableView *)p0 willDisplayCell:(UITableViewCell *)p1 forRowAtIndexPath:(NSIndexPath *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_119_Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_WillDisplay (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items_CarouselViewController {
}

	void callback_126_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_TraitCollectionDidChange (id self, SEL sel, UITraitCollection * p0, GCHandle* exception_gchandle);
	-(void) traitCollectionDidChange:(UITraitCollection *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_126_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_TraitCollectionDidChange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UICollectionViewCell * callback_127_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_GetCell (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(UICollectionViewCell *) collectionView:(UICollectionView *)p0 cellForItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionViewCell * rv = { 0 };
		rv = callback_127_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_GetCell (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void * callback_128_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_GetItemsCount (id self, SEL sel, UICollectionView * p0, void * p1, GCHandle* exception_gchandle);
	-(void *) collectionView:(UICollectionView *)p0 numberOfItemsInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_128_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_GetItemsCount (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_129_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_129_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_130_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_ViewWillLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewWillLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_130_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_ViewWillLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_131_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_131_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_132_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_DraggingStarted (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_132_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_DraggingStarted (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_133_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_DraggingEnded (id self, SEL sel, UIScrollView * p0, BOOL p1, GCHandle* exception_gchandle);
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_133_Microsoft_Maui_Controls_Handlers_Items_CarouselViewController_DraggingEnded (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2 {
}

	UICollectionViewCell * callback_199_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_GetCell (id self, SEL sel, UICollectionView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(UICollectionViewCell *) collectionView:(UICollectionView *)p0 cellForItemAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UICollectionViewCell * rv = { 0 };
		rv = callback_199_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_GetCell (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void * callback_200_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_GetItemsCount (id self, SEL sel, UICollectionView * p0, void * p1, GCHandle* exception_gchandle);
	-(void *) collectionView:(UICollectionView *)p0 numberOfItemsInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_200_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_GetItemsCount (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_201_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_201_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_202_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_ViewWillLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewWillLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_202_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_ViewWillLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_203_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_203_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_204_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_DraggingStarted (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_204_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_DraggingStarted (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_205_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_DraggingEnded (id self, SEL sel, UIScrollView * p0, BOOL p1, GCHandle* exception_gchandle);
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_205_Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2_DraggingEnded (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Items2_LayoutFactory2_CustomUICollectionViewCompositionalLayout : UICollectionViewCompositionalLayout {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) finalizeCollectionViewUpdates;
	-(CGPoint) targetContentOffsetForProposedContentOffset:(CGPoint)p0 withScrollingVelocity:(CGPoint)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Items2_LayoutFactory2_CustomUICollectionViewCompositionalLayout {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_231_Microsoft_Maui_Controls_Handlers_Items2_LayoutFactory2_CustomUICollectionViewCompositionalLayout_FinalizeCollectionViewUpdates (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) finalizeCollectionViewUpdates
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_231_Microsoft_Maui_Controls_Handlers_Items2_LayoutFactory2_CustomUICollectionViewCompositionalLayout_FinalizeCollectionViewUpdates (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGPoint callback_232_Microsoft_Maui_Controls_Handlers_Items2_LayoutFactory2_CustomUICollectionViewCompositionalLayout_TargetContentOffset (id self, SEL sel, CGPoint p0, CGPoint p1, GCHandle* exception_gchandle);
	-(CGPoint) targetContentOffsetForProposedContentOffset:(CGPoint)p0 withScrollingVelocity:(CGPoint)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGPoint rv = { 0 };
		rv = callback_232_Microsoft_Maui_Controls_Handlers_Items2_LayoutFactory2_CustomUICollectionViewCompositionalLayout_TargetContentOffset (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ChildViewController : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) viewDidLayoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ChildViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_253_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ChildViewController_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_253_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ChildViewController_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_254_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ChildViewController__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_254_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ChildViewController__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_256_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ViewDidAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewDidAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_256_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ViewDidAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_257_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ViewDidDisappear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewDidDisappear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_257_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ViewDidDisappear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_258_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_258_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_259_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_259_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_260_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ViewWillTransitionToSize (id self, SEL sel, CGSize p0, id p1, GCHandle* exception_gchandle);
	-(void) viewWillTransitionToSize:(CGSize)p0 withTransitionCoordinator:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_260_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ViewWillTransitionToSize (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UIViewController * callback_261_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ChildViewControllerForStatusBarHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIViewController *) childViewControllerForStatusBarHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIViewController * rv = { 0 };
		rv = callback_261_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ChildViewControllerForStatusBarHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UIViewController * callback_262_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_get_ChildViewControllerForHomeIndicatorAutoHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIViewController *) childViewControllerForHomeIndicatorAutoHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIViewController * rv = { 0 };
		rv = callback_262_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_get_ChildViewControllerForHomeIndicatorAutoHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_255_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_255_Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	CGSize callback_519_Microsoft_Maui_Platform_MauiView_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_519_Microsoft_Maui_Platform_MauiView_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_520_Microsoft_Maui_Platform_MauiView_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_520_Microsoft_Maui_Platform_MauiView_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_521_Microsoft_Maui_Platform_MauiView_SafeAreaInsetsDidChange (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) safeAreaInsetsDidChange
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_521_Microsoft_Maui_Platform_MauiView_SafeAreaInsetsDidChange (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_522_Microsoft_Maui_Platform_MauiView_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_522_Microsoft_Maui_Platform_MauiView_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_523_Microsoft_Maui_Platform_MauiView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_523_Microsoft_Maui_Platform_MauiView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_ContentView {
}

	void callback_438_Microsoft_Maui_Platform_ContentView_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_438_Microsoft_Maui_Platform_ContentView_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_439_Microsoft_Maui_Platform_ContentView_WillRemoveSubview (id self, SEL sel, UIView * p0, GCHandle* exception_gchandle);
	-(void) willRemoveSubview:(UIView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_439_Microsoft_Maui_Platform_ContentView_WillRemoveSubview (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_437_Microsoft_Maui_Platform_ContentView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_437_Microsoft_Maui_Platform_ContentView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Platform_MauiView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_FrameView : Microsoft_Maui_Platform_ContentView {
}
	-(void) removeFromSuperview;
	-(BOOL) pointInside:(CGPoint)p0 withEvent:(UIEvent *)p1;
	-(id) init;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_FrameView {
}

	void callback_263_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_FrameView_RemoveFromSuperview (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) removeFromSuperview
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_263_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_FrameView_RemoveFromSuperview (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_264_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_FrameView_PointInside (id self, SEL sel, CGPoint p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(BOOL) pointInside:(CGPoint)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_264_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_FrameView_PointInside (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_265_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_FrameView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_265_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_FrameView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Platform_ContentView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer {
}

	void callback_267_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_AddSubview (id self, SEL sel, UIView * p0, GCHandle* exception_gchandle);
	-(void) addSubview:(UIView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_267_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_AddSubview (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_268_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_TraitCollectionDidChange (id self, SEL sel, UITraitCollection * p0, GCHandle* exception_gchandle);
	-(void) traitCollectionDidChange:(UITraitCollection *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_268_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_TraitCollectionDidChange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_269_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_269_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_270_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_270_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_271_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_Draw (id self, SEL sel, CGRect p0, GCHandle* exception_gchandle);
	-(void) drawRect:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_271_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_Draw (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_266_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_266_Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Compatibility_VisualElementRenderer_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_MoreActionSheetController : UIAlertController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(NSInteger) preferredStyle;
	-(void) willRotateToInterfaceOrientation:(NSInteger)p0 duration:(double)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_MoreActionSheetController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	NSInteger callback_282_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_MoreActionSheetController_get_PreferredStyle (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSInteger) preferredStyle
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSInteger rv = { 0 };
		rv = callback_282_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_MoreActionSheetController_get_PreferredStyle (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_283_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_MoreActionSheetController_WillRotate (id self, SEL sel, NSInteger p0, double p1, GCHandle* exception_gchandle);
	-(void) willRotateToInterfaceOrientation:(NSInteger)p0 duration:(double)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_283_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_MoreActionSheetController_WillRotate (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_284_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_MoreActionSheetController__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_284_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_MoreActionSheetController__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIAlertController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell : UITableViewCell {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) layoutSubviews;
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(void) removeFromSuperview;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_286_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_286_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_287_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_287_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_288_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_RemoveFromSuperview (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) removeFromSuperview
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_288_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_RemoveFromSuperview (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_285_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_285_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITableViewCell class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_ContextScrollViewDelegate : NSObject<UIScrollViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0;
	-(void) scrollViewDidScroll:(UIScrollView *)p0;
	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_ContextScrollViewDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_290_Microsoft_Maui_Controls_Handlers_Compatibility_ContextScrollViewDelegate_DraggingStarted (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_290_Microsoft_Maui_Controls_Handlers_Compatibility_ContextScrollViewDelegate_DraggingStarted (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_291_Microsoft_Maui_Controls_Handlers_Compatibility_ContextScrollViewDelegate_Scrolled (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_291_Microsoft_Maui_Controls_Handlers_Compatibility_ContextScrollViewDelegate_Scrolled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_292_Microsoft_Maui_Controls_Handlers_Compatibility_ContextScrollViewDelegate_WillEndDragging (id self, SEL sel, UIScrollView * p0, CGPoint p1, CGPoint* p2, GCHandle* exception_gchandle);
	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_292_Microsoft_Maui_Controls_Handlers_Compatibility_ContextScrollViewDelegate_WillEndDragging (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource : NSObject<UIScrollViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1;
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(CGFloat) tableView:(UITableView *)p0 heightForHeaderInSection:(void *)p1;
	-(UIView *) tableView:(UITableView *)p0 viewForHeaderInSection:(void *)p1;
	-(void) tableView:(UITableView *)p0 didEndDisplayingHeaderView:(UIView *)p1 forSection:(void *)p2;
	-(void *) numberOfSectionsInTableView:(UITableView *)p0;
	-(void) tableView:(UITableView *)p0 didDeselectRowAtIndexPath:(NSIndexPath *)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(void *) tableView:(UITableView *)p0 numberOfRowsInSection:(void *)p1;
	-(void) scrollViewDidScroll:(UIScrollView *)p0;
	-(NSArray *) sectionIndexTitlesForTableView:(UITableView *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_295_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_DraggingEnded (id self, SEL sel, UIScrollView * p0, BOOL p1, GCHandle* exception_gchandle);
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_295_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_DraggingEnded (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_296_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_DraggingStarted (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_296_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_DraggingStarted (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UITableViewCell * callback_297_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_GetCell (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UITableViewCell * rv = { 0 };
		rv = callback_297_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_GetCell (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGFloat callback_298_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_GetHeightForHeader (id self, SEL sel, UITableView * p0, void * p1, GCHandle* exception_gchandle);
	-(CGFloat) tableView:(UITableView *)p0 heightForHeaderInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGFloat rv = { 0 };
		rv = callback_298_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_GetHeightForHeader (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UIView * callback_299_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_GetViewForHeader (id self, SEL sel, UITableView * p0, void * p1, GCHandle* exception_gchandle);
	-(UIView *) tableView:(UITableView *)p0 viewForHeaderInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIView * rv = { 0 };
		rv = callback_299_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_GetViewForHeader (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_300_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_HeaderViewDisplayingEnded (id self, SEL sel, UITableView * p0, UIView * p1, void * p2, GCHandle* exception_gchandle);
	-(void) tableView:(UITableView *)p0 didEndDisplayingHeaderView:(UIView *)p1 forSection:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_300_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_HeaderViewDisplayingEnded (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void * callback_301_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_NumberOfSections (id self, SEL sel, UITableView * p0, GCHandle* exception_gchandle);
	-(void *) numberOfSectionsInTableView:(UITableView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_301_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_NumberOfSections (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_302_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_RowDeselected (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) tableView:(UITableView *)p0 didDeselectRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_302_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_RowDeselected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_303_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_RowSelected (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_303_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_RowSelected (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void * callback_304_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_RowsInSection (id self, SEL sel, UITableView * p0, void * p1, GCHandle* exception_gchandle);
	-(void *) tableView:(UITableView *)p0 numberOfRowsInSection:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_304_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_RowsInSection (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_305_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_Scrolled (id self, SEL sel, UIScrollView * p0, GCHandle* exception_gchandle);
	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_305_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_Scrolled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSArray * callback_306_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_SectionIndexTitles (id self, SEL sel, UITableView * p0, GCHandle* exception_gchandle);
	-(NSArray *) sectionIndexTitlesForTableView:(UITableView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSArray * rv = { 0 };
		rv = callback_306_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource_SectionIndexTitles (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_UnevenListViewDataSource : Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource<UIScrollViewDelegate> {
}
	-(CGFloat) tableView:(UITableView *)p0 heightForRowAtIndexPath:(NSIndexPath *)p1;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_UnevenListViewDataSource {
}

	CGFloat callback_294_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_UnevenListViewDataSource_GetHeightForRow (id self, SEL sel, UITableView * p0, NSIndexPath * p1, GCHandle* exception_gchandle);
	-(CGFloat) tableView:(UITableView *)p0 heightForRowAtIndexPath:(NSIndexPath *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGFloat rv = { 0 };
		rv = callback_294_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_UnevenListViewDataSource_GetHeightForRow (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer {
}

	void callback_308_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_308_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_309_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_TraitCollectionDidChange (id self, SEL sel, UITraitCollection * p0, GCHandle* exception_gchandle);
	-(void) traitCollectionDidChange:(UITraitCollection *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_309_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_TraitCollectionDidChange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_307_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_307_Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_FormsUITableViewController : UITableViewController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewWillLayoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_FormsUITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_311_Microsoft_Maui_Controls_Handlers_Compatibility_FormsUITableViewController_ViewWillAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewWillAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_311_Microsoft_Maui_Controls_Handlers_Compatibility_FormsUITableViewController_ViewWillAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_312_Microsoft_Maui_Controls_Handlers_Compatibility_FormsUITableViewController_ViewWillLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewWillLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_312_Microsoft_Maui_Controls_Handlers_Compatibility_FormsUITableViewController_ViewWillLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_ViewCellRenderer_ViewTableCell : UITableViewCell {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) layoutSubviews;
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_ViewCellRenderer_ViewTableCell {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_316_Microsoft_Maui_Controls_Handlers_Compatibility_ViewCellRenderer_ViewTableCell_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_316_Microsoft_Maui_Controls_Handlers_Compatibility_ViewCellRenderer_ViewTableCell_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_317_Microsoft_Maui_Controls_Handlers_Compatibility_ViewCellRenderer_ViewTableCell_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_317_Microsoft_Maui_Controls_Handlers_Compatibility_ViewCellRenderer_ViewTableCell_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiNavigationDelegate : NSObject<UINavigationControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) navigationController:(UINavigationController *)p0 didShowViewController:(UIViewController *)p1 animated:(BOOL)p2;
	-(void) navigationController:(UINavigationController *)p0 willShowViewController:(UIViewController *)p1 animated:(BOOL)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiNavigationDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_322_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiNavigationDelegate_DidShowViewController (id self, SEL sel, UINavigationController * p0, UIViewController * p1, BOOL p2, GCHandle* exception_gchandle);
	-(void) navigationController:(UINavigationController *)p0 didShowViewController:(UIViewController *)p1 animated:(BOOL)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_322_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiNavigationDelegate_DidShowViewController (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_323_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiNavigationDelegate_WillShowViewController (id self, SEL sel, UINavigationController * p0, UIViewController * p1, BOOL p2, GCHandle* exception_gchandle);
	-(void) navigationController:(UINavigationController *)p0 willShowViewController:(UIViewController *)p1 animated:(BOOL)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_323_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiNavigationDelegate_WillShowViewController (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiControlsNavigationBar : Microsoft_Maui_Controls_Handlers_Compatibility_MauiNavigationBar {
}
	-(void) layoutSubviews;
	-(id) init;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiControlsNavigationBar {
}

	void callback_340_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiControlsNavigationBar_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_340_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiControlsNavigationBar_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_339_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiControlsNavigationBar__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_339_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiControlsNavigationBar__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Controls_Handlers_Compatibility_MauiNavigationBar class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container : UIView {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(UIEdgeInsets) alignmentRectInsets;
	-(CGSize) intrinsicContentSize;
	-(CGRect) frame;
	-(void) setFrame:(CGRect)p0;
	-(CGSize) sizeThatFits:(CGSize)p0;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UIEdgeInsets callback_341_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_get_AlignmentRectInsets (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIEdgeInsets) alignmentRectInsets
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIEdgeInsets rv = { 0 };
		rv = callback_341_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_get_AlignmentRectInsets (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGSize callback_342_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_get_IntrinsicContentSize (id self, SEL sel, GCHandle* exception_gchandle);
	-(CGSize) intrinsicContentSize
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_342_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_get_IntrinsicContentSize (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGRect callback_343_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_get_Frame (id self, SEL sel, GCHandle* exception_gchandle);
	-(CGRect) frame
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGRect rv = { 0 };
		rv = callback_343_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_get_Frame (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_344_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_set_Frame (id self, SEL sel, CGRect p0, GCHandle* exception_gchandle);
	-(void) setFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_344_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_set_Frame (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_345_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_345_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_346_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_346_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_348_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_DidRotate (id self, SEL sel, NSInteger p0, GCHandle* exception_gchandle);
	-(void) didRotateFromInterfaceOrientation:(NSInteger)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_348_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_DidRotate (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSArray * callback_349_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_PopToRootViewController (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(NSArray *) popToRootViewControllerAnimated:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSArray * rv = { 0 };
		rv = callback_349_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_PopToRootViewController (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UIViewController * callback_350_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_PopViewController (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(UIViewController *) popViewControllerAnimated:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIViewController * rv = { 0 };
		rv = callback_350_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_PopViewController (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_351_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ViewDidAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewDidAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_351_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ViewDidAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_352_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ViewWillAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewWillAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_352_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ViewWillAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_353_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ViewDidDisappear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewDidDisappear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_353_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ViewDidDisappear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_354_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ViewWillLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewWillLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_354_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ViewWillLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_355_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_355_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_356_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_TraitCollectionDidChange (id self, SEL sel, UITraitCollection * p0, GCHandle* exception_gchandle);
	-(void) traitCollectionDidChange:(UITraitCollection *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_356_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_TraitCollectionDidChange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_357_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ShouldPopItem (id self, SEL sel, UINavigationBar * p0, UINavigationItem * p1, GCHandle* exception_gchandle);
	-(BOOL) navigationBar:(UINavigationBar *)p0 shouldPopItem:(UINavigationItem *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_357_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ShouldPopItem (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_358_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_DidPopItem (id self, SEL sel, UINavigationBar * p0, UINavigationItem * p1, GCHandle* exception_gchandle);
	-(BOOL) navigationBar:(UINavigationBar *)p0 didPopItem:(UINavigationItem *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_358_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_DidPopItem (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UIViewController * callback_359_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ChildViewControllerForStatusBarHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIViewController *) childViewControllerForStatusBarHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIViewController * rv = { 0 };
		rv = callback_359_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ChildViewControllerForStatusBarHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UIViewController * callback_360_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_get_ChildViewControllerForHomeIndicatorAutoHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIViewController *) childViewControllerForHomeIndicatorAutoHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIViewController * rv = { 0 };
		rv = callback_360_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_get_ChildViewControllerForHomeIndicatorAutoHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_347_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_347_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UINavigationController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_362_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer_get_PrefersHomeIndicatorAutoHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) prefersHomeIndicatorAutoHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_362_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer_get_PrefersHomeIndicatorAutoHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_363_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer_PrefersStatusBarHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) prefersStatusBarHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_363_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer_PrefersStatusBarHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSInteger callback_364_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer_get_PreferredStatusBarUpdateAnimation (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSInteger) preferredStatusBarUpdateAnimation
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSInteger rv = { 0 };
		rv = callback_364_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer_get_PreferredStatusBarUpdateAnimation (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_365_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_365_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_366_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_366_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_361_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_361_Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UIViewController * callback_368_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_get_SelectedViewController (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIViewController *) selectedViewController
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIViewController * rv = { 0 };
		rv = callback_368_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_get_SelectedViewController (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_369_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_set_SelectedViewController (id self, SEL sel, UIViewController * p0, GCHandle* exception_gchandle);
	-(void) setSelectedViewController:(UIViewController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_369_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_set_SelectedViewController (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_370_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_DidRotate (id self, SEL sel, NSInteger p0, GCHandle* exception_gchandle);
	-(void) didRotateFromInterfaceOrientation:(NSInteger)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_370_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_DidRotate (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_371_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_ViewDidAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewDidAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_371_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_ViewDidAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_372_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_ViewDidDisappear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewDidDisappear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_372_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_ViewDidDisappear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_373_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_373_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_374_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_TraitCollectionDidChange (id self, SEL sel, UITraitCollection * p0, GCHandle* exception_gchandle);
	-(void) traitCollectionDidChange:(UITraitCollection *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_374_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_TraitCollectionDidChange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UIViewController * callback_375_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_ChildViewControllerForStatusBarHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIViewController *) childViewControllerForStatusBarHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIViewController * rv = { 0 };
		rv = callback_375_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_ChildViewControllerForStatusBarHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UIViewController * callback_376_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_get_ChildViewControllerForHomeIndicatorAutoHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIViewController *) childViewControllerForHomeIndicatorAutoHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIViewController * rv = { 0 };
		rv = callback_376_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer_get_ChildViewControllerForHomeIndicatorAutoHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_367_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_367_Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITabBarController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent : UIControl {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) isEnabled;
	-(void) setEnabled:(BOOL)p0;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_2_Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent_get_Enabled (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) isEnabled
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_2_Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent_get_Enabled (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_3_Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent_set_Enabled (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) setEnabled:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3_Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent_set_Enabled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_4_Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_4_Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_1_Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1_Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIControl class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem : UIBarButtonItem {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UIContextMenuInteractionDelegate {
}

	id callback_1246_UIKit_UIContextMenuInteractionDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1246_UIKit_UIContextMenuInteractionDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickContextMenuInteraction_FakeRightClickDelegate : NSObject<UIContextMenuInteractionDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(UIContextMenuConfiguration *) contextMenuInteraction:(UIContextMenuInteraction *)p0 configurationForMenuAtLocation:(CGPoint)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickContextMenuInteraction_FakeRightClickDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UIContextMenuConfiguration * callback_9_Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickContextMenuInteraction_FakeRightClickDelegate_GetConfigurationForMenu (id self, SEL sel, UIContextMenuInteraction * p0, CGPoint p1, GCHandle* exception_gchandle);
	-(UIContextMenuConfiguration *) contextMenuInteraction:(UIContextMenuInteraction *)p0 configurationForMenuAtLocation:(CGPoint)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIContextMenuConfiguration * rv = { 0 };
		rv = callback_9_Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickContextMenuInteraction_FakeRightClickDelegate_GetConfigurationForMenu (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickContextMenuInteraction : UIContextMenuInteraction {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickContextMenuInteraction {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickPointerInteraction : UIContextMenuInteraction {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickPointerInteraction {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_SelectGestureRecognizer : UITapGestureRecognizer {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_SelectGestureRecognizer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_281_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_SelectGestureRecognizer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_281_Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_SelectGestureRecognizer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITapGestureRecognizer class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_EntryCellRenderer_EntryCellTableViewCell {
}

	void callback_293_Microsoft_Maui_Controls_Handlers_Compatibility_EntryCellRenderer_EntryCellTableViewCell_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_293_Microsoft_Maui_Controls_Handlers_Compatibility_EntryCellRenderer_EntryCellTableViewCell_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar : UIToolbar {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(NSArray *) items;
	-(void) setItems:(NSArray *)p0;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	NSArray * callback_319_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar_get_Items (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSArray *) items
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSArray * rv = { 0 };
		rv = callback_319_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar_get_Items (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_320_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar_set_Items (id self, SEL sel, NSArray * p0, GCHandle* exception_gchandle);
	-(void) setItems:(NSArray *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_320_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar_set_Items (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_321_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_321_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_318_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_318_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIToolbar class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) didRotateFromInterfaceOrientation:(NSInteger)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) viewDidDisappear:(BOOL)p0;
	-(void) viewWillLayoutSubviews;
	-(void) viewDidLayoutSubviews;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) willMoveToParentViewController:(UIViewController *)p0;
	-(void) viewWillTransitionToSize:(CGSize)p0 withTransitionCoordinator:(id)p1;
	-(NSUInteger) supportedInterfaceOrientations;
	-(NSInteger) preferredInterfaceOrientationForPresentation;
	-(BOOL) shouldAutorotate;
	-(BOOL) shouldAutorotateToInterfaceOrientation:(NSInteger)p0;
	-(BOOL) shouldAutomaticallyForwardRotationMethods;
	-(void) didMoveToParentViewController:(UIViewController *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_324_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_DidRotate (id self, SEL sel, NSInteger p0, GCHandle* exception_gchandle);
	-(void) didRotateFromInterfaceOrientation:(NSInteger)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_324_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_DidRotate (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_325_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewDidAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewDidAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_325_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewDidAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_326_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewDidDisappear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewDidDisappear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_326_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewDidDisappear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_327_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewWillLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewWillLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_327_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewWillLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_328_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_328_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_329_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewDidLoad (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLoad
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_329_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewDidLoad (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_330_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewWillAppear (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) viewWillAppear:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_330_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewWillAppear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_331_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_WillMoveToParentViewController (id self, SEL sel, UIViewController * p0, GCHandle* exception_gchandle);
	-(void) willMoveToParentViewController:(UIViewController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_331_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_WillMoveToParentViewController (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_332_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewWillTransitionToSize (id self, SEL sel, CGSize p0, id p1, GCHandle* exception_gchandle);
	-(void) viewWillTransitionToSize:(CGSize)p0 withTransitionCoordinator:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_332_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ViewWillTransitionToSize (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSUInteger callback_333_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_GetSupportedInterfaceOrientations (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSUInteger) supportedInterfaceOrientations
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSUInteger rv = { 0 };
		rv = callback_333_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_GetSupportedInterfaceOrientations (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSInteger callback_334_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_PreferredInterfaceOrientationForPresentation (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSInteger) preferredInterfaceOrientationForPresentation
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSInteger rv = { 0 };
		rv = callback_334_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_PreferredInterfaceOrientationForPresentation (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_335_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ShouldAutorotate (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) shouldAutorotate
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_335_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ShouldAutorotate (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_336_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ShouldAutorotateToInterfaceOrientation (id self, SEL sel, NSInteger p0, GCHandle* exception_gchandle);
	-(BOOL) shouldAutorotateToInterfaceOrientation:(NSInteger)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_336_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_ShouldAutorotateToInterfaceOrientation (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_337_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_get_ShouldAutomaticallyForwardRotationMethods (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) shouldAutomaticallyForwardRotationMethods
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_337_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_get_ShouldAutomaticallyForwardRotationMethods (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_338_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_DidMoveToParentViewController (id self, SEL sel, UIViewController * p0, GCHandle* exception_gchandle);
	-(void) didMoveToParentViewController:(UIViewController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_338_Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController_DidMoveToParentViewController (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickPointerInteraction_FakeRightClickPointerDelegate : NSObject<UIContextMenuInteractionDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(UIContextMenuConfiguration *) contextMenuInteraction:(UIContextMenuInteraction *)p0 configurationForMenuAtLocation:(CGPoint)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickPointerInteraction_FakeRightClickPointerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UIContextMenuConfiguration * callback_10_Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickPointerInteraction_FakeRightClickPointerDelegate_GetConfigurationForMenu (id self, SEL sel, UIContextMenuInteraction * p0, CGPoint p1, GCHandle* exception_gchandle);
	-(UIContextMenuConfiguration *) contextMenuInteraction:(UIContextMenuInteraction *)p0 configurationForMenuAtLocation:(CGPoint)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIContextMenuConfiguration * rv = { 0 };
		rv = callback_10_Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickPointerInteraction_FakeRightClickPointerDelegate_GetConfigurationForMenu (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface MauiCALayerAutosizeObserver : NSObject {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) observeValueForKeyPath:(NSString *)p0 ofObject:(NSObject *)p1 change:(NSDictionary *)p2 context:(void *)p3;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation MauiCALayerAutosizeObserver {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_429_Microsoft_Maui_Platform_CALayerAutosizeObserver_ObserveValue (id self, SEL sel, NSString * p0, NSObject * p1, NSDictionary * p2, void * p3, GCHandle* exception_gchandle);
	-(void) observeValueForKeyPath:(NSString *)p0 ofObject:(NSObject *)p1 change:(NSDictionary *)p2 context:(void *)p3
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_429_Microsoft_Maui_Platform_CALayerAutosizeObserver_ObserveValue (self, _cmd, p0, p1, p2, p3, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Platform_CollapseConstraint : NSLayoutConstraint {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(NSInteger) relation;
	-(NSInteger) firstAttribute;
	-(CGFloat) multiplier;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Platform_CollapseConstraint {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	NSInteger callback_430_Microsoft_Maui_Platform_CollapseConstraint_get_Relation (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSInteger) relation
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSInteger rv = { 0 };
		rv = callback_430_Microsoft_Maui_Platform_CollapseConstraint_get_Relation (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSInteger callback_431_Microsoft_Maui_Platform_CollapseConstraint_get_FirstAttribute (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSInteger) firstAttribute
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSInteger rv = { 0 };
		rv = callback_431_Microsoft_Maui_Platform_CollapseConstraint_get_FirstAttribute (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	CGFloat callback_432_Microsoft_Maui_Platform_CollapseConstraint_get_Multiplier (id self, SEL sel, GCHandle* exception_gchandle);
	-(CGFloat) multiplier
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGFloat rv = { 0 };
		rv = callback_432_Microsoft_Maui_Platform_CollapseConstraint_get_Multiplier (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_433_Microsoft_Maui_Platform_CollapseConstraint__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_433_Microsoft_Maui_Platform_CollapseConstraint__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSLayoutConstraint class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_ContainerViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_434_Microsoft_Maui_Platform_ContainerViewController_LoadView (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) loadView
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_434_Microsoft_Maui_Platform_ContainerViewController_LoadView (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_435_Microsoft_Maui_Platform_ContainerViewController_ViewDidLayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) viewDidLayoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_435_Microsoft_Maui_Platform_ContainerViewController_ViewDidLayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_436_Microsoft_Maui_Platform_ContainerViewController__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_436_Microsoft_Maui_Platform_ContainerViewController__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Platform_GeneralWrapperView : Microsoft_Maui_Platform_MauiView {
}
@end

@implementation Microsoft_Maui_Platform_GeneralWrapperView {
}
@end

@implementation Microsoft_Maui_Platform_LayoutView {
}

	void callback_440_Microsoft_Maui_Platform_LayoutView_SubviewAdded (id self, SEL sel, UIView * p0, GCHandle* exception_gchandle);
	-(void) didAddSubview:(UIView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_440_Microsoft_Maui_Platform_LayoutView_SubviewAdded (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_441_Microsoft_Maui_Platform_LayoutView_WillRemoveSubview (id self, SEL sel, UIView * p0, GCHandle* exception_gchandle);
	-(void) willRemoveSubview:(UIView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_441_Microsoft_Maui_Platform_LayoutView_WillRemoveSubview (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UIView * callback_442_Microsoft_Maui_Platform_LayoutView_HitTest (id self, SEL sel, CGPoint p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(UIView *) hitTest:(CGPoint)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIView * rv = { 0 };
		rv = callback_442_Microsoft_Maui_Platform_LayoutView_HitTest (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_443_Microsoft_Maui_Platform_LayoutView_get_UserInteractionEnabled (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) isUserInteractionEnabled
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_443_Microsoft_Maui_Platform_LayoutView_get_UserInteractionEnabled (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_444_Microsoft_Maui_Platform_LayoutView_set_UserInteractionEnabled (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) setUserInteractionEnabled:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_444_Microsoft_Maui_Platform_LayoutView_set_UserInteractionEnabled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_445_Microsoft_Maui_Platform_LayoutView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_445_Microsoft_Maui_Platform_LayoutView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Platform_MauiView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiActivityIndicator {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_446_Microsoft_Maui_Platform_MauiActivityIndicator_Draw (id self, SEL sel, CGRect p0, GCHandle* exception_gchandle);
	-(void) drawRect:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_446_Microsoft_Maui_Platform_MauiActivityIndicator_Draw (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_447_Microsoft_Maui_Platform_MauiActivityIndicator_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_447_Microsoft_Maui_Platform_MauiActivityIndicator_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_448_Microsoft_Maui_Platform_MauiActivityIndicator_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_448_Microsoft_Maui_Platform_MauiActivityIndicator_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation PlatformGraphicsView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_608_Microsoft_Maui_Graphics_Platform_PlatformGraphicsView_WillMoveToSuperview (id self, SEL sel, UIView * p0, GCHandle* exception_gchandle);
	-(void) willMoveToSuperview:(UIView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_608_Microsoft_Maui_Graphics_Platform_PlatformGraphicsView_WillMoveToSuperview (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_609_Microsoft_Maui_Graphics_Platform_PlatformGraphicsView_Draw (id self, SEL sel, CGRect p0, GCHandle* exception_gchandle);
	-(void) drawRect:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_609_Microsoft_Maui_Graphics_Platform_PlatformGraphicsView_Draw (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGRect callback_610_Microsoft_Maui_Graphics_Platform_PlatformGraphicsView_get_Bounds (id self, SEL sel, GCHandle* exception_gchandle);
	-(CGRect) bounds
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGRect rv = { 0 };
		rv = callback_610_Microsoft_Maui_Graphics_Platform_PlatformGraphicsView_get_Bounds (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_611_Microsoft_Maui_Graphics_Platform_PlatformGraphicsView_set_Bounds (id self, SEL sel, CGRect p0, GCHandle* exception_gchandle);
	-(void) setBounds:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_611_Microsoft_Maui_Graphics_Platform_PlatformGraphicsView_set_Bounds (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiBoxView {
}

	void callback_450_Microsoft_Maui_Platform_MauiBoxView_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_450_Microsoft_Maui_Platform_MauiBoxView_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_449_Microsoft_Maui_Platform_MauiBoxView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_449_Microsoft_Maui_Platform_MauiBoxView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [PlatformGraphicsView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiCALayer {
	XamarinObject __monoObjectGCHandle;
}
	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_452_Microsoft_Maui_Platform_MauiCALayer_RemoveFromSuperLayer (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) removeFromSuperlayer
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_452_Microsoft_Maui_Platform_MauiCALayer_RemoveFromSuperLayer (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_453_Microsoft_Maui_Platform_MauiCALayer_AddAnimation (id self, SEL sel, CAAnimation * p0, NSString * p1, GCHandle* exception_gchandle);
	-(void) addAnimation:(CAAnimation *)p0 forKey:(NSString *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_453_Microsoft_Maui_Platform_MauiCALayer_AddAnimation (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_454_Microsoft_Maui_Platform_MauiCALayer_LayoutSublayers (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSublayers
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_454_Microsoft_Maui_Platform_MauiCALayer_LayoutSublayers (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_455_Microsoft_Maui_Platform_MauiCALayer_DrawInContext (id self, SEL sel, id p0, GCHandle* exception_gchandle);
	-(void) drawInContext:(id)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_455_Microsoft_Maui_Platform_MauiCALayer_DrawInContext (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_451_Microsoft_Maui_Platform_MauiCALayer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_451_Microsoft_Maui_Platform_MauiCALayer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [CALayer class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiImageView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_469_Microsoft_Maui_Platform_MauiImageView_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_469_Microsoft_Maui_Platform_MauiImageView_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_468_Microsoft_Maui_Platform_MauiImageView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_468_Microsoft_Maui_Platform_MauiImageView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIImageView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiLabel {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_471_Microsoft_Maui_Platform_MauiLabel_DrawText (id self, SEL sel, CGRect p0, GCHandle* exception_gchandle);
	-(void) drawTextInRect:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_471_Microsoft_Maui_Platform_MauiLabel_DrawText (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_472_Microsoft_Maui_Platform_MauiLabel_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_472_Microsoft_Maui_Platform_MauiLabel_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_473_Microsoft_Maui_Platform_MauiLabel_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_473_Microsoft_Maui_Platform_MauiLabel_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_470_Microsoft_Maui_Platform_MauiLabel__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_470_Microsoft_Maui_Platform_MauiLabel__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UILabel class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiPageControl {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_475_Microsoft_Maui_Platform_MauiPageControl_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_475_Microsoft_Maui_Platform_MauiPageControl_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_476_Microsoft_Maui_Platform_MauiPageControl_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_476_Microsoft_Maui_Platform_MauiPageControl_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_474_Microsoft_Maui_Platform_MauiPageControl__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_474_Microsoft_Maui_Platform_MauiPageControl__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIPageControl class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_NoCaretField {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	CGRect callback_536_Microsoft_Maui_Platform_NoCaretField_GetCaretRectForPosition (id self, SEL sel, UITextPosition * p0, GCHandle* exception_gchandle);
	-(CGRect) caretRectForPosition:(UITextPosition *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGRect rv = { 0 };
		rv = callback_536_Microsoft_Maui_Platform_NoCaretField_GetCaretRectForPosition (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_537_Microsoft_Maui_Platform_NoCaretField_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_537_Microsoft_Maui_Platform_NoCaretField_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_535_Microsoft_Maui_Platform_NoCaretField__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_535_Microsoft_Maui_Platform_NoCaretField__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITextField class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiPicker {
}

	BOOL callback_477_Microsoft_Maui_Platform_MauiPicker_CanPerform (id self, SEL sel, SEL p0, NSObject * p1, GCHandle* exception_gchandle);
	-(BOOL) canPerformAction:(SEL)p0 withSender:(NSObject *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_477_Microsoft_Maui_Platform_MauiPicker_CanPerform (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiRefreshView {
}

	id callback_478_Microsoft_Maui_Platform_MauiRefreshView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_478_Microsoft_Maui_Platform_MauiRefreshView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Platform_MauiView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiScrollView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_480_Microsoft_Maui_Platform_MauiScrollView_AdjustedContentInsetDidChange (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) adjustedContentInsetDidChange
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_480_Microsoft_Maui_Platform_MauiScrollView_AdjustedContentInsetDidChange (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_481_Microsoft_Maui_Platform_MauiScrollView_SafeAreaInsetsDidChange (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) safeAreaInsetsDidChange
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_481_Microsoft_Maui_Platform_MauiScrollView_SafeAreaInsetsDidChange (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_482_Microsoft_Maui_Platform_MauiScrollView_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_482_Microsoft_Maui_Platform_MauiScrollView_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_483_Microsoft_Maui_Platform_MauiScrollView_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_483_Microsoft_Maui_Platform_MauiScrollView_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_484_Microsoft_Maui_Platform_MauiScrollView_ScrollRectToVisible (id self, SEL sel, CGRect p0, BOOL p1, GCHandle* exception_gchandle);
	-(void) scrollRectToVisible:(CGRect)p0 animated:(BOOL)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_484_Microsoft_Maui_Platform_MauiScrollView_ScrollRectToVisible (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_485_Microsoft_Maui_Platform_MauiScrollView_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_485_Microsoft_Maui_Platform_MauiScrollView_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_479_Microsoft_Maui_Platform_MauiScrollView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_479_Microsoft_Maui_Platform_MauiScrollView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIScrollView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiSearchBar {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	NSString * callback_487_Microsoft_Maui_Platform_MauiSearchBar_get_Text (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSString *) text
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSString * rv = { 0 };
		rv = callback_487_Microsoft_Maui_Platform_MauiSearchBar_get_Text (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_488_Microsoft_Maui_Platform_MauiSearchBar_set_Text (id self, SEL sel, NSString * p0, GCHandle* exception_gchandle);
	-(void) setText:(NSString *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_488_Microsoft_Maui_Platform_MauiSearchBar_set_Text (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_489_Microsoft_Maui_Platform_MauiSearchBar_WillMoveToWindow (id self, SEL sel, UIWindow * p0, GCHandle* exception_gchandle);
	-(void) willMoveToWindow:(UIWindow *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_489_Microsoft_Maui_Platform_MauiSearchBar_WillMoveToWindow (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_490_Microsoft_Maui_Platform_MauiSearchBar_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_490_Microsoft_Maui_Platform_MauiSearchBar_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_486_Microsoft_Maui_Platform_MauiSearchBar__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_486_Microsoft_Maui_Platform_MauiSearchBar__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UISearchBar class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiShapeView {
}

	void callback_492_Microsoft_Maui_Platform_MauiShapeView_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_492_Microsoft_Maui_Platform_MauiShapeView_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_491_Microsoft_Maui_Platform_MauiShapeView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_491_Microsoft_Maui_Platform_MauiShapeView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [PlatformGraphicsView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiTextField {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_499_Microsoft_Maui_Platform_MauiTextField_WillMoveToWindow (id self, SEL sel, UIWindow * p0, GCHandle* exception_gchandle);
	-(void) willMoveToWindow:(UIWindow *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_499_Microsoft_Maui_Platform_MauiTextField_WillMoveToWindow (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSString * callback_500_Microsoft_Maui_Platform_MauiTextField_get_Text (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSString *) text
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSString * rv = { 0 };
		rv = callback_500_Microsoft_Maui_Platform_MauiTextField_get_Text (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_501_Microsoft_Maui_Platform_MauiTextField_set_Text (id self, SEL sel, NSString * p0, GCHandle* exception_gchandle);
	-(void) setText:(NSString *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_501_Microsoft_Maui_Platform_MauiTextField_set_Text (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSAttributedString * callback_502_Microsoft_Maui_Platform_MauiTextField_get_AttributedText (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSAttributedString *) attributedText
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSAttributedString * rv = { 0 };
		rv = callback_502_Microsoft_Maui_Platform_MauiTextField_get_AttributedText (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_503_Microsoft_Maui_Platform_MauiTextField_set_AttributedText (id self, SEL sel, NSAttributedString * p0, GCHandle* exception_gchandle);
	-(void) setAttributedText:(NSAttributedString *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_503_Microsoft_Maui_Platform_MauiTextField_set_AttributedText (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UITextRange * callback_504_Microsoft_Maui_Platform_MauiTextField_get_SelectedTextRange (id self, SEL sel, GCHandle* exception_gchandle);
	-(UITextRange *) selectedTextRange
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UITextRange * rv = { 0 };
		rv = callback_504_Microsoft_Maui_Platform_MauiTextField_get_SelectedTextRange (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_505_Microsoft_Maui_Platform_MauiTextField_set_SelectedTextRange (id self, SEL sel, UITextRange * p0, GCHandle* exception_gchandle);
	-(void) setSelectedTextRange:(UITextRange *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_505_Microsoft_Maui_Platform_MauiTextField_set_SelectedTextRange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_506_Microsoft_Maui_Platform_MauiTextField_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_506_Microsoft_Maui_Platform_MauiTextField_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_498_Microsoft_Maui_Platform_MauiTextField__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_498_Microsoft_Maui_Platform_MauiTextField__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITextField class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiTextView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_508_Microsoft_Maui_Platform_MauiTextView_WillMoveToWindow (id self, SEL sel, UIWindow * p0, GCHandle* exception_gchandle);
	-(void) willMoveToWindow:(UIWindow *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_508_Microsoft_Maui_Platform_MauiTextView_WillMoveToWindow (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSString * callback_509_Microsoft_Maui_Platform_MauiTextView_get_Text (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSString *) text
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSString * rv = { 0 };
		rv = callback_509_Microsoft_Maui_Platform_MauiTextView_get_Text (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_510_Microsoft_Maui_Platform_MauiTextView_set_Text (id self, SEL sel, NSString * p0, GCHandle* exception_gchandle);
	-(void) setText:(NSString *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_510_Microsoft_Maui_Platform_MauiTextView_set_Text (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UIFont * callback_511_Microsoft_Maui_Platform_MauiTextView_get_Font (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIFont *) font
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIFont * rv = { 0 };
		rv = callback_511_Microsoft_Maui_Platform_MauiTextView_get_Font (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_512_Microsoft_Maui_Platform_MauiTextView_set_Font (id self, SEL sel, UIFont * p0, GCHandle* exception_gchandle);
	-(void) setFont:(UIFont *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_512_Microsoft_Maui_Platform_MauiTextView_set_Font (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSAttributedString * callback_513_Microsoft_Maui_Platform_MauiTextView_get_AttributedText (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSAttributedString *) attributedText
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSAttributedString * rv = { 0 };
		rv = callback_513_Microsoft_Maui_Platform_MauiTextView_get_AttributedText (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_514_Microsoft_Maui_Platform_MauiTextView_set_AttributedText (id self, SEL sel, NSAttributedString * p0, GCHandle* exception_gchandle);
	-(void) setAttributedText:(NSAttributedString *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_514_Microsoft_Maui_Platform_MauiTextView_set_AttributedText (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_515_Microsoft_Maui_Platform_MauiTextView_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_515_Microsoft_Maui_Platform_MauiTextView_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_516_Microsoft_Maui_Platform_MauiTextView_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_516_Microsoft_Maui_Platform_MauiTextView_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_507_Microsoft_Maui_Platform_MauiTextView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_507_Microsoft_Maui_Platform_MauiTextView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITextView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiWebViewNavigationDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_524_Microsoft_Maui_Platform_MauiWebViewNavigationDelegate_DidFinishNavigation (id self, SEL sel, WKWebView * p0, WKNavigation * p1, GCHandle* exception_gchandle);
	-(void) webView:(WKWebView *)p0 didFinishNavigation:(WKNavigation *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_524_Microsoft_Maui_Platform_MauiWebViewNavigationDelegate_DidFinishNavigation (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_525_Microsoft_Maui_Platform_MauiWebViewNavigationDelegate_DidFailNavigation (id self, SEL sel, WKWebView * p0, WKNavigation * p1, NSError * p2, GCHandle* exception_gchandle);
	-(void) webView:(WKWebView *)p0 didFailNavigation:(WKNavigation *)p1 withError:(NSError *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_525_Microsoft_Maui_Platform_MauiWebViewNavigationDelegate_DidFailNavigation (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_526_Microsoft_Maui_Platform_MauiWebViewNavigationDelegate_DidFailProvisionalNavigation (id self, SEL sel, WKWebView * p0, WKNavigation * p1, NSError * p2, GCHandle* exception_gchandle);
	-(void) webView:(WKWebView *)p0 didFailProvisionalNavigation:(WKNavigation *)p1 withError:(NSError *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_526_Microsoft_Maui_Platform_MauiWebViewNavigationDelegate_DidFailProvisionalNavigation (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_527_Microsoft_Maui_Platform_MauiWebViewNavigationDelegate_DecidePolicy (id self, SEL sel, WKWebView * p0, WKNavigationAction * p1, void (^p2)(void *), GCHandle* exception_gchandle);
	-(void) webView:(WKWebView *)p0 decidePolicyForNavigationAction:(WKNavigationAction *)p1 decisionHandler:(void (^)(void *))p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_527_Microsoft_Maui_Platform_MauiWebViewNavigationDelegate_DecidePolicy (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_PageViewController {
}

	BOOL callback_538_Microsoft_Maui_Platform_PageViewController_get_PrefersHomeIndicatorAutoHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) prefersHomeIndicatorAutoHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_538_Microsoft_Maui_Platform_PageViewController_get_PrefersHomeIndicatorAutoHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_539_Microsoft_Maui_Platform_PageViewController_PrefersStatusBarHidden (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) prefersStatusBarHidden
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_539_Microsoft_Maui_Platform_PageViewController_PrefersStatusBarHidden (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSInteger callback_540_Microsoft_Maui_Platform_PageViewController_get_PreferredStatusBarUpdateAnimation (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSInteger) preferredStatusBarUpdateAnimation
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSInteger rv = { 0 };
		rv = callback_540_Microsoft_Maui_Platform_PageViewController_get_PreferredStatusBarUpdateAnimation (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_541_Microsoft_Maui_Platform_PageViewController_TraitCollectionDidChange (id self, SEL sel, UITraitCollection * p0, GCHandle* exception_gchandle);
	-(void) traitCollectionDidChange:(UITraitCollection *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_541_Microsoft_Maui_Platform_PageViewController_TraitCollectionDidChange (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@interface Microsoft_Maui_Platform_SemanticSwitchContentView : Microsoft_Maui_Platform_ContentView {
}
	-(long long) accessibilityTraits;
	-(void) setAccessibilityTraits:(long long)p0;
@end

@implementation Microsoft_Maui_Platform_SemanticSwitchContentView {
}

	long long callback_548_Microsoft_Maui_Platform_SemanticSwitchContentView_get_AccessibilityTraits (id self, SEL sel, GCHandle* exception_gchandle);
	-(long long) accessibilityTraits
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		long long rv = { 0 };
		rv = callback_548_Microsoft_Maui_Platform_SemanticSwitchContentView_get_AccessibilityTraits (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_549_Microsoft_Maui_Platform_SemanticSwitchContentView_set_AccessibilityTraits (id self, SEL sel, long long p0, GCHandle* exception_gchandle);
	-(void) setAccessibilityTraits:(long long)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_549_Microsoft_Maui_Platform_SemanticSwitchContentView_set_AccessibilityTraits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@interface Microsoft_Maui_Platform_StaticCAGradientLayer : CAGradientLayer {
}
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) removeFromSuperlayer;
	-(void) addAnimation:(CAAnimation *)p0 forKey:(NSString *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Platform_StaticCAGradientLayer {
	XamarinObject __monoObjectGCHandle;
}
	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_550_Microsoft_Maui_Platform_StaticCAGradientLayer_RemoveFromSuperLayer (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) removeFromSuperlayer
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_550_Microsoft_Maui_Platform_StaticCAGradientLayer_RemoveFromSuperLayer (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_551_Microsoft_Maui_Platform_StaticCAGradientLayer_AddAnimation (id self, SEL sel, CAAnimation * p0, NSString * p1, GCHandle* exception_gchandle);
	-(void) addAnimation:(CAAnimation *)p0 forKey:(NSString *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_551_Microsoft_Maui_Platform_StaticCAGradientLayer_AddAnimation (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_552_Microsoft_Maui_Platform_StaticCAGradientLayer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_552_Microsoft_Maui_Platform_StaticCAGradientLayer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [CAGradientLayer class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Platform_StaticCALayer : CALayer {
}
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) removeFromSuperlayer;
	-(void) addAnimation:(CAAnimation *)p0 forKey:(NSString *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Platform_StaticCALayer {
	XamarinObject __monoObjectGCHandle;
}
	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_553_Microsoft_Maui_Platform_StaticCALayer_RemoveFromSuperLayer (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) removeFromSuperlayer
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_553_Microsoft_Maui_Platform_StaticCALayer_RemoveFromSuperLayer (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_554_Microsoft_Maui_Platform_StaticCALayer_AddAnimation (id self, SEL sel, CAAnimation * p0, NSString * p1, GCHandle* exception_gchandle);
	-(void) addAnimation:(CAAnimation *)p0 forKey:(NSString *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_554_Microsoft_Maui_Platform_StaticCALayer_AddAnimation (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_555_Microsoft_Maui_Platform_StaticCALayer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_555_Microsoft_Maui_Platform_StaticCALayer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [CALayer class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Platform_StaticCAShapeLayer : CAShapeLayer {
}
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) removeFromSuperlayer;
	-(void) addAnimation:(CAAnimation *)p0 forKey:(NSString *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Platform_StaticCAShapeLayer {
	XamarinObject __monoObjectGCHandle;
}
	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_556_Microsoft_Maui_Platform_StaticCAShapeLayer_RemoveFromSuperLayer (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) removeFromSuperlayer
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_556_Microsoft_Maui_Platform_StaticCAShapeLayer_RemoveFromSuperLayer (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_557_Microsoft_Maui_Platform_StaticCAShapeLayer_AddAnimation (id self, SEL sel, CAAnimation * p0, NSString * p1, GCHandle* exception_gchandle);
	-(void) addAnimation:(CAAnimation *)p0 forKey:(NSString *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_557_Microsoft_Maui_Platform_StaticCAShapeLayer_AddAnimation (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_558_Microsoft_Maui_Platform_StaticCAShapeLayer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_558_Microsoft_Maui_Platform_StaticCAShapeLayer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [CAShapeLayer class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_WrapperView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_560_Microsoft_Maui_Platform_WrapperView_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_560_Microsoft_Maui_Platform_WrapperView_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_561_Microsoft_Maui_Platform_WrapperView_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_561_Microsoft_Maui_Platform_WrapperView_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_562_Microsoft_Maui_Platform_WrapperView_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_562_Microsoft_Maui_Platform_WrapperView_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_559_Microsoft_Maui_Platform_WrapperView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_559_Microsoft_Maui_Platform_WrapperView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UIPickerViewModel {
}

	id callback_1316_UIKit_UIPickerViewModel__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1316_UIKit_UIPickerViewModel__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@implementation Microsoft_Maui_Handlers_PickerSource {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void * callback_566_Microsoft_Maui_Handlers_PickerSource_GetComponentCount (id self, SEL sel, UIPickerView * p0, GCHandle* exception_gchandle);
	-(void *) numberOfComponentsInPickerView:(UIPickerView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_566_Microsoft_Maui_Handlers_PickerSource_GetComponentCount (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void * callback_567_Microsoft_Maui_Handlers_PickerSource_GetRowsInComponent (id self, SEL sel, UIPickerView * p0, void * p1, GCHandle* exception_gchandle);
	-(void *) pickerView:(UIPickerView *)p0 numberOfRowsInComponent:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_567_Microsoft_Maui_Handlers_PickerSource_GetRowsInComponent (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSString * callback_568_Microsoft_Maui_Handlers_PickerSource_GetTitle (id self, SEL sel, UIPickerView * p0, void * p1, void * p2, GCHandle* exception_gchandle);
	-(NSString *) pickerView:(UIPickerView *)p0 titleForRow:(void *)p1 forComponent:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSString * rv = { 0 };
		rv = callback_568_Microsoft_Maui_Handlers_PickerSource_GetTitle (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_569_Microsoft_Maui_Handlers_PickerSource_Selected (id self, SEL sel, UIPickerView * p0, void * p1, void * p2, GCHandle* exception_gchandle);
	-(void) pickerView:(UIPickerView *)p0 didSelectRow:(void *)p1 inComponent:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_569_Microsoft_Maui_Handlers_PickerSource_Selected (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Handlers_SwipeItemButton {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	CGRect callback_570_Microsoft_Maui_Handlers_SwipeItemButton_get_Frame (id self, SEL sel, GCHandle* exception_gchandle);
	-(CGRect) frame
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGRect rv = { 0 };
		rv = callback_570_Microsoft_Maui_Handlers_SwipeItemButton_get_Frame (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_571_Microsoft_Maui_Handlers_SwipeItemButton_set_Frame (id self, SEL sel, CGRect p0, GCHandle* exception_gchandle);
	-(void) setFrame:(CGRect)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_571_Microsoft_Maui_Handlers_SwipeItemButton_set_Frame (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_572_Microsoft_Maui_Handlers_SwipeItemButton__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_572_Microsoft_Maui_Handlers_SwipeItemButton__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIButton class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_MauiUISceneDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UIWindow * callback_410_Microsoft_Maui_MauiUISceneDelegate_get_Window (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIWindow *) window
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIWindow * rv = { 0 };
		rv = callback_410_Microsoft_Maui_MauiUISceneDelegate_get_Window (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_411_Microsoft_Maui_MauiUISceneDelegate_set_Window (id self, SEL sel, UIWindow * p0, GCHandle* exception_gchandle);
	-(void) setWindow:(UIWindow *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_411_Microsoft_Maui_MauiUISceneDelegate_set_Window (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_412_Microsoft_Maui_MauiUISceneDelegate_WillConnect (id self, SEL sel, UIScene * p0, UISceneSession * p1, UISceneConnectionOptions * p2, GCHandle* exception_gchandle);
	-(void) scene:(UIScene *)p0 willConnectToSession:(UISceneSession *)p1 options:(UISceneConnectionOptions *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_412_Microsoft_Maui_MauiUISceneDelegate_WillConnect (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_413_Microsoft_Maui_MauiUISceneDelegate_DidDisconnect (id self, SEL sel, UIScene * p0, GCHandle* exception_gchandle);
	-(void) sceneDidDisconnect:(UIScene *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_413_Microsoft_Maui_MauiUISceneDelegate_DidDisconnect (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSUserActivity * callback_414_Microsoft_Maui_MauiUISceneDelegate_GetStateRestorationActivity (id self, SEL sel, UIScene * p0, GCHandle* exception_gchandle);
	-(NSUserActivity *) stateRestorationActivityForScene:(UIScene *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSUserActivity * rv = { 0 };
		rv = callback_414_Microsoft_Maui_MauiUISceneDelegate_GetStateRestorationActivity (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_415_Microsoft_Maui_MauiUISceneDelegate_WillEnterForeground (id self, SEL sel, UIScene * p0, GCHandle* exception_gchandle);
	-(void) sceneWillEnterForeground:(UIScene *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_415_Microsoft_Maui_MauiUISceneDelegate_WillEnterForeground (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_416_Microsoft_Maui_MauiUISceneDelegate_OnActivated (id self, SEL sel, UIScene * p0, GCHandle* exception_gchandle);
	-(void) sceneDidBecomeActive:(UIScene *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_416_Microsoft_Maui_MauiUISceneDelegate_OnActivated (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_417_Microsoft_Maui_MauiUISceneDelegate_OnResignActivation (id self, SEL sel, UIScene * p0, GCHandle* exception_gchandle);
	-(void) sceneWillResignActive:(UIScene *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_417_Microsoft_Maui_MauiUISceneDelegate_OnResignActivation (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_418_Microsoft_Maui_MauiUISceneDelegate_DidEnterBackground (id self, SEL sel, UIScene * p0, GCHandle* exception_gchandle);
	-(void) sceneDidEnterBackground:(UIScene *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_418_Microsoft_Maui_MauiUISceneDelegate_DidEnterBackground (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_419_Microsoft_Maui_MauiUISceneDelegate_OpenUrl (id self, SEL sel, UIScene * p0, NSSet <UIOpenURLContext *>* p1, GCHandle* exception_gchandle);
	-(BOOL) scene:(UIScene *)p0 openURLContexts:(NSSet <UIOpenURLContext *>*)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_419_Microsoft_Maui_MauiUISceneDelegate_OpenUrl (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_420_Microsoft_Maui_MauiUISceneDelegate_ContinueUserActivity (id self, SEL sel, UIScene * p0, NSUserActivity * p1, GCHandle* exception_gchandle);
	-(BOOL) scene:(UIScene *)p0 continueUserActivity:(NSUserActivity *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_420_Microsoft_Maui_MauiUISceneDelegate_ContinueUserActivity (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_421_Microsoft_Maui_MauiUISceneDelegate_WillContinueUserActivity (id self, SEL sel, UIScene * p0, NSString * p1, GCHandle* exception_gchandle);
	-(void) scene:(UIScene *)p0 willContinueUserActivityWithType:(NSString *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_421_Microsoft_Maui_MauiUISceneDelegate_WillContinueUserActivity (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_422_Microsoft_Maui_MauiUISceneDelegate_DidFailToContinueUserActivity (id self, SEL sel, UIScene * p0, NSString * p1, NSError * p2, GCHandle* exception_gchandle);
	-(void) scene:(UIScene *)p0 didFailToContinueUserActivityWithType:(NSString *)p1 error:(NSError *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_422_Microsoft_Maui_MauiUISceneDelegate_DidFailToContinueUserActivity (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_423_Microsoft_Maui_MauiUISceneDelegate_DidUpdateUserActivity (id self, SEL sel, UIScene * p0, NSUserActivity * p1, GCHandle* exception_gchandle);
	-(void) scene:(UIScene *)p0 didUpdateUserActivity:(NSUserActivity *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_423_Microsoft_Maui_MauiUISceneDelegate_DidUpdateUserActivity (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_424_Microsoft_Maui_MauiUISceneDelegate_RestoreInteractionState (id self, SEL sel, UIScene * p0, NSUserActivity * p1, GCHandle* exception_gchandle);
	-(void) scene:(UIScene *)p0 restoreInteractionStateWithUserActivity:(NSUserActivity *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_424_Microsoft_Maui_MauiUISceneDelegate_RestoreInteractionState (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_425_Microsoft_Maui_MauiUISceneDelegate_DidUpdateCoordinateSpace (id self, SEL sel, UIWindowScene * p0, id p1, NSInteger p2, UITraitCollection * p3, GCHandle* exception_gchandle);
	-(void) windowScene:(UIWindowScene *)p0 didUpdateCoordinateSpace:(id)p1 interfaceOrientation:(NSInteger)p2 traitCollection:(UITraitCollection *)p3
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_425_Microsoft_Maui_MauiUISceneDelegate_DidUpdateCoordinateSpace (self, _cmd, p0, p1, p2, p3, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_426_Microsoft_Maui_MauiUISceneDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_426_Microsoft_Maui_MauiUISceneDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIResponder class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_WindowOverlay_OverlayGraphicsView : PlatformGraphicsView {
}
	-(BOOL) isTransparentFocusItem;
@end

@implementation Microsoft_Maui_WindowOverlay_OverlayGraphicsView {
}

	BOOL callback_427_Microsoft_Maui_WindowOverlay_OverlayGraphicsView_get_IsTransparentFocusItem (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) isTransparentFocusItem
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_427_Microsoft_Maui_WindowOverlay_OverlayGraphicsView_get_IsTransparentFocusItem (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiCheckBox {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_457_Microsoft_Maui_Platform_MauiCheckBox_get_Enabled (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) isEnabled
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_457_Microsoft_Maui_Platform_MauiCheckBox_get_Enabled (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_458_Microsoft_Maui_Platform_MauiCheckBox_set_Enabled (id self, SEL sel, BOOL p0, GCHandle* exception_gchandle);
	-(void) setEnabled:(BOOL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_458_Microsoft_Maui_Platform_MauiCheckBox_set_Enabled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	CGSize callback_459_Microsoft_Maui_Platform_MauiCheckBox_SizeThatFits (id self, SEL sel, CGSize p0, GCHandle* exception_gchandle);
	-(CGSize) sizeThatFits:(CGSize)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		CGSize rv = { 0 };
		rv = callback_459_Microsoft_Maui_Platform_MauiCheckBox_SizeThatFits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_460_Microsoft_Maui_Platform_MauiCheckBox_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_460_Microsoft_Maui_Platform_MauiCheckBox_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	long long callback_461_Microsoft_Maui_Platform_MauiCheckBox_get_AccessibilityTraits (id self, SEL sel, GCHandle* exception_gchandle);
	-(long long) accessibilityTraits
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		long long rv = { 0 };
		rv = callback_461_Microsoft_Maui_Platform_MauiCheckBox_get_AccessibilityTraits (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_462_Microsoft_Maui_Platform_MauiCheckBox_set_AccessibilityTraits (id self, SEL sel, long long p0, GCHandle* exception_gchandle);
	-(void) setAccessibilityTraits:(long long)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_462_Microsoft_Maui_Platform_MauiCheckBox_set_AccessibilityTraits (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	NSString * callback_463_Microsoft_Maui_Platform_MauiCheckBox_get_AccessibilityValue (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSString *) accessibilityValue
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSString * rv = { 0 };
		rv = callback_463_Microsoft_Maui_Platform_MauiCheckBox_get_AccessibilityValue (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_464_Microsoft_Maui_Platform_MauiCheckBox_set_AccessibilityValue (id self, SEL sel, NSString * p0, GCHandle* exception_gchandle);
	-(void) setAccessibilityValue:(NSString *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_464_Microsoft_Maui_Platform_MauiCheckBox_set_AccessibilityValue (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_465_Microsoft_Maui_Platform_MauiCheckBox_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_465_Microsoft_Maui_Platform_MauiCheckBox_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_456_Microsoft_Maui_Platform_MauiCheckBox__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_456_Microsoft_Maui_Platform_MauiCheckBox__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIButton class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiDatePicker {
}

	id callback_466_Microsoft_Maui_Platform_MauiDatePicker__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_466_Microsoft_Maui_Platform_MauiDatePicker__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Platform_NoCaretField class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Platform_MauiDoneAccessoryView : UIToolbar {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Platform_MauiDoneAccessoryView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_467_Microsoft_Maui_Platform_MauiDoneAccessoryView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_467_Microsoft_Maui_Platform_MauiDoneAccessoryView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIToolbar class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiHybridWebView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiSwipeView {
}

	void callback_494_Microsoft_Maui_Platform_MauiSwipeView_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_494_Microsoft_Maui_Platform_MauiSwipeView_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_495_Microsoft_Maui_Platform_MauiSwipeView_TouchesEnded (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesEnded:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_495_Microsoft_Maui_Platform_MauiSwipeView_TouchesEnded (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_496_Microsoft_Maui_Platform_MauiSwipeView_TouchesCancelled (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesCancelled:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_496_Microsoft_Maui_Platform_MauiSwipeView_TouchesCancelled (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	UIView * callback_497_Microsoft_Maui_Platform_MauiSwipeView_HitTest (id self, SEL sel, CGPoint p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(UIView *) hitTest:(CGPoint)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIView * rv = { 0 };
		rv = callback_497_Microsoft_Maui_Platform_MauiSwipeView_HitTest (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_493_Microsoft_Maui_Platform_MauiSwipeView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_493_Microsoft_Maui_Platform_MauiSwipeView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Microsoft_Maui_Platform_ContentView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiTimePicker {
}
@end

@interface Microsoft_Maui_Platform_MauiUIContextMenuInteraction_FlyoutUIContextMenuInteractionDelegate : NSObject<UIContextMenuInteractionDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(UIContextMenuConfiguration *) contextMenuInteraction:(UIContextMenuInteraction *)p0 configurationForMenuAtLocation:(CGPoint)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Platform_MauiUIContextMenuInteraction_FlyoutUIContextMenuInteractionDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UIContextMenuConfiguration * callback_518_Microsoft_Maui_Platform_MauiUIContextMenuInteraction_FlyoutUIContextMenuInteractionDelegate_GetConfigurationForMenu (id self, SEL sel, UIContextMenuInteraction * p0, CGPoint p1, GCHandle* exception_gchandle);
	-(UIContextMenuConfiguration *) contextMenuInteraction:(UIContextMenuInteraction *)p0 configurationForMenuAtLocation:(CGPoint)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIContextMenuConfiguration * rv = { 0 };
		rv = callback_518_Microsoft_Maui_Platform_MauiUIContextMenuInteraction_FlyoutUIContextMenuInteractionDelegate_GetConfigurationForMenu (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_517_Microsoft_Maui_Platform_MauiUIContextMenuInteraction_FlyoutUIContextMenuInteractionDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_517_Microsoft_Maui_Platform_MauiUIContextMenuInteraction_FlyoutUIContextMenuInteractionDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Platform_MauiUIContextMenuInteraction : UIContextMenuInteraction {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Platform_MauiUIContextMenuInteraction {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__WebKit_WKUIDelegate {
}

	id callback_962_WebKit_WKUIDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_962_WebKit_WKUIDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@implementation Microsoft_Maui_Platform_MauiWebViewUIDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_528_Microsoft_Maui_Platform_MauiWebViewUIDelegate_SetContextMenuConfiguration (id self, SEL sel, WKWebView * p0, WKContextMenuElementInfo * p1, void (^p2)(void *), GCHandle* exception_gchandle);
	-(void) webView:(WKWebView *)p0 contextMenuConfigurationForElement:(WKContextMenuElementInfo *)p1 completionHandler:(void (^)(void *))p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_528_Microsoft_Maui_Platform_MauiWebViewUIDelegate_SetContextMenuConfiguration (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_529_Microsoft_Maui_Platform_MauiWebViewUIDelegate_RunJavaScriptAlertPanel (id self, SEL sel, WKWebView * p0, NSString * p1, WKFrameInfo * p2, void (^p3)(), GCHandle* exception_gchandle);
	-(void) webView:(WKWebView *)p0 runJavaScriptAlertPanelWithMessage:(NSString *)p1 initiatedByFrame:(WKFrameInfo *)p2 completionHandler:(void (^)())p3
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_529_Microsoft_Maui_Platform_MauiWebViewUIDelegate_RunJavaScriptAlertPanel (self, _cmd, p0, p1, p2, p3, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_530_Microsoft_Maui_Platform_MauiWebViewUIDelegate_RunJavaScriptConfirmPanel (id self, SEL sel, WKWebView * p0, NSString * p1, WKFrameInfo * p2, void (^p3)(void *), GCHandle* exception_gchandle);
	-(void) webView:(WKWebView *)p0 runJavaScriptConfirmPanelWithMessage:(NSString *)p1 initiatedByFrame:(WKFrameInfo *)p2 completionHandler:(void (^)(void *))p3
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_530_Microsoft_Maui_Platform_MauiWebViewUIDelegate_RunJavaScriptConfirmPanel (self, _cmd, p0, p1, p2, p3, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_531_Microsoft_Maui_Platform_MauiWebViewUIDelegate_RunJavaScriptTextInputPanel (id self, SEL sel, WKWebView * p0, NSString * p1, NSString * p2, WKFrameInfo * p3, void (^p4)(void *), GCHandle* exception_gchandle);
	-(void) webView:(WKWebView *)p0 runJavaScriptTextInputPanelWithPrompt:(NSString *)p1 defaultText:(NSString *)p2 initiatedByFrame:(WKFrameInfo *)p3 completionHandler:(void (^)(void *))p4
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_531_Microsoft_Maui_Platform_MauiWebViewUIDelegate_RunJavaScriptTextInputPanel (self, _cmd, p0, p1, p2, p3, p4, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_MauiWKWebView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_532_Microsoft_Maui_Platform_MauiWKWebView_MovedToWindow (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) didMoveToWindow
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_532_Microsoft_Maui_Platform_MauiWKWebView_MovedToWindow (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_533_Microsoft_Maui_Platform_MauiWKWebView_ContentProcessDidTerminate (id self, SEL sel, WKWebView * p0, GCHandle* exception_gchandle);
	-(void) webViewWebContentProcessDidTerminate:(WKWebView *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_533_Microsoft_Maui_Platform_MauiWKWebView_ContentProcessDidTerminate (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation Microsoft_Maui_Platform_PlatformTouchGraphicsView {
}

	void callback_543_Microsoft_Maui_Platform_PlatformTouchGraphicsView_LayoutSubviews (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) layoutSubviews
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_543_Microsoft_Maui_Platform_PlatformTouchGraphicsView_LayoutSubviews (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_544_Microsoft_Maui_Platform_PlatformTouchGraphicsView_TouchesBegan (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesBegan:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_544_Microsoft_Maui_Platform_PlatformTouchGraphicsView_TouchesBegan (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_545_Microsoft_Maui_Platform_PlatformTouchGraphicsView_TouchesMoved (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesMoved:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_545_Microsoft_Maui_Platform_PlatformTouchGraphicsView_TouchesMoved (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_546_Microsoft_Maui_Platform_PlatformTouchGraphicsView_TouchesEnded (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesEnded:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_546_Microsoft_Maui_Platform_PlatformTouchGraphicsView_TouchesEnded (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_547_Microsoft_Maui_Platform_PlatformTouchGraphicsView_TouchesCancelled (id self, SEL sel, NSSet * p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(void) touchesCancelled:(NSSet *)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_547_Microsoft_Maui_Platform_PlatformTouchGraphicsView_TouchesCancelled (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_542_Microsoft_Maui_Platform_PlatformTouchGraphicsView__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_542_Microsoft_Maui_Platform_PlatformTouchGraphicsView__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [PlatformGraphicsView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Handlers_HybridWebViewHandler_WebViewScriptMessageHandler : NSObject<WKScriptMessageHandler> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) userContentController:(WKUserContentController *)p0 didReceiveScriptMessage:(WKScriptMessage *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Handlers_HybridWebViewHandler_WebViewScriptMessageHandler {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_563_Microsoft_Maui_Handlers_HybridWebViewHandler_WebViewScriptMessageHandler_DidReceiveScriptMessage (id self, SEL sel, WKUserContentController * p0, WKScriptMessage * p1, GCHandle* exception_gchandle);
	-(void) userContentController:(WKUserContentController *)p0 didReceiveScriptMessage:(WKScriptMessage *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_563_Microsoft_Maui_Handlers_HybridWebViewHandler_WebViewScriptMessageHandler_DidReceiveScriptMessage (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_WindowOverlay_PassthroughView : UIView {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) pointInside:(CGPoint)p0 withEvent:(UIEvent *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_WindowOverlay_PassthroughView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_428_Microsoft_Maui_WindowOverlay_PassthroughView_PointInside (id self, SEL sel, CGPoint p0, UIEvent * p1, GCHandle* exception_gchandle);
	-(BOOL) pointInside:(CGPoint)p0 withEvent:(UIEvent *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_428_Microsoft_Maui_WindowOverlay_PassthroughView_PointInside (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Handlers_HybridWebViewHandler_SchemeHandler : NSObject<WKURLSchemeHandler> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) webView:(WKWebView *)p0 startURLSchemeTask:(id)p1;
	-(void) webView:(WKWebView *)p0 stopURLSchemeTask:(id)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Handlers_HybridWebViewHandler_SchemeHandler {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_564_Microsoft_Maui_Handlers_HybridWebViewHandler_SchemeHandler_StartUrlSchemeTask (id self, SEL sel, WKWebView * p0, id p1, GCHandle* exception_gchandle);
	-(void) webView:(WKWebView *)p0 startURLSchemeTask:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_564_Microsoft_Maui_Handlers_HybridWebViewHandler_SchemeHandler_StartUrlSchemeTask (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_565_Microsoft_Maui_Handlers_HybridWebViewHandler_SchemeHandler_StopUrlSchemeTask (id self, SEL sel, WKWebView * p0, id p1, GCHandle* exception_gchandle);
	-(void) webView:(WKWebView *)p0 stopURLSchemeTask:(id)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_565_Microsoft_Maui_Handlers_HybridWebViewHandler_SchemeHandler_StopUrlSchemeTask (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_Authentication_AuthManager : NSObject<ASAuthorizationControllerDelegate, ASAuthorizationControllerPresentationContextProviding> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(UIWindow *) presentationAnchorForAuthorizationController:(ASAuthorizationController *)p0;
	-(void) authorizationController:(ASAuthorizationController *)p0 didCompleteWithAuthorization:(ASAuthorization *)p1;
	-(void) authorizationController:(ASAuthorizationController *)p0 didCompleteWithError:(NSError *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Authentication_AuthManager {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UIWindow * callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor (id self, SEL sel, ASAuthorizationController * p0, GCHandle* exception_gchandle);
	-(UIWindow *) presentationAnchorForAuthorizationController:(ASAuthorizationController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIWindow * rv = { 0 };
		rv = callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete (id self, SEL sel, ASAuthorizationController * p0, ASAuthorization * p1, GCHandle* exception_gchandle);
	-(void) authorizationController:(ASAuthorizationController *)p0 didCompleteWithAuthorization:(ASAuthorization *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete (id self, SEL sel, ASAuthorizationController * p0, NSError * p1, GCHandle* exception_gchandle);
	-(void) authorizationController:(ASAuthorizationController *)p0 didCompleteWithError:(NSError *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__PhotosUI_PHPickerViewControllerDelegate {
}

	id callback_635_PhotosUI_PHPickerViewControllerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_635_PhotosUI_PHPickerViewControllerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Microsoft_Maui_Media_PhotoPickerDelegate : NSObject<PHPickerViewControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) picker:(PHPickerViewController *)p0 didFinishPicking:(NSArray *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Media_PhotoPickerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking (id self, SEL sel, PHPickerViewController * p0, NSArray * p1, GCHandle* exception_gchandle);
	-(void) picker:(PHPickerViewController *)p0 didFinishPicking:(NSArray *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UIAdaptivePresentationControllerDelegate {
}

	id callback_1220_UIKit_UIAdaptivePresentationControllerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1220_UIKit_UIAdaptivePresentationControllerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate : NSObject<UIAdaptivePresentationControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) presentationControllerDidDismiss:(UIPresentationController *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss (id self, SEL sel, UIPresentationController * p0, GCHandle* exception_gchandle);
	-(void) presentationControllerDidDismiss:(UIPresentationController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate : NSObject<UIAdaptivePresentationControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) presentationControllerDidDismiss:(UIPresentationController *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss (id self, SEL sel, UIPresentationController * p0, GCHandle* exception_gchandle);
	-(void) presentationControllerDidDismiss:(UIPresentationController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UIActivityItemSource {
}

	id callback_1219_UIKit_UIActivityItemSource__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1219_UIKit_UIActivityItemSource__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource : NSObject<UIActivityItemSource> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(NSObject *) activityViewController:(UIActivityViewController *)p0 itemForActivityType:(NSString *)p1;
	-(NSObject *) activityViewControllerPlaceholderItem:(UIActivityViewController *)p0;
	-(LPLinkMetadata *) activityViewControllerLinkMetadata:(UIActivityViewController *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	NSObject * callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity (id self, SEL sel, UIActivityViewController * p0, NSString * p1, GCHandle* exception_gchandle);
	-(NSObject *) activityViewController:(UIActivityViewController *)p0 itemForActivityType:(NSString *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSObject * rv = { 0 };
		rv = callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSObject * callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData (id self, SEL sel, UIActivityViewController * p0, GCHandle* exception_gchandle);
	-(NSObject *) activityViewControllerPlaceholderItem:(UIActivityViewController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSObject * rv = { 0 };
		rv = callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	LPLinkMetadata * callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata (id self, SEL sel, UIActivityViewController * p0, GCHandle* exception_gchandle);
	-(LPLinkMetadata *) activityViewControllerLinkMetadata:(UIActivityViewController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		LPLinkMetadata * rv = { 0 };
		rv = callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__CoreLocation_CLLocationManagerDelegate {
}

	id callback_1579_CoreLocation_CLLocationManagerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1579_CoreLocation_CLLocationManagerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Microsoft_Maui_Devices_Sensors_SingleLocationListener : NSObject<CLLocationManagerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) locationManager:(CLLocationManager *)p0 didUpdateLocations:(NSArray *)p1;
	-(BOOL) locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Devices_Sensors_SingleLocationListener {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated (id self, SEL sel, CLLocationManager * p0, NSArray * p1, GCHandle* exception_gchandle);
	-(void) locationManager:(CLLocationManager *)p0 didUpdateLocations:(NSArray *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration (id self, SEL sel, CLLocationManager * p0, GCHandle* exception_gchandle);
	-(BOOL) locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Devices_Sensors_ContinuousLocationListener : NSObject<CLLocationManagerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) locationManager:(CLLocationManager *)p0 didUpdateLocations:(NSArray *)p1;
	-(void) locationManager:(CLLocationManager *)p0 didFailWithError:(NSError *)p1;
	-(void) locationManager:(CLLocationManager *)p0 didChangeAuthorizationStatus:(unsigned int)p1;
	-(BOOL) locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Devices_Sensors_ContinuousLocationListener {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated (id self, SEL sel, CLLocationManager * p0, NSArray * p1, GCHandle* exception_gchandle);
	-(void) locationManager:(CLLocationManager *)p0 didUpdateLocations:(NSArray *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed (id self, SEL sel, CLLocationManager * p0, NSError * p1, GCHandle* exception_gchandle);
	-(void) locationManager:(CLLocationManager *)p0 didFailWithError:(NSError *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged (id self, SEL sel, CLLocationManager * p0, unsigned int p1, GCHandle* exception_gchandle);
	-(void) locationManager:(CLLocationManager *)p0 didChangeAuthorizationStatus:(unsigned int)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration (id self, SEL sel, CLLocationManager * p0, GCHandle* exception_gchandle);
	-(BOOL) locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__SafariServices_SFSafariViewControllerDelegate {
}

	id callback_619_SafariServices_SFSafariViewControllerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_619_SafariServices_SFSafariViewControllerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate : NSObject<SFSafariViewControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) safariViewControllerDidFinish:(SFSafariViewController *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish (id self, SEL sel, SFSafariViewController * p0, GCHandle* exception_gchandle);
	-(void) safariViewControllerDidFinish:(SFSafariViewController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider : NSObject<ASWebAuthenticationPresentationContextProviding> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(UIWindow *) presentationAnchorForWebAuthenticationSession:(ASWebAuthenticationSession *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UIWindow * callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor (id self, SEL sel, ASWebAuthenticationSession * p0, GCHandle* exception_gchandle);
	-(UIWindow *) presentationAnchorForWebAuthenticationSession:(ASWebAuthenticationSession *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIWindow * rv = { 0 };
		rv = callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UIImagePickerControllerDelegate {
}

	id callback_1281_UIKit_UIImagePickerControllerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1281_UIKit_UIImagePickerControllerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate : NSObject<UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingMediaWithInfo:(NSDictionary *)p1;
	-(void) imagePickerControllerDidCancel:(UIImagePickerController *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia (id self, SEL sel, UIImagePickerController * p0, NSDictionary * p1, GCHandle* exception_gchandle);
	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingMediaWithInfo:(NSDictionary *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled (id self, SEL sel, UIImagePickerController * p0, GCHandle* exception_gchandle);
	-(void) imagePickerControllerDidCancel:(UIImagePickerController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UIDocumentPickerDelegate {
}

	id callback_1268_UIKit_UIDocumentPickerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1268_UIKit_UIDocumentPickerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate : NSObject<UIDocumentPickerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) documentPickerWasCancelled:(UIDocumentPickerViewController *)p0;
	-(void) documentPicker:(UIDocumentPickerViewController *)p0 didPickDocumentsAtURLs:(NSArray *)p1;
	-(void) documentPicker:(UIDocumentPickerViewController *)p0 didPickDocumentAtURL:(NSURL *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled (id self, SEL sel, UIDocumentPickerViewController * p0, GCHandle* exception_gchandle);
	-(void) documentPickerWasCancelled:(UIDocumentPickerViewController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument (id self, SEL sel, UIDocumentPickerViewController * p0, NSArray * p1, GCHandle* exception_gchandle);
	-(void) documentPicker:(UIDocumentPickerViewController *)p0 didPickDocumentsAtURLs:(NSArray *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument (id self, SEL sel, UIDocumentPickerViewController * p0, NSURL * p1, GCHandle* exception_gchandle);
	-(void) documentPicker:(UIDocumentPickerViewController *)p0 didPickDocumentAtURL:(NSURL *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__ContactsUI_CNContactPickerDelegate {
}

	id callback_657_ContactsUI_CNContactPickerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_657_ContactsUI_CNContactPickerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate : NSObject<CNContactPickerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) contactPickerDidCancel:(CNContactPickerViewController *)p0;
	-(void) contactPicker:(CNContactPickerViewController *)p0 didSelectContact:(CNContact *)p1;
	-(void) contactPicker:(CNContactPickerViewController *)p0 didSelectContactProperty:(CNContactProperty *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel (id self, SEL sel, CNContactPickerViewController * p0, GCHandle* exception_gchandle);
	-(void) contactPickerDidCancel:(CNContactPickerViewController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact (id self, SEL sel, CNContactPickerViewController * p0, CNContact * p1, GCHandle* exception_gchandle);
	-(void) contactPicker:(CNContactPickerViewController *)p0 didSelectContact:(CNContact *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty (id self, SEL sel, CNContactPickerViewController * p0, CNContactProperty * p1, GCHandle* exception_gchandle);
	-(void) contactPicker:(CNContactPickerViewController *)p0 didSelectContactProperty:(CNContactProperty *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate : NSObject<CLLocationManagerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) locationManager:(CLLocationManager *)p0 didChangeAuthorizationStatus:(unsigned int)p1;
	-(void) locationManagerDidChangeAuthorization:(CLLocationManager *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged (id self, SEL sel, CLLocationManager * p0, unsigned int p1, GCHandle* exception_gchandle);
	-(void) locationManager:(CLLocationManager *)p0 didChangeAuthorizationStatus:(unsigned int)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization (id self, SEL sel, CLLocationManager * p0, GCHandle* exception_gchandle);
	-(void) locationManagerDidChangeAuthorization:(CLLocationManager *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UIControlEventProxy : NSObject {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) BridgeSelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation UIKit_UIControlEventProxy {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_1012_UIKit_UIControlEventProxy_Activated (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) BridgeSelector
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_1012_UIKit_UIControlEventProxy_Activated (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__UIKit_UISearchResultsUpdating {
}

	id callback_1373_UIKit_UISearchResultsUpdating__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1373_UIKit_UISearchResultsUpdating__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface Foundation_NSDispatcher : NSObject {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Foundation_NSDispatcher {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_3668_Foundation_NSDispatcher_Apply (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) xamarinApplySelector
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3668_Foundation_NSDispatcher_Apply (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_3667_Foundation_NSDispatcher__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_3667_Foundation_NSDispatcher__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __MonoMac_NSActionDispatcher : Foundation_NSDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSActionDispatcher {
}

	void callback_3669_Foundation_NSActionDispatcher_Apply (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) xamarinApplySelector
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3669_Foundation_NSActionDispatcher_Apply (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@interface __MonoMac_NSSynchronizationContextDispatcher : Foundation_NSDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSSynchronizationContextDispatcher {
}

	void callback_3670_Foundation_NSSynchronizationContextDispatcher_Apply (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) xamarinApplySelector
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3670_Foundation_NSSynchronizationContextDispatcher_Apply (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@interface Foundation_NSAsyncDispatcher : Foundation_NSDispatcher {
}
	-(void) xamarinApplySelector;
	-(id) init;
@end

@implementation Foundation_NSAsyncDispatcher {
}

	void callback_3673_Foundation_NSAsyncDispatcher_Apply (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) xamarinApplySelector
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3673_Foundation_NSAsyncDispatcher_Apply (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	id callback_3672_Foundation_NSAsyncDispatcher__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_3672_Foundation_NSAsyncDispatcher__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Foundation_NSDispatcher class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __MonoMac_NSAsyncActionDispatcher : Foundation_NSAsyncDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSAsyncActionDispatcher {
}

	void callback_3674_Foundation_NSAsyncActionDispatcher_Apply (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) xamarinApplySelector
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3674_Foundation_NSAsyncActionDispatcher_Apply (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@interface __MonoMac_NSAsyncSynchronizationContextDispatcher : Foundation_NSAsyncDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSAsyncSynchronizationContextDispatcher {
}

	void callback_3675_Foundation_NSAsyncSynchronizationContextDispatcher_Apply (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) xamarinApplySelector
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3675_Foundation_NSAsyncSynchronizationContextDispatcher_Apply (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation Foundation_NSExceptionError {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface Foundation_InternalNSNotificationHandler : NSObject {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) post:(NSNotification *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation Foundation_InternalNSNotificationHandler {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_3699_Foundation_InternalNSNotificationHandler_Post (id self, SEL sel, NSNotification * p0, GCHandle* exception_gchandle);
	-(void) post:(NSNotification *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3699_Foundation_InternalNSNotificationHandler_Post (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__Foundation_NSUrlSessionDelegate {
}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__Foundation_NSUrlSessionTaskDelegate {
}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__Foundation_NSUrlSessionDataDelegate {
}

	id callback_3736_Foundation_NSUrlSessionDataDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_3736_Foundation_NSUrlSessionDataDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation Microsoft_iOS__CoreAnimation_CALayerDelegate {
}
@end
#pragma clang diagnostic pop

@implementation UIKit_UIView_UIViewAppearance {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	UIColor * callback_1196_UIKit_UIView_UIViewAppearance_get_BackgroundColor (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIColor *) backgroundColor
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIColor * rv = { 0 };
		rv = callback_1196_UIKit_UIView_UIViewAppearance_get_BackgroundColor (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UIColor * callback_1198_UIKit_UIView_UIViewAppearance_get_TintColor (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIColor *) tintColor
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIColor * rv = { 0 };
		rv = callback_1198_UIKit_UIView_UIViewAppearance_get_TintColor (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation UIKit_UIScrollView_UIScrollViewAppearance {
}
@end

@implementation UIKit_UIControl_UIControlAppearance {
}
@end

@implementation UIKit_UIButton_UIButtonAppearance {
}

	UIImage * callback_997_UIKit_UIButton_UIButtonAppearance_BackgroundImageForState (id self, SEL sel, NSUInteger p0, GCHandle* exception_gchandle);
	-(UIImage *) backgroundImageForState:(NSUInteger)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIImage * rv = { 0 };
		rv = callback_997_UIKit_UIButton_UIButtonAppearance_BackgroundImageForState (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UIColor * callback_1010_UIKit_UIButton_UIButtonAppearance_TitleColor (id self, SEL sel, NSUInteger p0, GCHandle* exception_gchandle);
	-(UIColor *) titleColorForState:(NSUInteger)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIColor * rv = { 0 };
		rv = callback_1010_UIKit_UIButton_UIButtonAppearance_TitleColor (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	UIColor * callback_1011_UIKit_UIButton_UIButtonAppearance_TitleShadowColor (id self, SEL sel, NSUInteger p0, GCHandle* exception_gchandle);
	-(UIColor *) titleShadowColorForState:(NSUInteger)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIColor * rv = { 0 };
		rv = callback_1011_UIKit_UIButton_UIButtonAppearance_TitleShadowColor (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation UIKit_UIBarItem_UIBarItemAppearance {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_996_UIKit_UIBarItem_UIBarItemAppearance__SetTitleTextAttributes (id self, SEL sel, NSDictionary * p0, NSUInteger p1, GCHandle* exception_gchandle);
	-(void) setTitleTextAttributes:(NSDictionary *)p0 forState:(NSUInteger)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_996_UIKit_UIBarItem_UIBarItemAppearance__SetTitleTextAttributes (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface UIKit_UIBarButtonItem_Callback : NSObject {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) InvokeAction:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation UIKit_UIBarButtonItem_Callback {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_978_UIKit_UIBarButtonItem_Callback_Call (id self, SEL sel, NSObject * p0, GCHandle* exception_gchandle);
	-(void) InvokeAction:(NSObject *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_978_UIKit_UIBarButtonItem_Callback_Call (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface __UIGestureRecognizerGenericCB : __UIGestureRecognizerToken {
}
	-(void) target:(UIGestureRecognizer *)p0;
@end

@implementation __UIGestureRecognizerGenericCB {
}

	void callback_1014_UIKit_UIGestureRecognizer_Callback_1_Activated (id self, SEL sel, UIGestureRecognizer * p0, GCHandle* exception_gchandle);
	-(void) target:(UIGestureRecognizer *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_1014_UIKit_UIGestureRecognizer_Callback_1_Activated (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation __UIGestureRecognizerParameterlessToken {
}

	void callback_1015_UIKit_UIGestureRecognizer_ParameterlessDispatch_Activated (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) target
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_1015_UIKit_UIGestureRecognizer_ParameterlessDispatch_Activated (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@implementation __UIGestureRecognizerParametrizedToken {
}

	void callback_1016_UIKit_UIGestureRecognizer_ParametrizedDispatch_Activated (id self, SEL sel, UIGestureRecognizer * p0, GCHandle* exception_gchandle);
	-(void) target:(UIGestureRecognizer *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_1016_UIKit_UIGestureRecognizer_ParametrizedDispatch_Activated (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
@end

@interface UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate : NSObject<UIGestureRecognizerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_1017_UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1017_UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation UIKit_UINavigationBar_UINavigationBarAppearance {
}

	UIColor * callback_1035_UIKit_UINavigationBar_UINavigationBarAppearance_get_BarTintColor (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIColor *) barTintColor
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIColor * rv = { 0 };
		rv = callback_1035_UIKit_UINavigationBar_UINavigationBarAppearance_get_BarTintColor (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSDictionary * callback_1057_UIKit_UINavigationBar_UINavigationBarAppearance_get__LargeTitleTextAttributes (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSDictionary *) largeTitleTextAttributes
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSDictionary * rv = { 0 };
		rv = callback_1057_UIKit_UINavigationBar_UINavigationBarAppearance_get__LargeTitleTextAttributes (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSDictionary * callback_1059_UIKit_UINavigationBar_UINavigationBarAppearance_get__TitleTextAttributes (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSDictionary *) titleTextAttributes
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSDictionary * rv = { 0 };
		rv = callback_1059_UIKit_UINavigationBar_UINavigationBarAppearance_get__TitleTextAttributes (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface UIKit_UIPopoverPresentationController__UIPopoverPresentationControllerDelegate : NSObject<UIAdaptivePresentationControllerDelegate, UIPopoverPresentationControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation UIKit_UIPopoverPresentationController__UIPopoverPresentationControllerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation UIKit_UISearchBar_UISearchBarAppearance {
}

	UIColor * callback_1084_UIKit_UISearchBar_UISearchBarAppearance_get_BarTintColor (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIColor *) barTintColor
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIColor * rv = { 0 };
		rv = callback_1084_UIKit_UISearchBar_UISearchBarAppearance_get_BarTintColor (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface UIKit_UISearchBar__UISearchBarDelegate : NSObject<UIBarPositioningDelegate, UISearchBarDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation UIKit_UISearchBar__UISearchBarDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_1105_UIKit_UISearchBar__UISearchBarDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1105_UIKit_UISearchBar__UISearchBarDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UISearchController___Xamarin_UISearchResultsUpdating : NSObject<UISearchResultsUpdating> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) updateSearchResultsForSearchController:(UISearchController *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation UIKit_UISearchController___Xamarin_UISearchResultsUpdating {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_1117_UIKit_UISearchController___Xamarin_UISearchResultsUpdating_UpdateSearchResultsForSearchController (id self, SEL sel, UISearchController * p0, GCHandle* exception_gchandle);
	-(void) updateSearchResultsForSearchController:(UISearchController *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_1117_UIKit_UISearchController___Xamarin_UISearchResultsUpdating_UpdateSearchResultsForSearchController (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation UIKit_UITableView_UITableViewAppearance {
}
@end

@interface UIKit_UITextField__UITextFieldDelegate : NSObject<UITextFieldDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) textFieldDidEndEditing:(UITextField *)p0;
	-(void) textFieldDidEndEditing:(UITextField *)p0 reason:(NSInteger)p1;
	-(void) textFieldDidBeginEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0;
	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2;
	-(BOOL) textFieldShouldClear:(UITextField *)p0;
	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldReturn:(UITextField *)p0;
	-(void) textFieldDidChangeSelection:(UITextField *)p0;
	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRanges:(NSArray *)p1 replacementString:(NSString *)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation UIKit_UITextField__UITextFieldDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_1145_UIKit_UITextField__UITextFieldDelegate_EditingEnded (id self, SEL sel, UITextField * p0, GCHandle* exception_gchandle);
	-(void) textFieldDidEndEditing:(UITextField *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_1145_UIKit_UITextField__UITextFieldDelegate_EditingEnded (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_1146_UIKit_UITextField__UITextFieldDelegate_EditingEnded (id self, SEL sel, UITextField * p0, NSInteger p1, GCHandle* exception_gchandle);
	-(void) textFieldDidEndEditing:(UITextField *)p0 reason:(NSInteger)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_1146_UIKit_UITextField__UITextFieldDelegate_EditingEnded (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_1147_UIKit_UITextField__UITextFieldDelegate_EditingStarted (id self, SEL sel, UITextField * p0, GCHandle* exception_gchandle);
	-(void) textFieldDidBeginEditing:(UITextField *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_1147_UIKit_UITextField__UITextFieldDelegate_EditingStarted (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_1148_UIKit_UITextField__UITextFieldDelegate_ShouldBeginEditing (id self, SEL sel, UITextField * p0, GCHandle* exception_gchandle);
	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_1148_UIKit_UITextField__UITextFieldDelegate_ShouldBeginEditing (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_1149_UIKit_UITextField__UITextFieldDelegate_ShouldChangeCharacters (id self, SEL sel, UITextField * p0, NSRange p1, NSString * p2, GCHandle* exception_gchandle);
	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_1149_UIKit_UITextField__UITextFieldDelegate_ShouldChangeCharacters (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_1150_UIKit_UITextField__UITextFieldDelegate_ShouldClear (id self, SEL sel, UITextField * p0, GCHandle* exception_gchandle);
	-(BOOL) textFieldShouldClear:(UITextField *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_1150_UIKit_UITextField__UITextFieldDelegate_ShouldClear (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_1151_UIKit_UITextField__UITextFieldDelegate_ShouldEndEditing (id self, SEL sel, UITextField * p0, GCHandle* exception_gchandle);
	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_1151_UIKit_UITextField__UITextFieldDelegate_ShouldEndEditing (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_1152_UIKit_UITextField__UITextFieldDelegate_ShouldReturn (id self, SEL sel, UITextField * p0, GCHandle* exception_gchandle);
	-(BOOL) textFieldShouldReturn:(UITextField *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_1152_UIKit_UITextField__UITextFieldDelegate_ShouldReturn (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_1153_UIKit_UITextField__UITextFieldDelegate_DidChangeSelection (id self, SEL sel, UITextField * p0, GCHandle* exception_gchandle);
	-(void) textFieldDidChangeSelection:(UITextField *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_1153_UIKit_UITextField__UITextFieldDelegate_DidChangeSelection (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	BOOL callback_1154_UIKit_UITextField__UITextFieldDelegate_ShouldChangeCharacters (id self, SEL sel, UITextField * p0, NSArray * p1, NSString * p2, GCHandle* exception_gchandle);
	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRanges:(NSArray *)p1 replacementString:(NSString *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_1154_UIKit_UITextField__UITextFieldDelegate_ShouldChangeCharacters (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_1144_UIKit_UITextField__UITextFieldDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1144_UIKit_UITextField__UITextFieldDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UIScrollView__UIScrollViewDelegate : NSObject<UIScrollViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation UIKit_UIScrollView__UIScrollViewDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}

	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_1353_UIKit_UIScrollView__UIScrollViewDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1353_UIKit_UIScrollView__UIScrollViewDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UITextView__UITextViewDelegate : UIKit_UIScrollView__UIScrollViewDelegate<UIScrollViewDelegate, UITextViewDelegate> {
}
	-(BOOL) respondsToSelector:(SEL)p0;
	-(id) init;
@end

@implementation UIKit_UITextView__UITextViewDelegate {
}

	BOOL callback_1174_UIKit_UITextView__UITextViewDelegate_RespondsToSelector (id self, SEL sel, SEL p0, GCHandle* exception_gchandle);
	-(BOOL) respondsToSelector:(SEL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_1174_UIKit_UITextView__UITextViewDelegate_RespondsToSelector (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_1155_UIKit_UITextView__UITextViewDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1155_UIKit_UITextView__UITextViewDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIKit_UIScrollView__UIScrollViewDelegate class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation UIKit_UISwitch_UISwitchAppearance {
}

	UIColor * callback_1431_UIKit_UISwitch_UISwitchAppearance_get_OnTintColor (id self, SEL sel, GCHandle* exception_gchandle);
	-(UIColor *) onTintColor
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		UIColor * rv = { 0 };
		rv = callback_1431_UIKit_UISwitch_UISwitchAppearance_get_OnTintColor (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@implementation UIKit_UITabBar_UITabBarAppearance {
}
@end

@interface UIKit_UITabBarController__UITabBarControllerDelegate : NSObject<UITabBarControllerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(BOOL) respondsToSelector:(SEL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation UIKit_UITabBarController__UITabBarControllerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	BOOL callback_1484_UIKit_UITabBarController__UITabBarControllerDelegate_RespondsToSelector (id self, SEL sel, SEL p0, GCHandle* exception_gchandle);
	-(BOOL) respondsToSelector:(SEL)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_1484_UIKit_UITabBarController__UITabBarControllerDelegate_RespondsToSelector (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_1465_UIKit_UITabBarController__UITabBarControllerDelegate__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_1465_UIKit_UITabBarController__UITabBarControllerDelegate__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation UIKit_UITabBarItem_UITabBarItemAppearance {
}
@end

@interface __NSObject_Disposer : NSObject {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	+(void) drain:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation __NSObject_Disposer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_3701_Foundation_NSObject_NSObject_Disposer_Drain (id self, SEL sel, NSObject * p0, GCHandle* exception_gchandle);
	+(void) drain:(NSObject *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3701_Foundation_NSObject_NSObject_Disposer_Drain (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	id callback_3700_Foundation_NSObject_NSObject_Disposer__ctor (id self, SEL sel, bool* call_super, GCHandle* exception_gchandle);
	-(id) init
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		bool call_super = false;
		id rv = { 0 };
		rv = callback_3700_Foundation_NSObject_NSObject_Disposer__ctor (self, _cmd, &call_super, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __XamarinObjectObserver : NSObject {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) observeValueForKeyPath:(NSString *)p0 ofObject:(NSObject *)p1 change:(NSDictionary *)p2 context:(void *)p3;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation __XamarinObjectObserver {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_3702_Foundation_NSObject_Observer_ObserveValue (id self, SEL sel, NSString * p0, NSObject * p1, NSDictionary * p2, void * p3, GCHandle* exception_gchandle);
	-(void) observeValueForKeyPath:(NSString *)p0 ofObject:(NSObject *)p1 change:(NSDictionary *)p2 context:(void *)p3
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3702_Foundation_NSObject_Observer_ObserveValue (self, _cmd, p0, p1, p2, p3, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream : NSInputStream {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(NSUInteger) streamStatus;
	-(void) open;
	-(void) close;
	-(void *) read:(void *)p0 maxLength:(void *)p1;
	-(NSError *) streamError;
	-(BOOL) hasBytesAvailable;
	-(BOOL) getBuffer:(void **)p0 length:(void **)p1;
	-(NSObject *) propertyForKey:(NSString *)p0;
	-(BOOL) setProperty:(NSObject *)p0 forKey:(NSString *)p1;
	-(BOOL) _setCFClientFlags:(NSUInteger)p0 callback:(void *)p1 context:(void *)p2;
	-(void) scheduleInRunLoop:(NSRunLoop *)p0 forMode:(NSString *)p1;
	-(void) removeFromRunLoop:(NSRunLoop *)p0 forMode:(NSString *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	NSUInteger callback_3757_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_get_Status (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSUInteger) streamStatus
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSUInteger rv = { 0 };
		rv = callback_3757_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_get_Status (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_3758_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_Open (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) open
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3758_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_Open (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_3759_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_Close (id self, SEL sel, GCHandle* exception_gchandle);
	-(void) close
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3759_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_Close (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void * callback_3760_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_Read (id self, SEL sel, void * p0, void * p1, GCHandle* exception_gchandle);
	-(void *) read:(void *)p0 maxLength:(void *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		void * rv = { 0 };
		rv = callback_3760_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_Read (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSError * callback_3761_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_get_Error (id self, SEL sel, GCHandle* exception_gchandle);
	-(NSError *) streamError
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSError * rv = { 0 };
		rv = callback_3761_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_get_Error (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_3762_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_HasBytesAvailable (id self, SEL sel, GCHandle* exception_gchandle);
	-(BOOL) hasBytesAvailable
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_3762_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_HasBytesAvailable (self, _cmd, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_3763_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_GetBuffer (id self, SEL sel, void ** p0, void ** p1, GCHandle* exception_gchandle);
	-(BOOL) getBuffer:(void **)p0 length:(void **)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_3763_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_GetBuffer (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	NSObject * callback_3764_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_GetProperty (id self, SEL sel, NSString * p0, GCHandle* exception_gchandle);
	-(NSObject *) propertyForKey:(NSString *)p0
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		NSObject * rv = { 0 };
		rv = callback_3764_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_GetProperty (self, _cmd, p0, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_3765_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_SetProperty (id self, SEL sel, NSObject * p0, NSString * p1, GCHandle* exception_gchandle);
	-(BOOL) setProperty:(NSObject *)p0 forKey:(NSString *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_3765_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_SetProperty (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	BOOL callback_3766_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_SetCFClientFlags (id self, SEL sel, NSUInteger p0, void * p1, void * p2, GCHandle* exception_gchandle);
	-(BOOL) _setCFClientFlags:(NSUInteger)p0 callback:(void *)p1 context:(void *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		BOOL rv = { 0 };
		rv = callback_3766_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_SetCFClientFlags (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}

	void callback_3767_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_Schedule (id self, SEL sel, NSRunLoop * p0, NSString * p1, GCHandle* exception_gchandle);
	-(void) scheduleInRunLoop:(NSRunLoop *)p0 forMode:(NSString *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3767_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_Schedule (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_3768_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_Unschedule (id self, SEL sel, NSRunLoop * p0, NSString * p1, GCHandle* exception_gchandle);
	-(void) removeFromRunLoop:(NSRunLoop *)p0 forMode:(NSString *)p1
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3768_System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream_Unschedule (self, _cmd, p0, p1, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

@interface System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate : NSObject<NSURLSessionDataDelegate, NSURLSessionDelegate, NSURLSessionTaskDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data;
	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags;
	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags;
	-(BOOL) retainWeakReference;
	-(struct NSObjectData *) xamarinGetNSObjectData;
	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 didReceiveResponse:(NSURLResponse *)p2 completionHandler:(void (^)(void *))p3;
	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 didReceiveData:(NSData *)p2;
	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 didCompleteWithError:(NSError *)p2;
	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 willCacheResponse:(NSCachedURLResponse *)p2 completionHandler:(void (^)(void *))p3;
	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 willPerformHTTPRedirection:(NSHTTPURLResponse *)p2 newRequest:(NSURLRequest *)p3 completionHandler:(void (^)(void *))p4;
	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 didReceiveChallenge:(NSURLAuthenticationChallenge *)p2 completionHandler:(void (^)(void *, void *))p3;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(GCHandle) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(bool) xamarinSetGCHandle: (GCHandle) gc_handle flags: (enum XamarinGCHandleFlags) gchandle_flags data: (NSObjectData *) data
	{
		if (((gchandle_flags & XamarinGCHandleFlags_InitialSet) == XamarinGCHandleFlags_InitialSet) && __monoObjectGCHandle.gc_handle != INVALID_GCHANDLE) {
			return false;
		}
		gchandle_flags = (enum XamarinGCHandleFlags) (gchandle_flags & ~XamarinGCHandleFlags_InitialSet);
		__monoObjectGCHandle.gc_handle = gc_handle;
		if (data != NULL)
			__monoObjectGCHandle.data = data;
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
		__monoObjectGCHandle.native_object = self;
		return true;
	}

	-(enum XamarinGCHandleFlags) xamarinGetGCHandleFlags
	{
		return __monoObjectGCHandle.gchandle_flags;
	}

	-(void) xamarinSetGCHandleFlags: (enum XamarinGCHandleFlags) gchandle_flags
	{
		__monoObjectGCHandle.gchandle_flags = gchandle_flags;
	}

	-(BOOL) retainWeakReference
	{
			return xamarin_retainWeakReference_trampoline (self, _cmd);
	}

	-(struct NSObjectData *) xamarinGetNSObjectData
	{
			return __monoObjectGCHandle.data;
	}


	void callback_3751_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_DidReceiveResponse (id self, SEL sel, NSURLSession * p0, NSURLSessionDataTask * p1, NSURLResponse * p2, void (^p3)(void *), GCHandle* exception_gchandle);
	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 didReceiveResponse:(NSURLResponse *)p2 completionHandler:(void (^)(void *))p3
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3751_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_DidReceiveResponse (self, _cmd, p0, p1, p2, p3, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_3752_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_DidReceiveData (id self, SEL sel, NSURLSession * p0, NSURLSessionDataTask * p1, NSData * p2, GCHandle* exception_gchandle);
	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 didReceiveData:(NSData *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3752_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_DidReceiveData (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_3753_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_DidCompleteWithError (id self, SEL sel, NSURLSession * p0, NSURLSessionTask * p1, NSError * p2, GCHandle* exception_gchandle);
	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 didCompleteWithError:(NSError *)p2
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3753_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_DidCompleteWithError (self, _cmd, p0, p1, p2, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_3754_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_WillCacheResponse (id self, SEL sel, NSURLSession * p0, NSURLSessionDataTask * p1, NSCachedURLResponse * p2, void (^p3)(void *), GCHandle* exception_gchandle);
	-(void) URLSession:(NSURLSession *)p0 dataTask:(NSURLSessionDataTask *)p1 willCacheResponse:(NSCachedURLResponse *)p2 completionHandler:(void (^)(void *))p3
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3754_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_WillCacheResponse (self, _cmd, p0, p1, p2, p3, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_3755_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_WillPerformHttpRedirection (id self, SEL sel, NSURLSession * p0, NSURLSessionTask * p1, NSHTTPURLResponse * p2, NSURLRequest * p3, void (^p4)(void *), GCHandle* exception_gchandle);
	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 willPerformHTTPRedirection:(NSHTTPURLResponse *)p2 newRequest:(NSURLRequest *)p3 completionHandler:(void (^)(void *))p4
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3755_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_WillPerformHttpRedirection (self, _cmd, p0, p1, p2, p3, p4, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}

	void callback_3756_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_DidReceiveChallenge (id self, SEL sel, NSURLSession * p0, NSURLSessionTask * p1, NSURLAuthenticationChallenge * p2, void (^p3)(void *, void *), GCHandle* exception_gchandle);
	-(void) URLSession:(NSURLSession *)p0 task:(NSURLSessionTask *)p1 didReceiveChallenge:(NSURLAuthenticationChallenge *)p2 completionHandler:(void (^)(void *, void *))p3
	{
		GCHandle exception_gchandle = INVALID_GCHANDLE;
		callback_3756_System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate_DidReceiveChallenge (self, _cmd, p0, p1, p2, p3, &exception_gchandle);
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	}
	-(BOOL) conformsToProtocol: (void *) protocol
	{
		GCHandle exception_gchandle;
		GCHandle obj_gchandle = xamarin_get_gchandle (self);
		BOOL rv = xamarin_invoke_conforms_to_protocol (obj_gchandle, self, (Protocol *) protocol, &exception_gchandle) != 0;
		xamarin_process_managed_exception_gchandle (exception_gchandle);
		return rv;
	}
@end

	static MTClassMap __xamarin_class_map [] = {
		{ NULL, 0x1 /* #0 'NSObject' => 'Foundation.NSObject, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3 /* #1 'UIResponder' => 'UIKit.UIResponder, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x9 /* #2 'Microsoft_Maui_MauiUIApplicationDelegate' => 'Microsoft.Maui.MauiUIApplicationDelegate, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB /* #3 'AppDelegate' => 'FindMyMoney.AppDelegate, FindMyMoney.UI' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xD /* #4 'UIGestureRecognizer' => 'UIKit.UIGestureRecognizer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xF /* #5 'Microsoft_Maui_Controls_Compatibility_Platform_iOS_GlobalCloseContextGestureRecognizer' => 'Microsoft.Maui.Controls.Compatibility.Platform.iOS.GlobalCloseContextGestureRecognizer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x11 /* #6 'Microsoft_Maui_Controls_Compatibility_Platform_iOS_NativeViewPropertyListener' => 'Microsoft.Maui.Controls.Compatibility.Platform.iOS.NativeViewPropertyListener, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x13 /* #7 'UIViewController' => 'UIKit.UIViewController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x15 /* #8 'Microsoft_Maui_Platform_ModalWrapper' => 'Microsoft.Maui.Platform.ModalWrapper, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1B /* #9 'Microsoft_Maui_Controls_Platform_ControlsModalWrapper' => 'Microsoft.Maui.Controls.Platform.ControlsModalWrapper, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x25 /* #10 'UIView' => 'UIKit.UIView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x27 /* #11 'Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView' => 'Microsoft.Maui.Controls.Platform.Compatibility.UIContainerView, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x29 /* #12 'Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutHeaderContainer' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellFlyoutHeaderContainer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x2B /* #13 'UITabBarController' => 'UIKit.UITabBarController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x31 /* #14 'Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellItemRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x3B /* #15 'UITableViewController' => 'UIKit.UITableViewController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3D /* #16 'Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewController' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellTableViewController, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x43 /* #17 'UITableViewCell' => 'UIKit.UITableViewCell, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x45 /* #18 'Microsoft_Maui_Controls_Platform_Compatibility_UIContainerCell' => 'Microsoft.Maui.Controls.Platform.Compatibility.UIContainerCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x47 /* #19 'UICollectionReusableView' => 'UIKit.UICollectionReusableView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x49 /* #20 'UICollectionViewCell' => 'UIKit.UICollectionViewCell, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4B /* #21 'Microsoft_Maui_Controls_Handlers_Items_ItemsViewCell' => 'Microsoft.Maui.Controls.Handlers.Items.ItemsViewCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4D /* #22 'Microsoft_Maui_Controls_Handlers_Items_TemplatedCell' => 'Microsoft.Maui.Controls.Handlers.Items.TemplatedCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4F /* #23 'Microsoft_Maui_Controls_Handlers_Items_CarouselTemplatedCell' => 'Microsoft.Maui.Controls.Handlers.Items.CarouselTemplatedCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x55 /* #24 'Microsoft_iOS__UIKit_UICollectionViewDelegate' => 'UIKit.UICollectionViewDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x57 /* #25 'Microsoft_iOS__UIKit_UICollectionViewDelegateFlowLayout' => 'UIKit.UICollectionViewDelegateFlowLayout, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x59 /* #26 'Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2' => 'Microsoft.Maui.Controls.Handlers.Items.ItemsViewDelegator`2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x5B /* #27 'Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator' => 'Microsoft.Maui.Controls.Handlers.Items.CarouselViewDelegator, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x5D /* #28 'UICollectionViewLayout' => 'UIKit.UICollectionViewLayout, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x5F /* #29 'UICollectionViewFlowLayout' => 'UIKit.UICollectionViewFlowLayout, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x61 /* #30 'Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout' => 'Microsoft.Maui.Controls.Handlers.Items.ItemsViewLayout, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x63 /* #31 'Microsoft_Maui_Controls_Handlers_Items_CarouselViewLayout' => 'Microsoft.Maui.Controls.Handlers.Items.CarouselViewLayout, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x65 /* #32 'Microsoft_Maui_Controls_Handlers_Items_DefaultCell' => 'Microsoft.Maui.Controls.Handlers.Items.DefaultCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x67 /* #33 'Microsoft_Maui_Controls_Handlers_Items_GridViewLayout' => 'Microsoft.Maui.Controls.Handlers.Items.GridViewLayout, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x69 /* #34 'UICollectionViewController' => 'UIKit.UICollectionViewController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x6B /* #35 'Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1' => 'Microsoft.Maui.Controls.Handlers.Items.ItemsViewController`1, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6D /* #36 'Microsoft_Maui_Controls_Handlers_Items_StructuredItemsViewController_1' => 'Microsoft.Maui.Controls.Handlers.Items.StructuredItemsViewController`1, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x6F /* #37 'Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewController_1' => 'Microsoft.Maui.Controls.Handlers.Items.SelectableItemsViewController`1, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x71 /* #38 'Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewController_1' => 'Microsoft.Maui.Controls.Handlers.Items.GroupableItemsViewController`1, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x73 /* #39 'Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewDelegator_2' => 'Microsoft.Maui.Controls.Handlers.Items.SelectableItemsViewDelegator`2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x75 /* #40 'Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewDelegator_2' => 'Microsoft.Maui.Controls.Handlers.Items.GroupableItemsViewDelegator`2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x77 /* #41 'Microsoft_Maui_Controls_Handlers_Items_HeightConstrainedTemplatedCell' => 'Microsoft.Maui.Controls.Handlers.Items.HeightConstrainedTemplatedCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x79 /* #42 'Microsoft_Maui_Controls_Handlers_Items_HorizontalCell' => 'Microsoft.Maui.Controls.Handlers.Items.HorizontalCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x7B /* #43 'Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultCell' => 'Microsoft.Maui.Controls.Handlers.Items.HorizontalDefaultCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x7D /* #44 'Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultSupplementalView' => 'Microsoft.Maui.Controls.Handlers.Items.HorizontalDefaultSupplementalView, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x7F /* #45 'Microsoft_Maui_Controls_Handlers_Items_HorizontalSupplementaryView' => 'Microsoft.Maui.Controls.Handlers.Items.HorizontalSupplementaryView, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x81 /* #46 'Microsoft_Maui_Controls_Handlers_Items_ListViewLayout' => 'Microsoft.Maui.Controls.Handlers.Items.ListViewLayout, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x83 /* #47 'UIScrollView' => 'UIKit.UIScrollView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x85 /* #48 'UICollectionView' => 'UIKit.UICollectionView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x87 /* #49 'Microsoft_Maui_Controls_Handlers_Items_MauiCollectionView' => 'Microsoft.Maui.Controls.Handlers.Items.MauiCollectionView, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x89 /* #50 'Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewController_1' => 'Microsoft.Maui.Controls.Handlers.Items.ReorderableItemsViewController`1, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x8B /* #51 'Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewDelegator_2' => 'Microsoft.Maui.Controls.Handlers.Items.ReorderableItemsViewDelegator`2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x8D /* #52 'Microsoft_Maui_Controls_Handlers_Items_WidthConstrainedTemplatedCell' => 'Microsoft.Maui.Controls.Handlers.Items.WidthConstrainedTemplatedCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x8F /* #53 'Microsoft_Maui_Controls_Handlers_Items_VerticalCell' => 'Microsoft.Maui.Controls.Handlers.Items.VerticalCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x91 /* #54 'Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultCell' => 'Microsoft.Maui.Controls.Handlers.Items.VerticalDefaultCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x93 /* #55 'Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultSupplementalView' => 'Microsoft.Maui.Controls.Handlers.Items.VerticalDefaultSupplementalView, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x95 /* #56 'Microsoft_Maui_Controls_Handlers_Items_VerticalSupplementaryView' => 'Microsoft.Maui.Controls.Handlers.Items.VerticalSupplementaryView, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x97 /* #57 'Microsoft_Maui_Controls_Handlers_Items2_ItemsViewCell2' => 'Microsoft.Maui.Controls.Handlers.Items2.ItemsViewCell2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x99 /* #58 'Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2' => 'Microsoft.Maui.Controls.Handlers.Items2.TemplatedCell2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x9B /* #59 'Microsoft_Maui_Controls_Handlers_Items2_CarouselTemplatedCell2' => 'Microsoft.Maui.Controls.Handlers.Items2.CarouselTemplatedCell2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x9D /* #60 'Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2' => 'Microsoft.Maui.Controls.Handlers.Items2.ItemsViewDelegator2`2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x9F /* #61 'Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2' => 'Microsoft.Maui.Controls.Handlers.Items2.CarouselViewDelegator2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xA1 /* #62 'Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2' => 'Microsoft.Maui.Controls.Handlers.Items2.DefaultCell2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xA3 /* #63 'Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1' => 'Microsoft.Maui.Controls.Handlers.Items2.ItemsViewController2`1, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xA5 /* #64 'Microsoft_Maui_Controls_Handlers_Items2_StructuredItemsViewController2_1' => 'Microsoft.Maui.Controls.Handlers.Items2.StructuredItemsViewController2`1, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xA7 /* #65 'Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewController2_1' => 'Microsoft.Maui.Controls.Handlers.Items2.SelectableItemsViewController2`1, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xA9 /* #66 'Microsoft_Maui_Controls_Handlers_Items2_GroupableItemsViewController2_1' => 'Microsoft.Maui.Controls.Handlers.Items2.GroupableItemsViewController2`1, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xAB /* #67 'Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewDelegator2_2' => 'Microsoft.Maui.Controls.Handlers.Items2.SelectableItemsViewDelegator2`2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xAD /* #68 'Microsoft_Maui_Controls_Handlers_Items2_GroupableItemsViewDelegator2_2' => 'Microsoft.Maui.Controls.Handlers.Items2.GroupableItemsViewDelegator2`2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xAF /* #69 'Microsoft_Maui_Controls_Handlers_Items2_HeightConstrainedTemplatedCell2' => 'Microsoft.Maui.Controls.Handlers.Items2.HeightConstrainedTemplatedCell2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB1 /* #70 'Microsoft_Maui_Controls_Handlers_Items2_HorizontalCell2' => 'Microsoft.Maui.Controls.Handlers.Items2.HorizontalCell2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB3 /* #71 'Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultCell2' => 'Microsoft.Maui.Controls.Handlers.Items2.HorizontalDefaultCell2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB5 /* #72 'Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultSupplementalView2' => 'Microsoft.Maui.Controls.Handlers.Items2.HorizontalDefaultSupplementalView2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB7 /* #73 'Microsoft_Maui_Controls_Handlers_Items2_HorizontalSupplementaryView2' => 'Microsoft.Maui.Controls.Handlers.Items2.HorizontalSupplementaryView2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xB9 /* #74 'Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewController2_1' => 'Microsoft.Maui.Controls.Handlers.Items2.ReorderableItemsViewController2`1, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xBB /* #75 'Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewDelegator2_2' => 'Microsoft.Maui.Controls.Handlers.Items2.ReorderableItemsViewDelegator2`2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xBD /* #76 'Microsoft_Maui_Controls_Handlers_Items2_WidthConstrainedTemplatedCell2' => 'Microsoft.Maui.Controls.Handlers.Items2.WidthConstrainedTemplatedCell2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xBF /* #77 'Microsoft_Maui_Controls_Handlers_Items2_VerticalCell2' => 'Microsoft.Maui.Controls.Handlers.Items2.VerticalCell2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xC1 /* #78 'Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultCell2' => 'Microsoft.Maui.Controls.Handlers.Items2.VerticalDefaultCell2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xC3 /* #79 'Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultSupplementalView2' => 'Microsoft.Maui.Controls.Handlers.Items2.VerticalDefaultSupplementalView2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xC5 /* #80 'Microsoft_Maui_Controls_Handlers_Items2_VerticalSupplementaryView2' => 'Microsoft.Maui.Controls.Handlers.Items2.VerticalSupplementaryView2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xC7 /* #81 'UINavigationBar' => 'UIKit.UINavigationBar, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xC9 /* #82 'Microsoft_Maui_Controls_Handlers_Compatibility_MauiNavigationBar' => 'Microsoft.Maui.Controls.Handlers.Compatibility.MauiNavigationBar, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xCB /* #83 'Microsoft_Maui_Controls_Handlers_Compatibility_VisualElementRenderer_1' => 'Microsoft.Maui.Controls.Handlers.Compatibility.VisualElementRenderer`1, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xCD /* #84 'Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2' => 'Microsoft.Maui.Controls.Handlers.Compatibility.ViewRenderer`2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xCF /* #85 'Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.ViewRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xD1 /* #86 'Microsoft_Maui_Controls_Handlers_Compatibility_CellTableViewCell' => 'Microsoft.Maui.Controls.Handlers.Compatibility.CellTableViewCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xD3 /* #87 'Microsoft_Maui_Controls_Handlers_Compatibility_iOS7ButtonContainer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.iOS7ButtonContainer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xD5 /* #88 'UITableViewHeaderFooterView' => 'UIKit.UITableViewHeaderFooterView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xD7 /* #89 'Microsoft_Maui_Controls_Handlers_Compatibility_HeaderWrapperView' => 'Microsoft.Maui.Controls.Handlers.Compatibility.HeaderWrapperView, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xDD /* #90 'UIControl' => 'UIKit.UIControl, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xDF /* #91 'UIRefreshControl' => 'UIKit.UIRefreshControl, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xE1 /* #92 'Microsoft_Maui_Controls_Handlers_Compatibility_FormsRefreshControl' => 'Microsoft.Maui.Controls.Handlers.Compatibility.FormsRefreshControl, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xE3 /* #93 'Microsoft_iOS__UIKit_UIScrollViewDelegate' => 'UIKit.UIScrollViewDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xE5 /* #94 'Microsoft_iOS__UIKit_UITableViewSource' => 'UIKit.UITableViewSource, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xE7 /* #95 'Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.TableViewModelRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xE9 /* #96 'Microsoft_Maui_Controls_Handlers_Compatibility_UnEvenTableViewModelRenderer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.UnEvenTableViewModelRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xEB /* #97 'Microsoft_Maui_Controls_Handlers_Compatibility_TableViewRenderer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.TableViewRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xED /* #98 'UITapGestureRecognizer' => 'UIKit.UITapGestureRecognizer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xEF /* #99 'Microsoft_Maui_Platform_ResignFirstResponderTouchGestureRecognizer' => 'Microsoft.Maui.Platform.ResignFirstResponderTouchGestureRecognizer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xF1 /* #100 'UIBarItem' => 'UIKit.UIBarItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xF3 /* #101 'UIBarButtonItem' => 'UIKit.UIBarButtonItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0xF5 /* #102 'Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_PrimaryToolbarItem' => 'Microsoft.Maui.Controls.Compatibility.Platform.iOS.ToolbarItemExtensions+PrimaryToolbarItem, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0xF7 /* #103 'Microsoft_Maui_Controls_Platform_DragAndDropDelegate_CustomLocalStateData' => 'Microsoft.Maui.Controls.Platform.DragAndDropDelegate+CustomLocalStateData, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x101 /* #104 'Microsoft_Maui_Controls_Platform_DragAndDropDelegate' => 'Microsoft.Maui.Controls.Platform.DragAndDropDelegate, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x103 /* #105 '__UIGestureRecognizerToken' => 'UIKit.UIGestureRecognizer+Token, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x105 /* #106 '__UIGestureRecognizer' => 'Microsoft.Maui.Controls.Platform.iOS.CustomPressGestureRecognizer+Callback, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x107 /* #107 'Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer' => 'Microsoft.Maui.Controls.Platform.iOS.CustomPressGestureRecognizer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x109 /* #108 'Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellFlyoutContentRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10B /* #109 'Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellFlyoutRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10D /* #110 'Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellPageRendererTracker+TitleViewContainer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x10F /* #111 'Microsoft_Maui_Controls_Platform_Compatibility_ShellSearchResultsRenderer' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellSearchResultsRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x111 /* #112 'Microsoft_iOS__UIKit_UIGestureRecognizerDelegate' => 'UIKit.UIGestureRecognizerDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x113 /* #113 'Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_GestureDelegate' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRenderer+GestureDelegate, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x115 /* #114 'Microsoft_iOS__UIKit_UINavigationControllerDelegate' => 'UIKit.UINavigationControllerDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x117 /* #115 'Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_NavDelegate' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRenderer+NavDelegate, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x119 /* #116 'UINavigationController' => 'UIKit.UINavigationController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x11B /* #117 'Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x11D /* #118 'Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRootHeader+ShellSectionHeaderCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x11F /* #119 'Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRootHeader, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x121 /* #120 'Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRootRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x123 /* #121 'Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_SeparatorView' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellTableViewSource+SeparatorView, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x125 /* #122 'Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource' => 'Microsoft.Maui.Controls.Platform.Compatibility.ShellTableViewSource, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x127 /* #123 'Microsoft_Maui_Controls_Handlers_Items_CarouselViewController' => 'Microsoft.Maui.Controls.Handlers.Items.CarouselViewController, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x129 /* #124 'Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2' => 'Microsoft.Maui.Controls.Handlers.Items2.CarouselViewController2, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12B /* #125 'UICollectionViewCompositionalLayout' => 'UIKit.UICollectionViewCompositionalLayout, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x12D /* #126 'Microsoft_Maui_Controls_Handlers_Items2_LayoutFactory2_CustomUICollectionViewCompositionalLayout' => 'Microsoft.Maui.Controls.Handlers.Items2.LayoutFactory2+CustomUICollectionViewCompositionalLayout, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x12F /* #127 'Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ChildViewController' => 'Microsoft.Maui.Controls.Handlers.Compatibility.PhoneFlyoutPageRenderer+ChildViewController, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x131 /* #128 'Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.PhoneFlyoutPageRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x133 /* #129 'Microsoft_Maui_Platform_MauiView' => 'Microsoft.Maui.Platform.MauiView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x135 /* #130 'Microsoft_Maui_Platform_ContentView' => 'Microsoft.Maui.Platform.ContentView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x137 /* #131 'Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_FrameView' => 'Microsoft.Maui.Controls.Handlers.Compatibility.FrameRenderer+FrameView, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x139 /* #132 'Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.FrameRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x13B /* #133 'UIAlertController' => 'UIKit.UIAlertController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x13D /* #134 'Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_MoreActionSheetController' => 'Microsoft.Maui.Controls.Handlers.Compatibility.ContextActionsCell+MoreActionSheetController, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x13F /* #135 'Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell' => 'Microsoft.Maui.Controls.Handlers.Compatibility.ContextActionsCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x141 /* #136 'Microsoft_Maui_Controls_Handlers_Compatibility_ContextScrollViewDelegate' => 'Microsoft.Maui.Controls.Handlers.Compatibility.ContextScrollViewDelegate, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x143 /* #137 'Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource' => 'Microsoft.Maui.Controls.Handlers.Compatibility.ListViewRenderer+ListViewDataSource, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x145 /* #138 'Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_UnevenListViewDataSource' => 'Microsoft.Maui.Controls.Handlers.Compatibility.ListViewRenderer+UnevenListViewDataSource, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x147 /* #139 'Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.ListViewRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x149 /* #140 'Microsoft_Maui_Controls_Handlers_Compatibility_FormsUITableViewController' => 'Microsoft.Maui.Controls.Handlers.Compatibility.FormsUITableViewController, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x14B /* #141 'Microsoft_Maui_Controls_Handlers_Compatibility_ViewCellRenderer_ViewTableCell' => 'Microsoft.Maui.Controls.Handlers.Compatibility.ViewCellRenderer+ViewTableCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x14D /* #142 'Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiNavigationDelegate' => 'Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer+MauiNavigationDelegate, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x14F /* #143 'Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiControlsNavigationBar' => 'Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer+MauiControlsNavigationBar, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x151 /* #144 'Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container' => 'Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer+Container, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x153 /* #145 'Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x155 /* #146 'Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.ShellRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x157 /* #147 'Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.TabbedRenderer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x159 /* #148 'Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent' => 'Microsoft.Maui.Controls.Compatibility.Platform.iOS.ToolbarItemExtensions+SecondaryToolbarItem+SecondaryToolbarItemContent, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x15B /* #149 'Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem' => 'Microsoft.Maui.Controls.Compatibility.Platform.iOS.ToolbarItemExtensions+SecondaryToolbarItem, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x15D /* #150 'Microsoft_iOS__UIKit_UIContextMenuInteractionDelegate' => 'UIKit.UIContextMenuInteractionDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x15F /* #151 'Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickContextMenuInteraction_FakeRightClickDelegate' => 'Microsoft.Maui.Controls.Platform.GesturePlatformManager+FakeRightClickContextMenuInteraction+FakeRightClickDelegate, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x165 /* #152 'UIContextMenuInteraction' => 'UIKit.UIContextMenuInteraction, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x167 /* #153 'Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickContextMenuInteraction' => 'Microsoft.Maui.Controls.Platform.GesturePlatformManager+FakeRightClickContextMenuInteraction, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x169 /* #154 'Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickPointerInteraction' => 'Microsoft.Maui.Controls.Platform.GesturePlatformManager+FakeRightClickPointerInteraction, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x16B /* #155 'Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_SelectGestureRecognizer' => 'Microsoft.Maui.Controls.Handlers.Compatibility.ContextActionsCell+SelectGestureRecognizer, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x16D /* #156 'Microsoft_Maui_Controls_Handlers_Compatibility_EntryCellRenderer_EntryCellTableViewCell' => 'Microsoft.Maui.Controls.Handlers.Compatibility.EntryCellRenderer+EntryCellTableViewCell, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x16F /* #157 'UIToolbar' => 'UIKit.UIToolbar, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x171 /* #158 'Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar' => 'Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer+SecondaryToolbar, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x173 /* #159 'Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController' => 'Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer+ParentingViewController, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x175 /* #160 'Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickPointerInteraction_FakeRightClickPointerDelegate' => 'Microsoft.Maui.Controls.Platform.GesturePlatformManager+FakeRightClickPointerInteraction+FakeRightClickPointerDelegate, Microsoft.Maui.Controls' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x177 /* #161 'MauiCALayerAutosizeObserver' => 'Microsoft.Maui.Platform.CALayerAutosizeObserver, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x179 /* #162 'NSLayoutConstraint' => 'UIKit.NSLayoutConstraint, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x17B /* #163 'Microsoft_Maui_Platform_CollapseConstraint' => 'Microsoft.Maui.Platform.CollapseConstraint, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x17D /* #164 'Microsoft_Maui_Platform_ContainerViewController' => 'Microsoft.Maui.Platform.ContainerViewController, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x17F /* #165 'Microsoft_Maui_Platform_GeneralWrapperView' => 'Microsoft.Maui.Platform.GeneralWrapperView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x181 /* #166 'Microsoft_Maui_Platform_LayoutView' => 'Microsoft.Maui.Platform.LayoutView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x183 /* #167 'UIActivityIndicatorView' => 'UIKit.UIActivityIndicatorView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x185 /* #168 'Microsoft_Maui_Platform_MauiActivityIndicator' => 'Microsoft.Maui.Platform.MauiActivityIndicator, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x187 /* #169 'PlatformGraphicsView' => 'Microsoft.Maui.Graphics.Platform.PlatformGraphicsView, Microsoft.Maui.Graphics' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x189 /* #170 'Microsoft_Maui_Platform_MauiBoxView' => 'Microsoft.Maui.Platform.MauiBoxView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x18B /* #171 'CALayer' => 'CoreAnimation.CALayer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x18D /* #172 'Microsoft_Maui_Platform_MauiCALayer' => 'Microsoft.Maui.Platform.MauiCALayer, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x18F /* #173 'UIImageView' => 'UIKit.UIImageView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x191 /* #174 'Microsoft_Maui_Platform_MauiImageView' => 'Microsoft.Maui.Platform.MauiImageView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x193 /* #175 'UILabel' => 'UIKit.UILabel, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x195 /* #176 'Microsoft_Maui_Platform_MauiLabel' => 'Microsoft.Maui.Platform.MauiLabel, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x197 /* #177 'UIPageControl' => 'UIKit.UIPageControl, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x199 /* #178 'Microsoft_Maui_Platform_MauiPageControl' => 'Microsoft.Maui.Platform.MauiPageControl, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1A3 /* #179 'UITextField' => 'UIKit.UITextField, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1A5 /* #180 'Microsoft_Maui_Platform_NoCaretField' => 'Microsoft.Maui.Platform.NoCaretField, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1A7 /* #181 'Microsoft_Maui_Platform_MauiPicker' => 'Microsoft.Maui.Platform.MauiPicker, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1A9 /* #182 'Microsoft_Maui_Platform_MauiRefreshView' => 'Microsoft.Maui.Platform.MauiRefreshView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1AB /* #183 'Microsoft_Maui_Platform_MauiScrollView' => 'Microsoft.Maui.Platform.MauiScrollView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1AD /* #184 'UISearchBar' => 'UIKit.UISearchBar, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1AF /* #185 'Microsoft_Maui_Platform_MauiSearchBar' => 'Microsoft.Maui.Platform.MauiSearchBar, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1B1 /* #186 'Microsoft_Maui_Platform_MauiShapeView' => 'Microsoft.Maui.Platform.MauiShapeView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1B3 /* #187 'Microsoft_Maui_Platform_MauiTextField' => 'Microsoft.Maui.Platform.MauiTextField, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1B5 /* #188 'UITextView' => 'UIKit.UITextView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1B7 /* #189 'Microsoft_Maui_Platform_MauiTextView' => 'Microsoft.Maui.Platform.MauiTextView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1BD /* #190 'Microsoft_Maui_Platform_MauiWebViewNavigationDelegate' => 'Microsoft.Maui.Platform.MauiWebViewNavigationDelegate, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1BF /* #191 'Microsoft_Maui_Platform_PageViewController' => 'Microsoft.Maui.Platform.PageViewController, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1C1 /* #192 'Microsoft_Maui_Platform_SemanticSwitchContentView' => 'Microsoft.Maui.Platform.SemanticSwitchContentView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1C3 /* #193 'CAGradientLayer' => 'CoreAnimation.CAGradientLayer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1C5 /* #194 'Microsoft_Maui_Platform_StaticCAGradientLayer' => 'Microsoft.Maui.Platform.StaticCAGradientLayer, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1C7 /* #195 'Microsoft_Maui_Platform_StaticCALayer' => 'Microsoft.Maui.Platform.StaticCALayer, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1C9 /* #196 'CAShapeLayer' => 'CoreAnimation.CAShapeLayer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1CB /* #197 'Microsoft_Maui_Platform_StaticCAShapeLayer' => 'Microsoft.Maui.Platform.StaticCAShapeLayer, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1CD /* #198 'Microsoft_Maui_Platform_WrapperView' => 'Microsoft.Maui.Platform.WrapperView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1D3 /* #199 'Microsoft_iOS__UIKit_UIPickerViewModel' => 'UIKit.UIPickerViewModel, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1D5 /* #200 'Microsoft_Maui_Handlers_PickerSource' => 'Microsoft.Maui.Handlers.PickerSource, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1D7 /* #201 'UIButton' => 'UIKit.UIButton, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1D9 /* #202 'Microsoft_Maui_Handlers_SwipeItemButton' => 'Microsoft.Maui.Handlers.SwipeItemButton, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1E3 /* #203 'Microsoft_Maui_MauiUISceneDelegate' => 'Microsoft.Maui.MauiUISceneDelegate, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1E5 /* #204 'Microsoft_Maui_WindowOverlay_OverlayGraphicsView' => 'Microsoft.Maui.WindowOverlay+OverlayGraphicsView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1E7 /* #205 'Microsoft_Maui_Platform_MauiCheckBox' => 'Microsoft.Maui.Platform.MauiCheckBox, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1E9 /* #206 'Microsoft_Maui_Platform_MauiDatePicker' => 'Microsoft.Maui.Platform.MauiDatePicker, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1EB /* #207 'Microsoft_Maui_Platform_MauiDoneAccessoryView' => 'Microsoft.Maui.Platform.MauiDoneAccessoryView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1ED /* #208 'WKWebView' => 'WebKit.WKWebView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1EF /* #209 'Microsoft_Maui_Platform_MauiHybridWebView' => 'Microsoft.Maui.Platform.MauiHybridWebView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1F1 /* #210 'Microsoft_Maui_Platform_MauiSwipeView' => 'Microsoft.Maui.Platform.MauiSwipeView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1F3 /* #211 'Microsoft_Maui_Platform_MauiTimePicker' => 'Microsoft.Maui.Platform.MauiTimePicker, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1F5 /* #212 'Microsoft_Maui_Platform_MauiUIContextMenuInteraction_FlyoutUIContextMenuInteractionDelegate' => 'Microsoft.Maui.Platform.MauiUIContextMenuInteraction+FlyoutUIContextMenuInteractionDelegate, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1F7 /* #213 'Microsoft_Maui_Platform_MauiUIContextMenuInteraction' => 'Microsoft.Maui.Platform.MauiUIContextMenuInteraction, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x1FD /* #214 'Microsoft_iOS__WebKit_WKUIDelegate' => 'WebKit.WKUIDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x1FF /* #215 'Microsoft_Maui_Platform_MauiWebViewUIDelegate' => 'Microsoft.Maui.Platform.MauiWebViewUIDelegate, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x201 /* #216 'Microsoft_Maui_Platform_MauiWKWebView' => 'Microsoft.Maui.Platform.MauiWKWebView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x203 /* #217 'Microsoft_Maui_Platform_PlatformTouchGraphicsView' => 'Microsoft.Maui.Platform.PlatformTouchGraphicsView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x209 /* #218 'Microsoft_Maui_Handlers_HybridWebViewHandler_WebViewScriptMessageHandler' => 'Microsoft.Maui.Handlers.HybridWebViewHandler+WebViewScriptMessageHandler, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x20B /* #219 'Microsoft_Maui_WindowOverlay_PassthroughView' => 'Microsoft.Maui.WindowOverlay+PassthroughView, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x211 /* #220 'Microsoft_Maui_Handlers_HybridWebViewHandler_SchemeHandler' => 'Microsoft.Maui.Handlers.HybridWebViewHandler+SchemeHandler, Microsoft.Maui' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x21B /* #221 'Microsoft_Maui_Authentication_AuthManager' => 'Microsoft.Maui.Authentication.AuthManager, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x21D /* #222 'Microsoft_iOS__PhotosUI_PHPickerViewControllerDelegate' => 'PhotosUI.PHPickerViewControllerDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x21F /* #223 'Microsoft_Maui_Media_PhotoPickerDelegate' => 'Microsoft.Maui.Media.PhotoPickerDelegate, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x221 /* #224 'Microsoft_iOS__UIKit_UIAdaptivePresentationControllerDelegate' => 'UIKit.UIAdaptivePresentationControllerDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x223 /* #225 'Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate' => 'Microsoft.Maui.Media.PhotoPickerPresentationControllerDelegate, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x225 /* #226 'Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate' => 'Microsoft.Maui.ApplicationModel.UIPresentationControllerDelegate, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x227 /* #227 'Microsoft_iOS__UIKit_UIActivityItemSource' => 'UIKit.UIActivityItemSource, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x229 /* #228 'Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource' => 'Microsoft.Maui.ApplicationModel.DataTransfer.ShareActivityItemSource, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x22F /* #229 'Microsoft_iOS__CoreLocation_CLLocationManagerDelegate' => 'CoreLocation.CLLocationManagerDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x231 /* #230 'Microsoft_Maui_Devices_Sensors_SingleLocationListener' => 'Microsoft.Maui.Devices.Sensors.SingleLocationListener, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x233 /* #231 'Microsoft_Maui_Devices_Sensors_ContinuousLocationListener' => 'Microsoft.Maui.Devices.Sensors.ContinuousLocationListener, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x235 /* #232 'Microsoft_iOS__SafariServices_SFSafariViewControllerDelegate' => 'SafariServices.SFSafariViewControllerDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x237 /* #233 'Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate' => 'Microsoft.Maui.Authentication.WebAuthenticatorImplementation+NativeSFSafariViewControllerDelegate, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x23D /* #234 'Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider' => 'Microsoft.Maui.Authentication.WebAuthenticatorImplementation+ContextProvider, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x23F /* #235 'Microsoft_iOS__UIKit_UIImagePickerControllerDelegate' => 'UIKit.UIImagePickerControllerDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x241 /* #236 'Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate' => 'Microsoft.Maui.Media.MediaPickerImplementation+PhotoPickerDelegate, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x243 /* #237 'Microsoft_iOS__UIKit_UIDocumentPickerDelegate' => 'UIKit.UIDocumentPickerDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x245 /* #238 'Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate' => 'Microsoft.Maui.Storage.FilePickerImplementation+PickerDelegate, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x247 /* #239 'Microsoft_iOS__ContactsUI_CNContactPickerDelegate' => 'ContactsUI.CNContactPickerDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x249 /* #240 'Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate' => 'Microsoft.Maui.ApplicationModel.Communication.ContactsImplementation+ContactPickerDelegate, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x24B /* #241 'Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate' => 'Microsoft.Maui.ApplicationModel.Permissions+LocationWhenInUse+ManagerDelegate, Microsoft.Maui.Essentials' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x251 /* #242 'SFSafariViewController' => 'SafariServices.SFSafariViewController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x253 /* #243 'UIWindowSceneActivationConfiguration' => 'UIKit.UIWindowSceneActivationConfiguration, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x255 /* #244 'PHPickerResult' => 'PhotosUI.PHPickerResult, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x257 /* #245 'PHPickerViewController' => 'PhotosUI.PHPickerViewController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x259 /* #246 'NSEnumerator' => 'Foundation.NSEnumerator, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x25B /* #247 'LPLinkMetadata' => 'LinkPresentation.LPLinkMetadata, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x25D /* #248 'CNContactPickerViewController' => 'ContactsUI.CNContactPickerViewController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x267 /* #249 'NSCoder' => 'Foundation.NSCoder, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x269 /* #250 'NSFormatter' => 'Foundation.NSFormatter, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26B /* #251 'INIntentResponse' => 'Intents.INIntentResponse, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26D /* #252 'INIntent' => 'Intents.INIntent, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x26F /* #253 'WKNavigationResponse' => 'WebKit.WKNavigationResponse, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x271 /* #254 'WKPreferences' => 'WebKit.WKPreferences, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x273 /* #255 'WKWindowFeatures' => 'WebKit.WKWindowFeatures, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x275 /* #256 'WKBackForwardListItem' => 'WebKit.WKBackForwardListItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x277 /* #257 'WKContextMenuElementInfo' => 'WebKit.WKContextMenuElementInfo, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x279 /* #258 'WKFrameInfo' => 'WebKit.WKFrameInfo, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x27B /* #259 'WKNavigation' => 'WebKit.WKNavigation, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x27D /* #260 'WKNavigationAction' => 'WebKit.WKNavigationAction, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x27F /* #261 'WKOpenPanelParameters' => 'WebKit.WKOpenPanelParameters, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x285 /* #262 'WKPreviewElementInfo' => 'WebKit.WKPreviewElementInfo, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x287 /* #263 'WKProcessPool' => 'WebKit.WKProcessPool, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x289 /* #264 'WKScriptMessage' => 'WebKit.WKScriptMessage, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x28B /* #265 'WKSecurityOrigin' => 'WebKit.WKSecurityOrigin, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x291 /* #266 'WKUserContentController' => 'WebKit.WKUserContentController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x293 /* #267 'WKUserScript' => 'WebKit.WKUserScript, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x295 /* #268 'WKWebpagePreferences' => 'WebKit.WKWebpagePreferences, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x297 /* #269 'WKWebsiteDataRecord' => 'WebKit.WKWebsiteDataRecord, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x299 /* #270 'WKWebViewConfiguration' => 'WebKit.WKWebViewConfiguration, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29B /* #271 'UIButtonConfiguration' => 'UIKit.UIButtonConfiguration, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29D /* #272 'NSLayoutManager' => 'UIKit.NSLayoutManager, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x29F /* #273 'Microsoft_iOS__UIKit_UIAppearance' => 'UIKit.UIAppearance, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2A1 /* #274 'UIBezierPath' => 'UIKit.UIBezierPath, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2A3 /* #275 'UICollectionViewLayoutAttributes' => 'UIKit.UICollectionViewLayoutAttributes, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2A5 /* #276 'UIKit_UIControlEventProxy' => 'UIKit.UIControlEventProxy, Microsoft.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x2A7 /* #277 'UIEvent' => 'UIKit.UIEvent, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2A9 /* #278 'UIFont' => 'UIKit.UIFont, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2AB /* #279 'UIFontDescriptor' => 'UIKit.UIFontDescriptor, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2AD /* #280 'UILongPressGestureRecognizer' => 'UIKit.UILongPressGestureRecognizer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2AF /* #281 'UIPanGestureRecognizer' => 'UIKit.UIPanGestureRecognizer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2B1 /* #282 'UIPinchGestureRecognizer' => 'UIKit.UIPinchGestureRecognizer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2B3 /* #283 'UISwipeGestureRecognizer' => 'UIKit.UISwipeGestureRecognizer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2B5 /* #284 'UIHoverGestureRecognizer' => 'UIKit.UIHoverGestureRecognizer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2B7 /* #285 'UIMenuElement' => 'UIKit.UIMenuElement, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2B9 /* #286 'UIMenu' => 'UIKit.UIMenu, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2BB /* #287 'UIPresentationController' => 'UIKit.UIPresentationController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2BD /* #288 'UIScene' => 'UIKit.UIScene, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2BF /* #289 'UIWindowScene' => 'UIKit.UIWindowScene, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2C1 /* #290 'UITraitCollection' => 'UIKit.UITraitCollection, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2CB /* #291 'UIVisualEffect' => 'UIKit.UIVisualEffect, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2CD /* #292 'NSAdaptiveImageGlyph' => 'UIKit.NSAdaptiveImageGlyph, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2CF /* #293 'NSCollectionLayoutItem' => 'UIKit.NSCollectionLayoutItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2D1 /* #294 'NSCollectionLayoutSupplementaryItem' => 'UIKit.NSCollectionLayoutSupplementaryItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2D3 /* #295 'NSCollectionLayoutBoundarySupplementaryItem' => 'UIKit.NSCollectionLayoutBoundarySupplementaryItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2D9 /* #296 'NSCollectionLayoutDimension' => 'UIKit.NSCollectionLayoutDimension, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2DF /* #297 'NSCollectionLayoutGroup' => 'UIKit.NSCollectionLayoutGroup, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2E1 /* #298 'NSCollectionLayoutSection' => 'UIKit.NSCollectionLayoutSection, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2E3 /* #299 'NSCollectionLayoutSize' => 'UIKit.NSCollectionLayoutSize, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2E5 /* #300 'NSCollectionLayoutSpacing' => 'UIKit.NSCollectionLayoutSpacing, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2EB /* #301 'NSLayoutAnchor' => 'UIKit.NSLayoutAnchor`1, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2ED /* #302 'NSLayoutDimension' => 'UIKit.NSLayoutDimension, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2EF /* #303 'NSLayoutXAxisAnchor' => 'UIKit.NSLayoutXAxisAnchor, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2F1 /* #304 'NSLayoutYAxisAnchor' => 'UIKit.NSLayoutYAxisAnchor, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2F3 /* #305 'NSParagraphStyle' => 'UIKit.NSParagraphStyle, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2F5 /* #306 'NSMutableParagraphStyle' => 'UIKit.NSMutableParagraphStyle, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2F7 /* #307 'NSShadow' => 'UIKit.NSShadow, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2F9 /* #308 'NSTextAttachment' => 'UIKit.NSTextAttachment, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2FB /* #309 'NSTextContainer' => 'UIKit.NSTextContainer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2FD /* #310 'UIAction' => 'UIKit.UIAction, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x2FF /* #311 'UIActivityViewController' => 'UIKit.UIActivityViewController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x301 /* #312 'UIAlertAction' => 'UIKit.UIAlertAction, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x303 /* #313 'UIApplicationShortcutIcon' => 'UIKit.UIApplicationShortcutIcon, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x305 /* #314 'UIApplicationShortcutItem' => 'UIKit.UIApplicationShortcutItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x307 /* #315 'UIBarAppearance' => 'UIKit.UIBarAppearance, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x309 /* #316 'UIBarButtonItemGroup' => 'UIKit.UIBarButtonItemGroup, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x30B /* #317 'UIBlurEffect' => 'UIKit.UIBlurEffect, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x315 /* #318 'UICollectionViewCompositionalLayoutConfiguration' => 'UIKit.UICollectionViewCompositionalLayoutConfiguration, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x31B /* #319 'UIDropProposal' => 'UIKit.UIDropProposal, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x31D /* #320 'UICollectionViewLayoutInvalidationContext' => 'UIKit.UICollectionViewLayoutInvalidationContext, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x31F /* #321 'UICollectionViewFlowLayoutInvalidationContext' => 'UIKit.UICollectionViewFlowLayoutInvalidationContext, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x321 /* #322 'UIFocusUpdateContext' => 'UIKit.UIFocusUpdateContext, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x323 /* #323 'UICollectionViewFocusUpdateContext' => 'UIKit.UICollectionViewFocusUpdateContext, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x325 /* #324 'UICollectionViewTransitionLayout' => 'UIKit.UICollectionViewTransitionLayout, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x327 /* #325 'UICollectionViewUpdateItem' => 'UIKit.UICollectionViewUpdateItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x329 /* #326 'UICommand' => 'UIKit.UICommand, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x32B /* #327 'UIContextMenuConfiguration' => 'UIKit.UIContextMenuConfiguration, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x335 /* #328 'UIMenuSystem' => 'UIKit.UIMenuSystem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x337 /* #329 'UIConversationContext' => 'UIKit.UIConversationContext, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x33D /* #330 'UICubicTimingParameters' => 'UIKit.UICubicTimingParameters, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x347 /* #331 'UIDragInteraction' => 'UIKit.UIDragInteraction, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x349 /* #332 'UIDragItem' => 'UIKit.UIDragItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x34B /* #333 'UIDragPreview' => 'UIKit.UIDragPreview, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x351 /* #334 'UIDropInteraction' => 'UIKit.UIDropInteraction, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x35B /* #335 'UIFontMetrics' => 'UIKit.UIFontMetrics, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x35D /* #336 'UIGraphicsRenderer' => 'UIKit.UIGraphicsRenderer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x35F /* #337 'UIGraphicsImageRenderer' => 'UIKit.UIGraphicsImageRenderer, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x361 /* #338 'UIGraphicsRendererContext' => 'UIKit.UIGraphicsRendererContext, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x363 /* #339 'UIGraphicsImageRendererContext' => 'UIKit.UIGraphicsImageRendererContext, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x365 /* #340 'UIGraphicsRendererFormat' => 'UIKit.UIGraphicsRendererFormat, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x367 /* #341 'UIGraphicsImageRendererFormat' => 'UIKit.UIGraphicsImageRendererFormat, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x369 /* #342 'UIInputSuggestion' => 'UIKit.UIInputSuggestion, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x36B /* #343 'UIKeyCommand' => 'UIKit.UIKeyCommand, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x371 /* #344 'UIListContentConfiguration' => 'UIKit.UIListContentConfiguration, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x373 /* #345 'UIListContentTextProperties' => 'UIKit.UIListContentTextProperties, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x375 /* #346 'UILocalNotification' => 'UIKit.UILocalNotification, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x37B /* #347 'UINavigationBarAppearance' => 'UIKit.UINavigationBarAppearance, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x37D /* #348 'UINavigationItem' => 'UIKit.UINavigationItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x387 /* #349 'UIOpenURLContext' => 'UIKit.UIOpenUrlContext, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x38D /* #350 'UIPress' => 'UIKit.UIPress, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x38F /* #351 'UISceneActivationRequestOptions' => 'UIKit.UISceneActivationRequestOptions, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x391 /* #352 'UISceneConfiguration' => 'UIKit.UISceneConfiguration, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x393 /* #353 'UISceneConnectionOptions' => 'UIKit.UISceneConnectionOptions, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x395 /* #354 'UISceneDestructionRequestOptions' => 'UIKit.UISceneDestructionRequestOptions, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x397 /* #355 'UISceneSession' => 'UIKit.UISceneSession, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x399 /* #356 'UISceneSessionActivationRequest' => 'UIKit.UISceneSessionActivationRequest, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x39B /* #357 'UISceneSizeRestrictions' => 'UIKit.UISceneSizeRestrictions, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x39D /* #358 'UISceneWindowingBehaviors' => 'UIKit.UISceneWindowingBehaviors, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x39F /* #359 'UISceneWindowingControlStyle' => 'UIKit.UISceneWindowingControlStyle, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3A5 /* #360 'Microsoft_iOS__UIKit_UISearchResultsUpdating' => 'UIKit.UISearchResultsUpdating, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3A7 /* #361 'UITab' => 'UIKit.UITab, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3B1 /* #362 'UISpringTimingParameters' => 'UIKit.UISpringTimingParameters, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3B3 /* #363 'UIStatusBarManager' => 'UIKit.UIStatusBarManager, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3B5 /* #364 'UITabBarAppearance' => 'UIKit.UITabBarAppearance, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3BB /* #365 'UITabBarItemAppearance' => 'UIKit.UITabBarItemAppearance, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3BD /* #366 'UITabBarItemStateAppearance' => 'UIKit.UITabBarItemStateAppearance, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3BF /* #367 'UITabGroup' => 'UIKit.UITabGroup, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3C1 /* #368 'UITargetedPreview' => 'UIKit.UITargetedPreview, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3C3 /* #369 'UITargetedDragPreview' => 'UIKit.UITargetedDragPreview, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3C5 /* #370 'UITextFormattingViewController' => 'UIKit.UITextFormattingViewController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3C7 /* #371 'UITextInputAssistantItem' => 'UIKit.UITextInputAssistantItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3C9 /* #372 'UITextInputPasswordRules' => 'UIKit.UITextInputPasswordRules, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3CB /* #373 'UITextItem' => 'UIKit.UITextItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3CD /* #374 'UITextItemMenuConfiguration' => 'UIKit.UITextItemMenuConfiguration, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3CF /* #375 'UITextPlaceholder' => 'UIKit.UITextPlaceholder, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3D1 /* #376 'UITextPosition' => 'UIKit.UITextPosition, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3D3 /* #377 'UITextRange' => 'UIKit.UITextRange, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3D5 /* #378 'UITextSelectionRect' => 'UIKit.UITextSelectionRect, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3D7 /* #379 'UIToolTipInteraction' => 'UIKit.UIToolTipInteraction, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3D9 /* #380 'UITouch' => 'UIKit.UITouch, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3DB /* #381 'UIUserNotificationSettings' => 'UIKit.UIUserNotificationSettings, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3F5 /* #382 'UIViewPropertyAnimator' => 'UIKit.UIViewPropertyAnimator, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3F7 /* #383 'UIWindowSceneGeometry' => 'UIKit.UIWindowSceneGeometry, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3F9 /* #384 'UIWindowSceneGeometryPreferences' => 'UIKit.UIWindowSceneGeometryPreferences, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x3FB /* #385 'UIWindowSceneGeometryPreferencesMac' => 'UIKit.UIWindowSceneGeometryPreferencesMac, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x401 /* #386 'NSString' => 'Foundation.NSString, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x403 /* #387 'CLRegion' => 'CoreLocation.CLRegion, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x405 /* #388 'CLBeaconRegion' => 'CoreLocation.CLBeaconRegion, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x407 /* #389 'CLBeacon' => 'CoreLocation.CLBeacon, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x409 /* #390 'CLBeaconIdentityConstraint' => 'CoreLocation.CLBeaconIdentityConstraint, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x40B /* #391 'CLHeading' => 'CoreLocation.CLHeading, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x40D /* #392 'CLLocation' => 'CoreLocation.CLLocation, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x40F /* #393 'CLVisit' => 'CoreLocation.CLVisit, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x411 /* #394 'NSValue' => 'Foundation.NSValue, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x413 /* #395 'Foundation_NSDispatcher' => 'Foundation.NSDispatcher, Microsoft.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x415 /* #396 '__MonoMac_NSActionDispatcher' => 'Foundation.NSActionDispatcher, Microsoft.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x417 /* #397 '__MonoMac_NSSynchronizationContextDispatcher' => 'Foundation.NSSynchronizationContextDispatcher, Microsoft.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x419 /* #398 'Foundation_NSAsyncDispatcher' => 'Foundation.NSAsyncDispatcher, Microsoft.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x41B /* #399 '__MonoMac_NSAsyncActionDispatcher' => 'Foundation.NSAsyncActionDispatcher, Microsoft.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x41D /* #400 '__MonoMac_NSAsyncSynchronizationContextDispatcher' => 'Foundation.NSAsyncSynchronizationContextDispatcher, Microsoft.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x41F /* #401 'NSArray' => 'Foundation.NSArray, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x421 /* #402 'NSDateComponents' => 'Foundation.NSDateComponents, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x423 /* #403 'NSError' => 'Foundation.NSError, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x425 /* #404 'Foundation_NSExceptionError' => 'Foundation.NSExceptionError, Microsoft.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x427 /* #405 'NSHTTPCookie' => 'Foundation.NSHttpCookie, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x429 /* #406 'NSStream' => 'Foundation.NSStream, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x42B /* #407 'NSInputStream' => 'Foundation.NSInputStream, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x42D /* #408 'NSAttributedString' => 'Foundation.NSAttributedString, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x42F /* #409 'NSMutableAttributedString' => 'Foundation.NSMutableAttributedString, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x431 /* #410 'NSSet' => 'Foundation.NSSet, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x433 /* #411 'NSMutableSet' => 'Foundation.NSMutableSet, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x435 /* #412 'NSURLRequest' => 'Foundation.NSUrlRequest, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x437 /* #413 'NSMutableURLRequest' => 'Foundation.NSMutableUrlRequest, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x439 /* #414 'Foundation_InternalNSNotificationHandler' => 'Foundation.InternalNSNotificationHandler, Microsoft.iOS' */, (MTTypeFlags) (2) /* UserType */ },
		{ NULL, 0x43B /* #415 'NSNull' => 'Foundation.NSNull, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x43D /* #416 'NSNumber' => 'Foundation.NSNumber, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x43F /* #417 'NSProxy' => 'Foundation.NSProxy, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x441 /* #418 'NSRunLoop' => 'Foundation.NSRunLoop, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x443 /* #419 'NSURLCredential' => 'Foundation.NSUrlCredential, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x445 /* #420 'NSURLProtectionSpace' => 'Foundation.NSUrlProtectionSpace, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x447 /* #421 'NSAutoreleasePool' => 'Foundation.NSAutoreleasePool, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x449 /* #422 'NSCachedURLResponse' => 'Foundation.NSCachedUrlResponse, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x44B /* #423 'NSDateFormatter' => 'Foundation.NSDateFormatter, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x44D /* #424 'NSException' => 'Foundation.NSException, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x44F /* #425 'NSURLResponse' => 'Foundation.NSUrlResponse, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x451 /* #426 'NSHTTPURLResponse' => 'Foundation.NSHttpUrlResponse, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x453 /* #427 'NSIndexSet' => 'Foundation.NSIndexSet, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x455 /* #428 'NSNotification' => 'Foundation.NSNotification, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x457 /* #429 'NSOperationQueue' => 'Foundation.NSOperationQueue, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x459 /* #430 'NSData' => 'Foundation.NSData, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x45B /* #431 'NSMutableData' => 'Foundation.NSMutableData, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x45D /* #432 'NSStringDrawingContext' => 'Foundation.NSStringDrawingContext, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x45F /* #433 'NSURLAuthenticationChallenge' => 'Foundation.NSUrlAuthenticationChallenge, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x465 /* #434 'Microsoft_iOS__Foundation_NSUrlSessionDelegate' => 'Foundation.NSUrlSessionDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x467 /* #435 'Microsoft_iOS__Foundation_NSUrlSessionTaskDelegate' => 'Foundation.NSUrlSessionTaskDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x469 /* #436 'Microsoft_iOS__Foundation_NSUrlSessionDataDelegate' => 'Foundation.NSUrlSessionDataDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x46B /* #437 'NSURLSessionTask' => 'Foundation.NSUrlSessionTask, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x46D /* #438 'NSURLSessionDataTask' => 'Foundation.NSUrlSessionDataTask, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x46F /* #439 'CAAnimation' => 'CoreAnimation.CAAnimation, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x471 /* #440 'CAPropertyAnimation' => 'CoreAnimation.CAPropertyAnimation, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x473 /* #441 'CABasicAnimation' => 'CoreAnimation.CABasicAnimation, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x475 /* #442 'CADisplayLink' => 'CoreAnimation.CADisplayLink, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x477 /* #443 'Microsoft_iOS__CoreAnimation_CALayerDelegate' => 'CoreAnimation.CALayerDelegate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x479 /* #444 'CNContactProperty' => 'Contacts.CNContactProperty, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x47B /* #445 'CNContact' => 'Contacts.CNContact, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x47D /* #446 'CKShareMetadata' => 'CloudKit.CKShareMetadata, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x47F /* #447 'ASAuthorization' => 'AuthenticationServices.ASAuthorization, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x481 /* #448 'ASAuthorizationController' => 'AuthenticationServices.ASAuthorizationController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x487 /* #449 'ASWebAuthenticationSession' => 'AuthenticationServices.ASWebAuthenticationSession, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x489 /* #450 'NSURLSession' => 'Foundation.NSUrlSession, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x48B /* #451 'UIKit_UIView_UIViewAppearance' => 'UIKit.UIView+UIViewAppearance, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x48D /* #452 'UIKit_UIScrollView_UIScrollViewAppearance' => 'UIKit.UIScrollView+UIScrollViewAppearance, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x48F /* #453 'UIKit_UIControl_UIControlAppearance' => 'UIKit.UIControl+UIControlAppearance, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x491 /* #454 'UIKit_UIButton_UIButtonAppearance' => 'UIKit.UIButton+UIButtonAppearance, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x493 /* #455 'MPVolumeView' => 'MediaPlayer.MPVolumeView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x495 /* #456 'UIKit_UIBarItem_UIBarItemAppearance' => 'UIKit.UIBarItem+UIBarItemAppearance, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x497 /* #457 'WKDownload' => 'WebKit.WKDownload, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x499 /* #458 'WKHTTPCookieStore' => 'WebKit.WKHttpCookieStore, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x49B /* #459 'WKWebsiteDataStore' => 'WebKit.WKWebsiteDataStore, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x49D /* #460 'UIApplication' => 'UIKit.UIApplication, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x49F /* #461 'UIKit_UIBarButtonItem_Callback' => 'UIKit.UIBarButtonItem+Callback, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4A1 /* #462 'UIColor' => 'UIKit.UIColor, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4A3 /* #463 'UIDevice' => 'UIKit.UIDevice, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4A5 /* #464 '__UIGestureRecognizerGenericCB' => 'UIKit.UIGestureRecognizer+Callback`1, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4A7 /* #465 '__UIGestureRecognizerParameterlessToken' => 'UIKit.UIGestureRecognizer+ParameterlessDispatch, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4A9 /* #466 '__UIGestureRecognizerParametrizedToken' => 'UIKit.UIGestureRecognizer+ParametrizedDispatch, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4AB /* #467 'UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate' => 'UIKit.UIGestureRecognizer+_UIGestureRecognizerDelegate, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4AD /* #468 'UIImage' => 'UIKit.UIImage, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4AF /* #469 'UIImagePickerController' => 'UIKit.UIImagePickerController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4B1 /* #470 'UIKit_UINavigationBar_UINavigationBarAppearance' => 'UIKit.UINavigationBar+UINavigationBarAppearance, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4B3 /* #471 'UIPickerView' => 'UIKit.UIPickerView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4B5 /* #472 'UIKit_UIPopoverPresentationController__UIPopoverPresentationControllerDelegate' => 'UIKit.UIPopoverPresentationController+_UIPopoverPresentationControllerDelegate, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4B7 /* #473 'UIPopoverPresentationController' => 'UIKit.UIPopoverPresentationController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4B9 /* #474 'UIScreen' => 'UIKit.UIScreen, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4BB /* #475 'UIKit_UISearchBar_UISearchBarAppearance' => 'UIKit.UISearchBar+UISearchBarAppearance, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4BD /* #476 'UIKit_UISearchBar__UISearchBarDelegate' => 'UIKit.UISearchBar+_UISearchBarDelegate, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4BF /* #477 'UIKit_UISearchController___Xamarin_UISearchResultsUpdating' => 'UIKit.UISearchController+__Xamarin_UISearchResultsUpdating, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4C1 /* #478 'UISearchController' => 'UIKit.UISearchController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4C3 /* #479 'UIKit_UITableView_UITableViewAppearance' => 'UIKit.UITableView+UITableViewAppearance, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4C5 /* #480 'UITableView' => 'UIKit.UITableView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4C7 /* #481 'UIKit_UITextField__UITextFieldDelegate' => 'UIKit.UITextField+_UITextFieldDelegate, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4C9 /* #482 'UIKit_UIScrollView__UIScrollViewDelegate' => 'UIKit.UIScrollView+_UIScrollViewDelegate, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4CB /* #483 'UIKit_UITextView__UITextViewDelegate' => 'UIKit.UITextView+_UITextViewDelegate, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4CD /* #484 'NSTextStorage' => 'UIKit.NSTextStorage, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4CF /* #485 'UIDatePicker' => 'UIKit.UIDatePicker, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4D1 /* #486 'UIDocumentPickerViewController' => 'UIKit.UIDocumentPickerViewController, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4D3 /* #487 'UIFocusAnimationCoordinator' => 'UIKit.UIFocusAnimationCoordinator, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4D5 /* #488 'UIProgressView' => 'UIKit.UIProgressView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4D7 /* #489 'UISearchTextField' => 'UIKit.UISearchTextField, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4D9 /* #490 'UISlider' => 'UIKit.UISlider, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4DB /* #491 'UIStackView' => 'UIKit.UIStackView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4DD /* #492 'UIStepper' => 'UIKit.UIStepper, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4DF /* #493 'UIKit_UISwitch_UISwitchAppearance' => 'UIKit.UISwitch+UISwitchAppearance, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4E1 /* #494 'UISwitch' => 'UIKit.UISwitch, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4E3 /* #495 'UIKit_UITabBar_UITabBarAppearance' => 'UIKit.UITabBar+UITabBarAppearance, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4E5 /* #496 'UITabBar' => 'UIKit.UITabBar, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4E7 /* #497 'UIKit_UITabBarController__UITabBarControllerDelegate' => 'UIKit.UITabBarController+_UITabBarControllerDelegate, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4E9 /* #498 'UIKit_UITabBarItem_UITabBarItemAppearance' => 'UIKit.UITabBarItem+UITabBarItemAppearance, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x4EB /* #499 'UITabBarItem' => 'UIKit.UITabBarItem, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4ED /* #500 'UIVisualEffectView' => 'UIKit.UIVisualEffectView, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4EF /* #501 'UIWindow' => 'UIKit.UIWindow, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4F1 /* #502 'CLLocationManager' => 'CoreLocation.CLLocationManager, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4F3 /* #503 'NSIndexPath' => 'Foundation.NSIndexPath, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4F5 /* #504 'NSBundle' => 'Foundation.NSBundle, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4F7 /* #505 'NSDate' => 'Foundation.NSDate, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4F9 /* #506 'NSDictionary' => 'Foundation.NSDictionary, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4FB /* #507 'NSItemProvider' => 'Foundation.NSItemProvider, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4FD /* #508 'NSLocale' => 'Foundation.NSLocale, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x4FF /* #509 'NSMutableDictionary' => 'Foundation.NSMutableDictionary, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x501 /* #510 'NSNotificationCenter' => 'Foundation.NSNotificationCenter, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x503 /* #511 '__NSObject_Disposer' => 'Foundation.NSObject+NSObject_Disposer, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x505 /* #512 '__XamarinObjectObserver' => 'Foundation.NSObject+Observer, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x507 /* #513 'NSProgress' => 'Foundation.NSProgress, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x509 /* #514 'NSThread' => 'Foundation.NSThread, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x50B /* #515 'NSTimeZone' => 'Foundation.NSTimeZone, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x50D /* #516 'NSUndoManager' => 'Foundation.NSUndoManager, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x50F /* #517 'NSURL' => 'Foundation.NSUrl, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x511 /* #518 'NSURLSessionConfiguration' => 'Foundation.NSUrlSessionConfiguration, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x513 /* #519 'NSUserDefaults' => 'Foundation.NSUserDefaults, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x515 /* #520 'NSCache' => 'Foundation.NSCache, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x517 /* #521 'NSCalendar' => 'Foundation.NSCalendar, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x519 /* #522 'NSHTTPCookieStorage' => 'Foundation.NSHttpCookieStorage, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x51B /* #523 'NSUserActivity' => 'Foundation.NSUserActivity, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x51D /* #524 'System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream' => 'System.Net.Http.NSUrlSessionHandler+WrappedNSInputStream, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0x51F /* #525 'ASAuthorizationAppleIDCredential' => 'AuthenticationServices.ASAuthorizationAppleIdCredential, Microsoft.iOS' */, (MTTypeFlags) (0) /* None */ },
		{ NULL, 0x521 /* #526 'System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate' => 'System.Net.Http.NSUrlSessionHandler+NSUrlSessionHandlerDelegate, Microsoft.iOS' */, (MTTypeFlags) (3) /* CustomType, UserType */ },
		{ NULL, 0, 0 },
	};

	static const MTManagedClassMap __xamarin_skipped_map [] = {
		{ 0x523, 0x433 /* 'Foundation.NSMutableSet`1' => 'Foundation.NSMutableSet' */ },
		{ 0x525, 0x431 /* 'Foundation.NSSet`1' => 'Foundation.NSSet' */ },
		{ 0x527, 0x4F9 /* 'Foundation.NSDictionary`2' => 'Foundation.NSDictionary' */ },
		{ 0x529, 0x4FF /* 'Foundation.NSMutableDictionary`2' => 'Foundation.NSMutableDictionary' */ },
	};

	static const MTAssembly __xamarin_registration_assemblies [] = {
		{ "aot-instances", "55a778a8-6ee7-4930-bc8a-ca33f5963eab" }, 
		{ "FindMyMoney.UI", "6a82c263-1c5f-4f29-8701-0d2f79bcd42f" }, 
		{ "Microsoft.Extensions.Configuration", "586e203e-ab5a-4f51-9d84-4274e597ddc3" }, 
		{ "Microsoft.Extensions.Configuration.Abstractions", "9a6d41e7-b418-440a-826c-6bc628c5db7c" }, 
		{ "Microsoft.Extensions.DependencyInjection", "0a5bf98e-c4fe-4b44-aa75-2fb092050a5b" }, 
		{ "Microsoft.Extensions.DependencyInjection.Abstractions", "212fbdee-317d-40b8-a17a-da44986e638e" }, 
		{ "Microsoft.Extensions.Diagnostics.Abstractions", "30cfe353-0ff7-4838-ba44-16ffa2a9e398" }, 
		{ "Microsoft.Extensions.FileProviders.Abstractions", "3e01f509-6f2f-4e70-91f8-21914e732dc5" }, 
		{ "Microsoft.Extensions.Hosting.Abstractions", "fac0fccf-aeaa-4f81-9065-17932906c3b4" }, 
		{ "Microsoft.Extensions.Logging", "9ebc55a5-9e36-4e65-891a-7761d43b3f97" }, 
		{ "Microsoft.Extensions.Logging.Abstractions", "15fd936c-20b7-48b6-9697-2fae30668b43" }, 
		{ "Microsoft.Extensions.Logging.Debug", "8211e0e8-f115-463c-9fff-2cf940cda124" }, 
		{ "Microsoft.Extensions.Options", "585f0cc2-3abe-47f2-9c7c-5c5ca6bf2e56" }, 
		{ "Microsoft.Extensions.Primitives", "d03a77a9-dc6b-42b4-af81-7bd63615dd37" }, 
		{ "Microsoft.Maui.Controls", "21902148-6682-438b-9056-5ea4d252384b" }, 
		{ "Microsoft.Maui.Controls.Xaml", "38b3e2a8-0b72-4342-a636-7f2a8332c527" }, 
		{ "Microsoft.Maui", "29d52022-70a1-4622-9e42-085f06f5a8c3" }, 
		{ "Microsoft.Maui.Essentials", "a379be80-16d4-4018-a57f-21f433a92705" }, 
		{ "Microsoft.Maui.Graphics", "ccd194e0-ac7a-4eac-aed2-e44b39a55199" }, 
		{ "Microsoft.CSharp", "c2108118-27bb-4be1-a3c0-5026c208206b" }, 
		{ "Microsoft.VisualBasic.Core", "eeb65362-ccff-44c2-90c1-217d71f66756" }, 
		{ "Microsoft.VisualBasic", "abcf3e90-1f3c-4959-b18c-4120b5eb8b07" }, 
		{ "Microsoft.Win32.Primitives", "2facbb4b-c290-4b3a-91d9-d0449e15f325" }, 
		{ "Microsoft.Win32.Registry", "4a3fda75-08a8-4649-b67d-f4b2745f7962" }, 
		{ "System.AppContext", "e54c7938-7e7d-40af-a4e3-fce1477d5310" }, 
		{ "System.Buffers", "601b2b69-c8f8-418a-91b8-48b8cf47f738" }, 
		{ "System.Collections.Concurrent", "546b93e2-97fe-4086-a765-6894318e7159" }, 
		{ "System.Collections.Immutable", "514cba2b-d5a4-43a1-b3f5-4e2e78cde037" }, 
		{ "System.Collections.NonGeneric", "82d53dfc-8855-4c2a-982f-e7a3786cf0cf" }, 
		{ "System.Collections.Specialized", "fe754fcb-76ec-4b5b-a6f2-f04373d1c12f" }, 
		{ "System.Collections", "0e9b01d5-5dc4-4ff3-8ff0-f12a301ffacd" }, 
		{ "System.ComponentModel.Annotations", "724d11e9-1cf3-45f3-8623-9ae339a7ca49" }, 
		{ "System.ComponentModel.DataAnnotations", "d766a1c7-ff39-4203-beba-8678d944cf72" }, 
		{ "System.ComponentModel.EventBasedAsync", "6ff89dd0-9fb6-4c45-935e-437ff73d3f09" }, 
		{ "System.ComponentModel.Primitives", "3c9f6a5f-2597-4bae-8dbc-58539473bf03" }, 
		{ "System.ComponentModel.TypeConverter", "5411defb-569b-4dd9-8c6f-1a83c1bf6d9f" }, 
		{ "System.ComponentModel", "dccb38f0-dc37-4cd8-a5d3-998d2c9789b2" }, 
		{ "System.Configuration", "f3a9987b-41ea-48a9-bd22-286f100c9adf" }, 
		{ "System.Console", "eac5fb87-22e0-4103-a081-b5e438509aae" }, 
		{ "System.Core", "f574cab1-1eae-43b7-a51f-15f2a04f6073" }, 
		{ "System.Data.Common", "a3e1c1eb-a60a-4802-a8a9-fbba3d633812" }, 
		{ "System.Data.DataSetExtensions", "dd95d059-3564-4ddd-9b13-ad9872025e08" }, 
		{ "System.Data", "82a2f8e3-9b74-41c3-af80-7504b3b01926" }, 
		{ "System.Diagnostics.Contracts", "c3c6dfbd-a425-45cf-9f2c-599e867cb8ad" }, 
		{ "System.Diagnostics.Debug", "e4a5edc6-2b8c-4fd3-a61b-0be70d48702e" }, 
		{ "System.Diagnostics.DiagnosticSource", "149d1a28-37c2-418f-957d-81eedb1be705" }, 
		{ "System.Diagnostics.FileVersionInfo", "adb6cd57-26ad-496d-92b0-e05fd35285d1" }, 
		{ "System.Diagnostics.Process", "dc6aa5d9-2753-49f6-afc1-f81e9e34b102" }, 
		{ "System.Diagnostics.StackTrace", "e7633c1b-dc27-49a5-b9f8-b3b4be337fd2" }, 
		{ "System.Diagnostics.TextWriterTraceListener", "30da6d33-6eb0-419b-adfc-55b3924cf6f5" }, 
		{ "System.Diagnostics.Tools", "7eff2cc8-7359-4587-b480-e61287b923f1" }, 
		{ "System.Diagnostics.TraceSource", "6ae9ef7d-27ca-4f7b-9e9c-6009a730aae8" }, 
		{ "System.Diagnostics.Tracing", "b3866fd6-c1a2-4b01-bc92-d4df7861dbde" }, 
		{ "System.Drawing.Primitives", "94099d6c-0433-4858-988c-7aa1e924e414" }, 
		{ "System.Drawing", "33f79190-ff2c-43b8-9206-61357ab56c7d" }, 
		{ "System.Dynamic.Runtime", "1e65dd50-98d4-4800-98a1-a89c4e04fbf6" }, 
		{ "System.Formats.Asn1", "5f6d0e74-81e9-4a71-9cb7-df2c2295dfd5" }, 
		{ "System.Formats.Tar", "1bc73a25-e34d-41ca-acc0-67f41a212b05" }, 
		{ "System.Globalization.Calendars", "9385235d-1275-4274-aea8-ac24eec2fb6a" }, 
		{ "System.Globalization.Extensions", "e7da797c-c247-4b81-a76c-14dceaa07721" }, 
		{ "System.Globalization", "d546d4de-875d-4901-96de-ffa8231e9882" }, 
		{ "System.IO.Compression.Brotli", "a45c5d86-e8d0-48e5-b9f9-5253d8aa2d7b" }, 
		{ "System.IO.Compression.FileSystem", "61304b59-a04c-4c6c-b8e9-f803f145b042" }, 
		{ "System.IO.Compression.ZipFile", "81906450-784d-4940-bc75-673302187a18" }, 
		{ "System.IO.Compression", "43f5b898-6903-42a8-94fd-265eac46a9e2" }, 
		{ "System.IO.FileSystem.AccessControl", "ec863288-fd9a-47c9-906d-99613924c26b" }, 
		{ "System.IO.FileSystem.DriveInfo", "0ed2d5d9-549c-45b8-bc8c-5b10b7e9fc24" }, 
		{ "System.IO.FileSystem.Primitives", "cc97fcba-695f-428e-9d98-b134089e188f" }, 
		{ "System.IO.FileSystem.Watcher", "0aee5da4-475c-49c0-9728-8c6f5aaf6391" }, 
		{ "System.IO.FileSystem", "5d6abb60-204c-4638-8e4c-c9b057e7d5e1" }, 
		{ "System.IO.IsolatedStorage", "0e12d072-3a87-4884-b83b-3b3bede1e4ca" }, 
		{ "System.IO.MemoryMappedFiles", "c6e75a5b-707c-4147-9e9c-3233c623afcc" }, 
		{ "System.IO.Pipelines", "5de5217b-1028-49cd-a9a4-add4011c9835" }, 
		{ "System.IO.Pipes.AccessControl", "dd88e963-328e-4e02-8a39-39552e5b54fe" }, 
		{ "System.IO.Pipes", "e7c02e1d-8011-42b7-b4d0-c0c8e5a7d6d1" }, 
		{ "System.IO.UnmanagedMemoryStream", "4078e97d-acde-429c-99e7-5dd5dd90404a" }, 
		{ "System.IO", "464aa471-1b49-4447-ac26-e9ffc64ef10d" }, 
		{ "System.Linq.AsyncEnumerable", "a1d91fce-5156-4918-9068-2a5ce58cf111" }, 
		{ "System.Linq.Expressions", "1449c5f2-3d78-4478-87e9-5c1cc1eb6e50" }, 
		{ "System.Linq.Parallel", "e5d4d0d2-62e3-4b45-be59-97d42209b88d" }, 
		{ "System.Linq.Queryable", "3ea26509-d682-4c7d-94d0-a547d79ef9cc" }, 
		{ "System.Linq", "c70210a3-da13-4e19-ac74-e80508d0c447" }, 
		{ "System.Memory", "c8c8306a-f6a2-440b-87f2-a5546cf6c8be" }, 
		{ "System.Net.Http.Json", "d3c48f65-8748-483e-a981-a2299916add3" }, 
		{ "System.Net.Http", "a2bba5a3-ada7-4759-bfc7-012fe44c1208" }, 
		{ "System.Net.HttpListener", "a5f549a4-4575-4279-a631-f866d38c8827" }, 
		{ "System.Net.Mail", "6af2fe33-efab-4683-90ca-af3f9596def5" }, 
		{ "System.Net.NameResolution", "43f22599-c5d9-4e26-ac10-6658c65637e0" }, 
		{ "System.Net.NetworkInformation", "f1385811-f4e1-4ad8-b0b2-58b10869ab41" }, 
		{ "System.Net.Ping", "f73dc631-de92-4b41-ab41-d5e12b651775" }, 
		{ "System.Net.Primitives", "762c2f3b-7cf1-4c2b-a8c0-013cf9658aae" }, 
		{ "System.Net.Quic", "4b7f9ac2-316a-456d-b82f-e0a66c727945" }, 
		{ "System.Net.Requests", "5ed718ca-966b-471a-a4a4-0deacda2ac83" }, 
		{ "System.Net.Security", "20e08948-f320-4997-a678-f73b9885148e" }, 
		{ "System.Net.ServerSentEvents", "4c50ae41-f453-4802-8be8-2be5cd54944b" }, 
		{ "System.Net.ServicePoint", "5b52873f-d44e-46cb-87f6-3aa22f154d3f" }, 
		{ "System.Net.Sockets", "9066dff7-5a85-4fd8-b369-6816bcc4588a" }, 
		{ "System.Net.WebClient", "bb6e85bb-a9dc-46b9-bb23-7b00370fe20b" }, 
		{ "System.Net.WebHeaderCollection", "50be2958-15eb-4dab-ad0c-949e292e9325" }, 
		{ "System.Net.WebProxy", "d46c4cfe-c373-424c-baf1-d4c18fea5390" }, 
		{ "System.Net.WebSockets.Client", "7efefba8-7760-4f02-a7db-698fc57aede1" }, 
		{ "System.Net.WebSockets", "d88cdb77-fba9-42ba-8fe8-320fcda3509f" }, 
		{ "System.Net", "8909393e-3d3c-4df2-81f9-2dcd989134ff" }, 
		{ "System.Numerics.Vectors", "00229814-68bc-41d7-9d89-1e9de9f04bc2" }, 
		{ "System.Numerics", "ae5852db-8dde-40cc-998c-bd69f843acc8" }, 
		{ "System.ObjectModel", "081e753f-2915-40a7-b87c-f30177ddf2ad" }, 
		{ "System.Private.DataContractSerialization", "1f606505-c815-47ae-9e2e-1480499b6beb" }, 
		{ "System.Private.Uri", "71492b57-ef33-4d77-ac07-39c0ef3d6132" }, 
		{ "System.Private.Xml.Linq", "4e3de7be-1d2d-49f6-aa49-2acd5c2075a2" }, 
		{ "System.Private.Xml", "df0ba65e-8bc6-4efc-919f-24990423bf84" }, 
		{ "System.Reflection.DispatchProxy", "666a5dfc-c28a-453d-8912-88478fb52d08" }, 
		{ "System.Reflection.Emit.ILGeneration", "c6d1c9a6-0bf5-4186-8844-d06724a0eb15" }, 
		{ "System.Reflection.Emit.Lightweight", "e607fea7-4c85-48dc-a5d3-8c822e52877d" }, 
		{ "System.Reflection.Emit", "ebab5b88-1158-4ed6-afae-a68ea28d478b" }, 
		{ "System.Reflection.Extensions", "a740d521-352e-4c90-a8c3-9698e715f195" }, 
		{ "System.Reflection.Metadata", "558da112-98a1-4456-8e45-fc8a368517a9" }, 
		{ "System.Reflection.Primitives", "edb073ef-eeeb-4237-ba87-a9ab9020d8f9" }, 
		{ "System.Reflection.TypeExtensions", "e59fd027-8c5a-4efc-a973-60626d254363" }, 
		{ "System.Reflection", "307416ee-2668-48b0-84f8-3c0cc02e64e2" }, 
		{ "System.Resources.Reader", "233b25de-531a-4311-a976-062b039e0e66" }, 
		{ "System.Resources.ResourceManager", "bfdbf36e-a6df-40e8-93f4-23df50d736d6" }, 
		{ "System.Resources.Writer", "b8a66e4e-d8fc-4b1f-8d2e-ca0cd31f2995" }, 
		{ "System.Runtime.CompilerServices.Unsafe", "9d381f67-8680-416e-9605-65c32f999fa3" }, 
		{ "System.Runtime.CompilerServices.VisualC", "82e7c997-26dc-4a2d-a024-cb6f6328da1c" }, 
		{ "System.Runtime.Extensions", "c8c5ccbe-6bf6-4c2f-af58-7a4940e98ddd" }, 
		{ "System.Runtime.Handles", "c3982a14-7298-4446-acb9-9305e4b7c2e9" }, 
		{ "System.Runtime.InteropServices.JavaScript", "8db0fdb9-435e-4d4c-bdeb-17896f78ce86" }, 
		{ "System.Runtime.InteropServices.RuntimeInformation", "f80d7617-50cf-411f-be8a-371ce2efa4ad" }, 
		{ "System.Runtime.InteropServices", "3a6b6f5d-586a-40b5-83da-f49b78892667" }, 
		{ "System.Runtime.Intrinsics", "376dc2d3-dd9b-4815-9867-0de90696fefb" }, 
		{ "System.Runtime.Loader", "797de431-f7cb-4859-aefc-9ebcbd2db8de" }, 
		{ "System.Runtime.Numerics", "8f0dd751-4e6e-41f5-ba76-0c11675889f2" }, 
		{ "System.Runtime.Serialization.Formatters", "d9b7f9bc-180e-4d87-a0a5-a3b01d180486" }, 
		{ "System.Runtime.Serialization.Json", "465fc583-a70e-45d1-92f3-79600435e766" }, 
		{ "System.Runtime.Serialization.Primitives", "1ea14023-155b-44ae-bb75-e1cdb51ef830" }, 
		{ "System.Runtime.Serialization.Xml", "10b8cc0a-4606-4808-83bf-9355a69b15ab" }, 
		{ "System.Runtime.Serialization", "cde27ed3-9c6f-4a9a-8418-e5dad729a240" }, 
		{ "System.Runtime", "6019c043-8bd3-48a2-8dae-1aab2cf7575b" }, 
		{ "System.Security.AccessControl", "1921e3cc-6166-4d56-a2fc-33d165979c6e" }, 
		{ "System.Security.Claims", "bab0b25e-4552-4151-bc27-41843bd8894a" }, 
		{ "System.Security.Cryptography.Algorithms", "d50f7257-fd70-43fb-a71e-6eb1b98c2ce5" }, 
		{ "System.Security.Cryptography.Cng", "4490a99b-c04a-4c19-bbfa-7bc4b5e6fc4c" }, 
		{ "System.Security.Cryptography.Csp", "c718c0a7-60b0-4a78-8060-b2b12e6f4438" }, 
		{ "System.Security.Cryptography.Encoding", "f6ded8f8-af77-498c-a45b-9e6415164ab7" }, 
		{ "System.Security.Cryptography.OpenSsl", "1355f588-6fa5-46fc-85eb-df30abbe647d" }, 
		{ "System.Security.Cryptography.Primitives", "87027546-2f1c-4f31-b563-6f1e3c0798c9" }, 
		{ "System.Security.Cryptography.X509Certificates", "89921d33-bf86-4f91-a204-323560ac6d45" }, 
		{ "System.Security.Cryptography", "144de61e-6075-4ded-a7c1-f742a41d4e5c" }, 
		{ "System.Security.Principal.Windows", "e6aac07e-6ce9-46fd-af14-bba7ff853504" }, 
		{ "System.Security.Principal", "2fc21766-49fb-4cde-bdda-b968330cb21b" }, 
		{ "System.Security.SecureString", "af9ad640-997c-4592-a982-3f9d2bc6cf4d" }, 
		{ "System.Security", "1b56f0ea-fbc1-48fb-99e2-a6fa7c439a7d" }, 
		{ "System.ServiceModel.Web", "bf5c5321-677a-4ba9-a646-a129ceebfdb3" }, 
		{ "System.ServiceProcess", "a6b2f407-5bc3-495c-ba64-910c75520064" }, 
		{ "System.Text.Encoding.CodePages", "e39f3447-7fb2-49df-85f5-25a543ad3b63" }, 
		{ "System.Text.Encoding.Extensions", "24b63bae-2a1a-4494-a5b6-dc2da061c986" }, 
		{ "System.Text.Encoding", "811b295e-09a7-4477-9cbf-430c6d85bd6a" }, 
		{ "System.Text.Encodings.Web", "9652278f-c114-4c21-8742-47f1d2c1680c" }, 
		{ "System.Text.Json", "4a433610-a434-4f1f-be9c-088f250fe0c3" }, 
		{ "System.Text.RegularExpressions", "08e4dd05-3b6f-4859-9818-6287cb07aeb0" }, 
		{ "System.Threading.AccessControl", "81b9ee97-d073-4ab4-a31b-b8112b664672" }, 
		{ "System.Threading.Channels", "f145b1cd-17df-49a2-986a-a61379a18a45" }, 
		{ "System.Threading.Overlapped", "cf8abf1e-8c77-412c-82f6-2e36328f4855" }, 
		{ "System.Threading.Tasks.Dataflow", "a8e6d59b-50c6-4de5-94b8-2d71c9d87b6d" }, 
		{ "System.Threading.Tasks.Extensions", "fd287721-639a-4a37-8b43-7d56d0ce896b" }, 
		{ "System.Threading.Tasks.Parallel", "cbec2e32-a342-449d-b758-36d89abdd060" }, 
		{ "System.Threading.Tasks", "359641f9-0464-4b63-b858-79a6902fc288" }, 
		{ "System.Threading.Thread", "e69cfb48-fa8f-4a26-82e1-0743d2f42eb5" }, 
		{ "System.Threading.ThreadPool", "dc1f4a8f-292b-40b5-b83a-97a0f0ce2643" }, 
		{ "System.Threading.Timer", "b78e18a2-ef74-4e72-8812-21d025945437" }, 
		{ "System.Threading", "2b251b81-2398-423f-bad8-d7d1aec5adfb" }, 
		{ "System.Transactions.Local", "86197daa-e540-4b8e-aaa7-90331e1b1b06" }, 
		{ "System.Transactions", "62304480-9395-49c4-a33c-11001c278123" }, 
		{ "System.ValueTuple", "4112d99e-720e-4043-9ca7-c3ccf73349f8" }, 
		{ "System.Web.HttpUtility", "e72b94ae-67be-48f7-b276-3f6e422434d9" }, 
		{ "System.Web", "eb53313e-ee3e-4c1b-80a5-b9c43aed4681" }, 
		{ "System.Windows", "01c5bd77-67ca-488b-a863-112d1ea2a500" }, 
		{ "System.Xml.Linq", "a12a9974-cccf-4c3d-8387-2e0ebba0a0c2" }, 
		{ "System.Xml.ReaderWriter", "f4b81bbe-d821-4f6b-8e66-0e1096aeda44" }, 
		{ "System.Xml.Serialization", "4d0f9386-f98b-445e-a3b4-e24b5d9c9729" }, 
		{ "System.Xml.XDocument", "63432859-1e69-4103-a2c0-bb434ae2c2dc" }, 
		{ "System.Xml.XPath.XDocument", "61790948-fed1-47b7-96e4-164044ac987f" }, 
		{ "System.Xml.XPath", "3d254447-75c9-4475-81e5-b41e3978ea19" }, 
		{ "System.Xml.XmlDocument", "524c3f14-ca9e-4f8d-adc1-4d3371cbe587" }, 
		{ "System.Xml.XmlSerializer", "eaea40d2-0cd6-4ae7-b1b1-4947760ac7dc" }, 
		{ "System.Xml", "61214a70-89f9-4f8e-ad1b-3d99c49ee86c" }, 
		{ "System", "13de6dc4-f180-4c08-85f7-f2e544f2e99f" }, 
		{ "WindowsBase", "ce7affd7-f38f-4d6a-bdf4-3a0d302ed32e" }, 
		{ "mscorlib", "641e57a0-0b4a-4225-8ef0-17eca23d4a29" }, 
		{ "netstandard", "cfbbe771-32ad-4813-8775-040863e14259" }, 
		{ "System.Private.CoreLib", "f60eefca-abc8-482e-a248-61b976fbcfc6" }, 
		{ "Microsoft.iOS", "6d55a9ef-1b1f-4e7d-952b-0bab2f766163" }
	};

	static const MTFullTokenReference __xamarin_token_references [] = {
		{ /* #1 = 0x1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000000 /* Foundation.NSObject */ },
		{ /* #2 = 0x3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000001 /* UIKit.UIResponder */ },
		{ /* #3 = 0x5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000002 /* UIKit.IUIApplicationDelegate */ },
		{ /* #4 = 0x7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001A7 /* UIKit.UIApplicationDelegateWrapper */ },
		{ /* #5 = 0x9 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000000 /* Microsoft.Maui.MauiUIApplicationDelegate */ },
		{ /* #6 = 0xB */ 1 /* FindMyMoney.UI */, 0xFFFFFFFF /* FindMyMoney.UI.dll */, 0x2000000 /* FindMyMoney.AppDelegate */ },
		{ /* #7 = 0xD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000003 /* UIKit.UIGestureRecognizer */ },
		{ /* #8 = 0xF */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000000 /* Microsoft.Maui.Controls.Compatibility.Platform.iOS.GlobalCloseContextGestureRecognizer */ },
		{ /* #9 = 0x11 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000001 /* Microsoft.Maui.Controls.Compatibility.Platform.iOS.NativeViewPropertyListener */ },
		{ /* #10 = 0x13 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000004 /* UIKit.UIViewController */ },
		{ /* #11 = 0x15 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000001 /* Microsoft.Maui.Platform.ModalWrapper */ },
		{ /* #12 = 0x17 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000005 /* UIKit.IUIAdaptivePresentationControllerDelegate */ },
		{ /* #13 = 0x19 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001A6 /* UIKit.UIAdaptivePresentationControllerDelegateWrapper */ },
		{ /* #14 = 0x1B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000002 /* Microsoft.Maui.Controls.Platform.ControlsModalWrapper */ },
		{ /* #15 = 0x1D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000006 /* UIKit.IUICoordinateSpace */ },
		{ /* #16 = 0x1F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001AD /* UIKit.UICoordinateSpaceWrapper */ },
		{ /* #17 = 0x21 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000007 /* UIKit.IUIDynamicItem */ },
		{ /* #18 = 0x23 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001B4 /* UIKit.UIDynamicItemWrapper */ },
		{ /* #19 = 0x25 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000008 /* UIKit.UIView */ },
		{ /* #20 = 0x27 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000003 /* Microsoft.Maui.Controls.Platform.Compatibility.UIContainerView */ },
		{ /* #21 = 0x29 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000004 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellFlyoutHeaderContainer */ },
		{ /* #22 = 0x2B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000009 /* UIKit.UITabBarController */ },
		{ /* #23 = 0x2D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200000A /* UIKit.IUINavigationControllerDelegate */ },
		{ /* #24 = 0x2F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001BB /* UIKit.UINavigationControllerDelegateWrapper */ },
		{ /* #25 = 0x31 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000005 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellItemRenderer */ },
		{ /* #26 = 0x33 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200000B /* UIKit.IUITableViewDataSource */ },
		{ /* #27 = 0x35 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001C4 /* UIKit.UITableViewDataSourceWrapper */ },
		{ /* #28 = 0x37 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200000C /* UIKit.IUIScrollViewDelegate */ },
		{ /* #29 = 0x39 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001C0 /* UIKit.UIScrollViewDelegateWrapper */ },
		{ /* #30 = 0x3B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200000D /* UIKit.UITableViewController */ },
		{ /* #31 = 0x3D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000006 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellTableViewController */ },
		{ /* #32 = 0x3F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200000E /* UIKit.IUIGestureRecognizerDelegate */ },
		{ /* #33 = 0x41 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001B6 /* UIKit.UIGestureRecognizerDelegateWrapper */ },
		{ /* #34 = 0x43 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200000F /* UIKit.UITableViewCell */ },
		{ /* #35 = 0x45 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000007 /* Microsoft.Maui.Controls.Platform.Compatibility.UIContainerCell */ },
		{ /* #36 = 0x47 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000010 /* UIKit.UICollectionReusableView */ },
		{ /* #37 = 0x49 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000011 /* UIKit.UICollectionViewCell */ },
		{ /* #38 = 0x4B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000008 /* Microsoft.Maui.Controls.Handlers.Items.ItemsViewCell */ },
		{ /* #39 = 0x4D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000009 /* Microsoft.Maui.Controls.Handlers.Items.TemplatedCell */ },
		{ /* #40 = 0x4F */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200000A /* Microsoft.Maui.Controls.Handlers.Items.CarouselTemplatedCell */ },
		{ /* #41 = 0x51 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000012 /* UIKit.IUICollectionViewDelegate */ },
		{ /* #42 = 0x53 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001A9 /* UIKit.UICollectionViewDelegateWrapper */ },
		{ /* #43 = 0x55 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000013 /* UIKit.UICollectionViewDelegate */ },
		{ /* #44 = 0x57 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000014 /* UIKit.UICollectionViewDelegateFlowLayout */ },
		{ /* #45 = 0x59 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200000B /* Microsoft.Maui.Controls.Handlers.Items.ItemsViewDelegator`2 */ },
		{ /* #46 = 0x5B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200000C /* Microsoft.Maui.Controls.Handlers.Items.CarouselViewDelegator */ },
		{ /* #47 = 0x5D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000015 /* UIKit.UICollectionViewLayout */ },
		{ /* #48 = 0x5F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000016 /* UIKit.UICollectionViewFlowLayout */ },
		{ /* #49 = 0x61 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200000D /* Microsoft.Maui.Controls.Handlers.Items.ItemsViewLayout */ },
		{ /* #50 = 0x63 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200000E /* Microsoft.Maui.Controls.Handlers.Items.CarouselViewLayout */ },
		{ /* #51 = 0x65 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200000F /* Microsoft.Maui.Controls.Handlers.Items.DefaultCell */ },
		{ /* #52 = 0x67 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000010 /* Microsoft.Maui.Controls.Handlers.Items.GridViewLayout */ },
		{ /* #53 = 0x69 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000017 /* UIKit.UICollectionViewController */ },
		{ /* #54 = 0x6B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000011 /* Microsoft.Maui.Controls.Handlers.Items.ItemsViewController`1 */ },
		{ /* #55 = 0x6D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000012 /* Microsoft.Maui.Controls.Handlers.Items.StructuredItemsViewController`1 */ },
		{ /* #56 = 0x6F */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000013 /* Microsoft.Maui.Controls.Handlers.Items.SelectableItemsViewController`1 */ },
		{ /* #57 = 0x71 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000014 /* Microsoft.Maui.Controls.Handlers.Items.GroupableItemsViewController`1 */ },
		{ /* #58 = 0x73 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000015 /* Microsoft.Maui.Controls.Handlers.Items.SelectableItemsViewDelegator`2 */ },
		{ /* #59 = 0x75 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000016 /* Microsoft.Maui.Controls.Handlers.Items.GroupableItemsViewDelegator`2 */ },
		{ /* #60 = 0x77 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000017 /* Microsoft.Maui.Controls.Handlers.Items.HeightConstrainedTemplatedCell */ },
		{ /* #61 = 0x79 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000018 /* Microsoft.Maui.Controls.Handlers.Items.HorizontalCell */ },
		{ /* #62 = 0x7B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000019 /* Microsoft.Maui.Controls.Handlers.Items.HorizontalDefaultCell */ },
		{ /* #63 = 0x7D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200001A /* Microsoft.Maui.Controls.Handlers.Items.HorizontalDefaultSupplementalView */ },
		{ /* #64 = 0x7F */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200001B /* Microsoft.Maui.Controls.Handlers.Items.HorizontalSupplementaryView */ },
		{ /* #65 = 0x81 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200001C /* Microsoft.Maui.Controls.Handlers.Items.ListViewLayout */ },
		{ /* #66 = 0x83 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000018 /* UIKit.UIScrollView */ },
		{ /* #67 = 0x85 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000019 /* UIKit.UICollectionView */ },
		{ /* #68 = 0x87 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200001D /* Microsoft.Maui.Controls.Handlers.Items.MauiCollectionView */ },
		{ /* #69 = 0x89 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200001E /* Microsoft.Maui.Controls.Handlers.Items.ReorderableItemsViewController`1 */ },
		{ /* #70 = 0x8B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200001F /* Microsoft.Maui.Controls.Handlers.Items.ReorderableItemsViewDelegator`2 */ },
		{ /* #71 = 0x8D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000020 /* Microsoft.Maui.Controls.Handlers.Items.WidthConstrainedTemplatedCell */ },
		{ /* #72 = 0x8F */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000021 /* Microsoft.Maui.Controls.Handlers.Items.VerticalCell */ },
		{ /* #73 = 0x91 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000022 /* Microsoft.Maui.Controls.Handlers.Items.VerticalDefaultCell */ },
		{ /* #74 = 0x93 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000023 /* Microsoft.Maui.Controls.Handlers.Items.VerticalDefaultSupplementalView */ },
		{ /* #75 = 0x95 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000024 /* Microsoft.Maui.Controls.Handlers.Items.VerticalSupplementaryView */ },
		{ /* #76 = 0x97 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000025 /* Microsoft.Maui.Controls.Handlers.Items2.ItemsViewCell2 */ },
		{ /* #77 = 0x99 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000026 /* Microsoft.Maui.Controls.Handlers.Items2.TemplatedCell2 */ },
		{ /* #78 = 0x9B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000027 /* Microsoft.Maui.Controls.Handlers.Items2.CarouselTemplatedCell2 */ },
		{ /* #79 = 0x9D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000028 /* Microsoft.Maui.Controls.Handlers.Items2.ItemsViewDelegator2`2 */ },
		{ /* #80 = 0x9F */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000029 /* Microsoft.Maui.Controls.Handlers.Items2.CarouselViewDelegator2 */ },
		{ /* #81 = 0xA1 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200002A /* Microsoft.Maui.Controls.Handlers.Items2.DefaultCell2 */ },
		{ /* #82 = 0xA3 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200002B /* Microsoft.Maui.Controls.Handlers.Items2.ItemsViewController2`1 */ },
		{ /* #83 = 0xA5 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200002C /* Microsoft.Maui.Controls.Handlers.Items2.StructuredItemsViewController2`1 */ },
		{ /* #84 = 0xA7 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200002D /* Microsoft.Maui.Controls.Handlers.Items2.SelectableItemsViewController2`1 */ },
		{ /* #85 = 0xA9 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200002E /* Microsoft.Maui.Controls.Handlers.Items2.GroupableItemsViewController2`1 */ },
		{ /* #86 = 0xAB */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200002F /* Microsoft.Maui.Controls.Handlers.Items2.SelectableItemsViewDelegator2`2 */ },
		{ /* #87 = 0xAD */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000030 /* Microsoft.Maui.Controls.Handlers.Items2.GroupableItemsViewDelegator2`2 */ },
		{ /* #88 = 0xAF */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000031 /* Microsoft.Maui.Controls.Handlers.Items2.HeightConstrainedTemplatedCell2 */ },
		{ /* #89 = 0xB1 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000032 /* Microsoft.Maui.Controls.Handlers.Items2.HorizontalCell2 */ },
		{ /* #90 = 0xB3 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000033 /* Microsoft.Maui.Controls.Handlers.Items2.HorizontalDefaultCell2 */ },
		{ /* #91 = 0xB5 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000034 /* Microsoft.Maui.Controls.Handlers.Items2.HorizontalDefaultSupplementalView2 */ },
		{ /* #92 = 0xB7 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000035 /* Microsoft.Maui.Controls.Handlers.Items2.HorizontalSupplementaryView2 */ },
		{ /* #93 = 0xB9 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000036 /* Microsoft.Maui.Controls.Handlers.Items2.ReorderableItemsViewController2`1 */ },
		{ /* #94 = 0xBB */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000037 /* Microsoft.Maui.Controls.Handlers.Items2.ReorderableItemsViewDelegator2`2 */ },
		{ /* #95 = 0xBD */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000038 /* Microsoft.Maui.Controls.Handlers.Items2.WidthConstrainedTemplatedCell2 */ },
		{ /* #96 = 0xBF */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000039 /* Microsoft.Maui.Controls.Handlers.Items2.VerticalCell2 */ },
		{ /* #97 = 0xC1 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200003A /* Microsoft.Maui.Controls.Handlers.Items2.VerticalDefaultCell2 */ },
		{ /* #98 = 0xC3 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200003B /* Microsoft.Maui.Controls.Handlers.Items2.VerticalDefaultSupplementalView2 */ },
		{ /* #99 = 0xC5 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200003C /* Microsoft.Maui.Controls.Handlers.Items2.VerticalSupplementaryView2 */ },
		{ /* #100 = 0xC7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200001A /* UIKit.UINavigationBar */ },
		{ /* #101 = 0xC9 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200003D /* Microsoft.Maui.Controls.Handlers.Compatibility.MauiNavigationBar */ },
		{ /* #102 = 0xCB */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200003E /* Microsoft.Maui.Controls.Handlers.Compatibility.VisualElementRenderer`1 */ },
		{ /* #103 = 0xCD */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200003F /* Microsoft.Maui.Controls.Handlers.Compatibility.ViewRenderer`2 */ },
		{ /* #104 = 0xCF */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000040 /* Microsoft.Maui.Controls.Handlers.Compatibility.ViewRenderer */ },
		{ /* #105 = 0xD1 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000041 /* Microsoft.Maui.Controls.Handlers.Compatibility.CellTableViewCell */ },
		{ /* #106 = 0xD3 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000042 /* Microsoft.Maui.Controls.Handlers.Compatibility.iOS7ButtonContainer */ },
		{ /* #107 = 0xD5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200001B /* UIKit.UITableViewHeaderFooterView */ },
		{ /* #108 = 0xD7 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000043 /* Microsoft.Maui.Controls.Handlers.Compatibility.HeaderWrapperView */ },
		{ /* #109 = 0xD9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200001C /* UIKit.IUIContextMenuInteractionDelegate */ },
		{ /* #110 = 0xDB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001AC /* UIKit.UIContextMenuInteractionDelegateWrapper */ },
		{ /* #111 = 0xDD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200001D /* UIKit.UIControl */ },
		{ /* #112 = 0xDF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200001E /* UIKit.UIRefreshControl */ },
		{ /* #113 = 0xE1 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000044 /* Microsoft.Maui.Controls.Handlers.Compatibility.FormsRefreshControl */ },
		{ /* #114 = 0xE3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200001F /* UIKit.UIScrollViewDelegate */ },
		{ /* #115 = 0xE5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000020 /* UIKit.UITableViewSource */ },
		{ /* #116 = 0xE7 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000045 /* Microsoft.Maui.Controls.Handlers.Compatibility.TableViewModelRenderer */ },
		{ /* #117 = 0xE9 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000046 /* Microsoft.Maui.Controls.Handlers.Compatibility.UnEvenTableViewModelRenderer */ },
		{ /* #118 = 0xEB */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000047 /* Microsoft.Maui.Controls.Handlers.Compatibility.TableViewRenderer */ },
		{ /* #119 = 0xED */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000021 /* UIKit.UITapGestureRecognizer */ },
		{ /* #120 = 0xEF */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000048 /* Microsoft.Maui.Platform.ResignFirstResponderTouchGestureRecognizer */ },
		{ /* #121 = 0xF1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000022 /* UIKit.UIBarItem */ },
		{ /* #122 = 0xF3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000023 /* UIKit.UIBarButtonItem */ },
		{ /* #123 = 0xF5 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000049 /* Microsoft.Maui.Controls.Compatibility.Platform.iOS.ToolbarItemExtensions/PrimaryToolbarItem */ },
		{ /* #124 = 0xF7 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200004A /* Microsoft.Maui.Controls.Platform.DragAndDropDelegate/CustomLocalStateData */ },
		{ /* #125 = 0xF9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000024 /* UIKit.IUIDragInteractionDelegate */ },
		{ /* #126 = 0xFB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001B0 /* UIKit.UIDragInteractionDelegateWrapper */ },
		{ /* #127 = 0xFD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000025 /* UIKit.IUIDropInteractionDelegate */ },
		{ /* #128 = 0xFF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001B2 /* UIKit.UIDropInteractionDelegateWrapper */ },
		{ /* #129 = 0x101 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200004B /* Microsoft.Maui.Controls.Platform.DragAndDropDelegate */ },
		{ /* #130 = 0x103 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000026 /* UIKit.UIGestureRecognizer/Token */ },
		{ /* #131 = 0x105 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200004C /* Microsoft.Maui.Controls.Platform.iOS.CustomPressGestureRecognizer/Callback */ },
		{ /* #132 = 0x107 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200004D /* Microsoft.Maui.Controls.Platform.iOS.CustomPressGestureRecognizer */ },
		{ /* #133 = 0x109 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200004E /* Microsoft.Maui.Controls.Platform.Compatibility.ShellFlyoutContentRenderer */ },
		{ /* #134 = 0x10B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200004F /* Microsoft.Maui.Controls.Platform.Compatibility.ShellFlyoutRenderer */ },
		{ /* #135 = 0x10D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000050 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellPageRendererTracker/TitleViewContainer */ },
		{ /* #136 = 0x10F */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000051 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellSearchResultsRenderer */ },
		{ /* #137 = 0x111 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000027 /* UIKit.UIGestureRecognizerDelegate */ },
		{ /* #138 = 0x113 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000052 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRenderer/GestureDelegate */ },
		{ /* #139 = 0x115 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000028 /* UIKit.UINavigationControllerDelegate */ },
		{ /* #140 = 0x117 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000053 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRenderer/NavDelegate */ },
		{ /* #141 = 0x119 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000029 /* UIKit.UINavigationController */ },
		{ /* #142 = 0x11B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000054 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRenderer */ },
		{ /* #143 = 0x11D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000055 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRootHeader/ShellSectionHeaderCell */ },
		{ /* #144 = 0x11F */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000056 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRootHeader */ },
		{ /* #145 = 0x121 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000057 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRootRenderer */ },
		{ /* #146 = 0x123 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000058 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellTableViewSource/SeparatorView */ },
		{ /* #147 = 0x125 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000059 /* Microsoft.Maui.Controls.Platform.Compatibility.ShellTableViewSource */ },
		{ /* #148 = 0x127 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200005A /* Microsoft.Maui.Controls.Handlers.Items.CarouselViewController */ },
		{ /* #149 = 0x129 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200005B /* Microsoft.Maui.Controls.Handlers.Items2.CarouselViewController2 */ },
		{ /* #150 = 0x12B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200002A /* UIKit.UICollectionViewCompositionalLayout */ },
		{ /* #151 = 0x12D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200005C /* Microsoft.Maui.Controls.Handlers.Items2.LayoutFactory2/CustomUICollectionViewCompositionalLayout */ },
		{ /* #152 = 0x12F */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200005D /* Microsoft.Maui.Controls.Handlers.Compatibility.PhoneFlyoutPageRenderer/ChildViewController */ },
		{ /* #153 = 0x131 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200005E /* Microsoft.Maui.Controls.Handlers.Compatibility.PhoneFlyoutPageRenderer */ },
		{ /* #154 = 0x133 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000002 /* Microsoft.Maui.Platform.MauiView */ },
		{ /* #155 = 0x135 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000003 /* Microsoft.Maui.Platform.ContentView */ },
		{ /* #156 = 0x137 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200005F /* Microsoft.Maui.Controls.Handlers.Compatibility.FrameRenderer/FrameView */ },
		{ /* #157 = 0x139 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000060 /* Microsoft.Maui.Controls.Handlers.Compatibility.FrameRenderer */ },
		{ /* #158 = 0x13B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200002B /* UIKit.UIAlertController */ },
		{ /* #159 = 0x13D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000061 /* Microsoft.Maui.Controls.Handlers.Compatibility.ContextActionsCell/MoreActionSheetController */ },
		{ /* #160 = 0x13F */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000062 /* Microsoft.Maui.Controls.Handlers.Compatibility.ContextActionsCell */ },
		{ /* #161 = 0x141 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000063 /* Microsoft.Maui.Controls.Handlers.Compatibility.ContextScrollViewDelegate */ },
		{ /* #162 = 0x143 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000064 /* Microsoft.Maui.Controls.Handlers.Compatibility.ListViewRenderer/ListViewDataSource */ },
		{ /* #163 = 0x145 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000065 /* Microsoft.Maui.Controls.Handlers.Compatibility.ListViewRenderer/UnevenListViewDataSource */ },
		{ /* #164 = 0x147 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000066 /* Microsoft.Maui.Controls.Handlers.Compatibility.ListViewRenderer */ },
		{ /* #165 = 0x149 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000067 /* Microsoft.Maui.Controls.Handlers.Compatibility.FormsUITableViewController */ },
		{ /* #166 = 0x14B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000068 /* Microsoft.Maui.Controls.Handlers.Compatibility.ViewCellRenderer/ViewTableCell */ },
		{ /* #167 = 0x14D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000069 /* Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer/MauiNavigationDelegate */ },
		{ /* #168 = 0x14F */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200006A /* Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer/MauiControlsNavigationBar */ },
		{ /* #169 = 0x151 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200006B /* Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer/Container */ },
		{ /* #170 = 0x153 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200006C /* Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer */ },
		{ /* #171 = 0x155 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200006D /* Microsoft.Maui.Controls.Handlers.Compatibility.ShellRenderer */ },
		{ /* #172 = 0x157 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200006E /* Microsoft.Maui.Controls.Handlers.Compatibility.TabbedRenderer */ },
		{ /* #173 = 0x159 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x200006F /* Microsoft.Maui.Controls.Compatibility.Platform.iOS.ToolbarItemExtensions/SecondaryToolbarItem/SecondaryToolbarItemContent */ },
		{ /* #174 = 0x15B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000070 /* Microsoft.Maui.Controls.Compatibility.Platform.iOS.ToolbarItemExtensions/SecondaryToolbarItem */ },
		{ /* #175 = 0x15D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200002C /* UIKit.UIContextMenuInteractionDelegate */ },
		{ /* #176 = 0x15F */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000071 /* Microsoft.Maui.Controls.Platform.GesturePlatformManager/FakeRightClickContextMenuInteraction/FakeRightClickDelegate */ },
		{ /* #177 = 0x161 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200002D /* UIKit.IUIInteraction */ },
		{ /* #178 = 0x163 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001B7 /* UIKit.UIInteractionWrapper */ },
		{ /* #179 = 0x165 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200002E /* UIKit.UIContextMenuInteraction */ },
		{ /* #180 = 0x167 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000072 /* Microsoft.Maui.Controls.Platform.GesturePlatformManager/FakeRightClickContextMenuInteraction */ },
		{ /* #181 = 0x169 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000073 /* Microsoft.Maui.Controls.Platform.GesturePlatformManager/FakeRightClickPointerInteraction */ },
		{ /* #182 = 0x16B */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000074 /* Microsoft.Maui.Controls.Handlers.Compatibility.ContextActionsCell/SelectGestureRecognizer */ },
		{ /* #183 = 0x16D */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000075 /* Microsoft.Maui.Controls.Handlers.Compatibility.EntryCellRenderer/EntryCellTableViewCell */ },
		{ /* #184 = 0x16F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200002F /* UIKit.UIToolbar */ },
		{ /* #185 = 0x171 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000076 /* Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer/SecondaryToolbar */ },
		{ /* #186 = 0x173 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000077 /* Microsoft.Maui.Controls.Handlers.Compatibility.NavigationRenderer/ParentingViewController */ },
		{ /* #187 = 0x175 */ 14 /* Microsoft.Maui.Controls */, 0xFFFFFFFF /* Microsoft.Maui.Controls.dll */, 0x2000078 /* Microsoft.Maui.Controls.Platform.GesturePlatformManager/FakeRightClickPointerInteraction/FakeRightClickPointerDelegate */ },
		{ /* #188 = 0x177 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000004 /* Microsoft.Maui.Platform.CALayerAutosizeObserver */ },
		{ /* #189 = 0x179 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000030 /* UIKit.NSLayoutConstraint */ },
		{ /* #190 = 0x17B */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000005 /* Microsoft.Maui.Platform.CollapseConstraint */ },
		{ /* #191 = 0x17D */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000006 /* Microsoft.Maui.Platform.ContainerViewController */ },
		{ /* #192 = 0x17F */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000007 /* Microsoft.Maui.Platform.GeneralWrapperView */ },
		{ /* #193 = 0x181 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000008 /* Microsoft.Maui.Platform.LayoutView */ },
		{ /* #194 = 0x183 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000031 /* UIKit.UIActivityIndicatorView */ },
		{ /* #195 = 0x185 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000009 /* Microsoft.Maui.Platform.MauiActivityIndicator */ },
		{ /* #196 = 0x187 */ 18 /* Microsoft.Maui.Graphics */, 0xFFFFFFFF /* Microsoft.Maui.Graphics.dll */, 0x2000000 /* Microsoft.Maui.Graphics.Platform.PlatformGraphicsView */ },
		{ /* #197 = 0x189 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200000A /* Microsoft.Maui.Platform.MauiBoxView */ },
		{ /* #198 = 0x18B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000032 /* CoreAnimation.CALayer */ },
		{ /* #199 = 0x18D */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200000B /* Microsoft.Maui.Platform.MauiCALayer */ },
		{ /* #200 = 0x18F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000033 /* UIKit.UIImageView */ },
		{ /* #201 = 0x191 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200000C /* Microsoft.Maui.Platform.MauiImageView */ },
		{ /* #202 = 0x193 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000034 /* UIKit.UILabel */ },
		{ /* #203 = 0x195 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200000D /* Microsoft.Maui.Platform.MauiLabel */ },
		{ /* #204 = 0x197 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000035 /* UIKit.UIPageControl */ },
		{ /* #205 = 0x199 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200000E /* Microsoft.Maui.Platform.MauiPageControl */ },
		{ /* #206 = 0x19B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000036 /* UIKit.IUITextInputTraits */ },
		{ /* #207 = 0x19D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001C7 /* UIKit.UITextInputTraitsWrapper */ },
		{ /* #208 = 0x19F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000037 /* UIKit.IUITextInput */ },
		{ /* #209 = 0x1A1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001C6 /* UIKit.UITextInputWrapper */ },
		{ /* #210 = 0x1A3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000038 /* UIKit.UITextField */ },
		{ /* #211 = 0x1A5 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200000F /* Microsoft.Maui.Platform.NoCaretField */ },
		{ /* #212 = 0x1A7 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000010 /* Microsoft.Maui.Platform.MauiPicker */ },
		{ /* #213 = 0x1A9 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000011 /* Microsoft.Maui.Platform.MauiRefreshView */ },
		{ /* #214 = 0x1AB */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000012 /* Microsoft.Maui.Platform.MauiScrollView */ },
		{ /* #215 = 0x1AD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000039 /* UIKit.UISearchBar */ },
		{ /* #216 = 0x1AF */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000013 /* Microsoft.Maui.Platform.MauiSearchBar */ },
		{ /* #217 = 0x1B1 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000014 /* Microsoft.Maui.Platform.MauiShapeView */ },
		{ /* #218 = 0x1B3 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000015 /* Microsoft.Maui.Platform.MauiTextField */ },
		{ /* #219 = 0x1B5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200003A /* UIKit.UITextView */ },
		{ /* #220 = 0x1B7 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000016 /* Microsoft.Maui.Platform.MauiTextView */ },
		{ /* #221 = 0x1B9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200003B /* WebKit.IWKNavigationDelegate */ },
		{ /* #222 = 0x1BB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200019C /* WebKit.WKNavigationDelegateWrapper */ },
		{ /* #223 = 0x1BD */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000017 /* Microsoft.Maui.Platform.MauiWebViewNavigationDelegate */ },
		{ /* #224 = 0x1BF */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000018 /* Microsoft.Maui.Platform.PageViewController */ },
		{ /* #225 = 0x1C1 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000019 /* Microsoft.Maui.Platform.SemanticSwitchContentView */ },
		{ /* #226 = 0x1C3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200003C /* CoreAnimation.CAGradientLayer */ },
		{ /* #227 = 0x1C5 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200001A /* Microsoft.Maui.Platform.StaticCAGradientLayer */ },
		{ /* #228 = 0x1C7 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200001B /* Microsoft.Maui.Platform.StaticCALayer */ },
		{ /* #229 = 0x1C9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200003D /* CoreAnimation.CAShapeLayer */ },
		{ /* #230 = 0x1CB */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200001C /* Microsoft.Maui.Platform.StaticCAShapeLayer */ },
		{ /* #231 = 0x1CD */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200001D /* Microsoft.Maui.Platform.WrapperView */ },
		{ /* #232 = 0x1CF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200003E /* UIKit.IUIPickerViewDataSource */ },
		{ /* #233 = 0x1D1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001BE /* UIKit.UIPickerViewDataSourceWrapper */ },
		{ /* #234 = 0x1D3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200003F /* UIKit.UIPickerViewModel */ },
		{ /* #235 = 0x1D5 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200001E /* Microsoft.Maui.Handlers.PickerSource */ },
		{ /* #236 = 0x1D7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000040 /* UIKit.UIButton */ },
		{ /* #237 = 0x1D9 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200001F /* Microsoft.Maui.Handlers.SwipeItemButton */ },
		{ /* #238 = 0x1DB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000041 /* UIKit.IUISceneDelegate */ },
		{ /* #239 = 0x1DD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001BF /* UIKit.UISceneDelegateWrapper */ },
		{ /* #240 = 0x1DF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000042 /* UIKit.IUIWindowSceneDelegate */ },
		{ /* #241 = 0x1E1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001D3 /* UIKit.UIWindowSceneDelegateWrapper */ },
		{ /* #242 = 0x1E3 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000020 /* Microsoft.Maui.MauiUISceneDelegate */ },
		{ /* #243 = 0x1E5 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000021 /* Microsoft.Maui.WindowOverlay/OverlayGraphicsView */ },
		{ /* #244 = 0x1E7 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000022 /* Microsoft.Maui.Platform.MauiCheckBox */ },
		{ /* #245 = 0x1E9 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000023 /* Microsoft.Maui.Platform.MauiDatePicker */ },
		{ /* #246 = 0x1EB */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000024 /* Microsoft.Maui.Platform.MauiDoneAccessoryView */ },
		{ /* #247 = 0x1ED */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000043 /* WebKit.WKWebView */ },
		{ /* #248 = 0x1EF */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000025 /* Microsoft.Maui.Platform.MauiHybridWebView */ },
		{ /* #249 = 0x1F1 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000026 /* Microsoft.Maui.Platform.MauiSwipeView */ },
		{ /* #250 = 0x1F3 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000027 /* Microsoft.Maui.Platform.MauiTimePicker */ },
		{ /* #251 = 0x1F5 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000028 /* Microsoft.Maui.Platform.MauiUIContextMenuInteraction/FlyoutUIContextMenuInteractionDelegate */ },
		{ /* #252 = 0x1F7 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x2000029 /* Microsoft.Maui.Platform.MauiUIContextMenuInteraction */ },
		{ /* #253 = 0x1F9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000044 /* WebKit.IWKUIDelegate */ },
		{ /* #254 = 0x1FB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200019F /* WebKit.WKUIDelegateWrapper */ },
		{ /* #255 = 0x1FD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000045 /* WebKit.WKUIDelegate */ },
		{ /* #256 = 0x1FF */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200002A /* Microsoft.Maui.Platform.MauiWebViewUIDelegate */ },
		{ /* #257 = 0x201 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200002B /* Microsoft.Maui.Platform.MauiWKWebView */ },
		{ /* #258 = 0x203 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200002C /* Microsoft.Maui.Platform.PlatformTouchGraphicsView */ },
		{ /* #259 = 0x205 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000046 /* WebKit.IWKScriptMessageHandler */ },
		{ /* #260 = 0x207 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200019E /* WebKit.WKScriptMessageHandlerWrapper */ },
		{ /* #261 = 0x209 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200002D /* Microsoft.Maui.Handlers.HybridWebViewHandler/WebViewScriptMessageHandler */ },
		{ /* #262 = 0x20B */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200002E /* Microsoft.Maui.WindowOverlay/PassthroughView */ },
		{ /* #263 = 0x20D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000047 /* WebKit.IWKUrlSchemeHandler */ },
		{ /* #264 = 0x20F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001A0 /* WebKit.WKUrlSchemeHandlerWrapper */ },
		{ /* #265 = 0x211 */ 16 /* Microsoft.Maui */, 0xFFFFFFFF /* Microsoft.Maui.dll */, 0x200002F /* Microsoft.Maui.Handlers.HybridWebViewHandler/SchemeHandler */ },
		{ /* #266 = 0x213 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000048 /* AuthenticationServices.IASAuthorizationControllerDelegate */ },
		{ /* #267 = 0x215 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001D9 /* AuthenticationServices.ASAuthorizationControllerDelegateWrapper */ },
		{ /* #268 = 0x217 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000049 /* AuthenticationServices.IASAuthorizationControllerPresentationContextProviding */ },
		{ /* #269 = 0x219 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001DA /* AuthenticationServices.ASAuthorizationControllerPresentationContextProvidingWrapper */ },
		{ /* #270 = 0x21B */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x2000000 /* Microsoft.Maui.Authentication.AuthManager */ },
		{ /* #271 = 0x21D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200004A /* PhotosUI.PHPickerViewControllerDelegate */ },
		{ /* #272 = 0x21F */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x2000001 /* Microsoft.Maui.Media.PhotoPickerDelegate */ },
		{ /* #273 = 0x221 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200004B /* UIKit.UIAdaptivePresentationControllerDelegate */ },
		{ /* #274 = 0x223 */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x2000002 /* Microsoft.Maui.Media.PhotoPickerPresentationControllerDelegate */ },
		{ /* #275 = 0x225 */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x2000003 /* Microsoft.Maui.ApplicationModel.UIPresentationControllerDelegate */ },
		{ /* #276 = 0x227 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200004C /* UIKit.UIActivityItemSource */ },
		{ /* #277 = 0x229 */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x2000004 /* Microsoft.Maui.ApplicationModel.DataTransfer.ShareActivityItemSource */ },
		{ /* #278 = 0x22B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200004D /* CoreLocation.ICLLocationManagerDelegate */ },
		{ /* #279 = 0x22D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001D4 /* CoreLocation.CLLocationManagerDelegateWrapper */ },
		{ /* #280 = 0x22F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200004E /* CoreLocation.CLLocationManagerDelegate */ },
		{ /* #281 = 0x231 */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x2000005 /* Microsoft.Maui.Devices.Sensors.SingleLocationListener */ },
		{ /* #282 = 0x233 */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x2000006 /* Microsoft.Maui.Devices.Sensors.ContinuousLocationListener */ },
		{ /* #283 = 0x235 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200004F /* SafariServices.SFSafariViewControllerDelegate */ },
		{ /* #284 = 0x237 */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x2000007 /* Microsoft.Maui.Authentication.WebAuthenticatorImplementation/NativeSFSafariViewControllerDelegate */ },
		{ /* #285 = 0x239 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000050 /* AuthenticationServices.IASWebAuthenticationPresentationContextProviding */ },
		{ /* #286 = 0x23B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001DC /* AuthenticationServices.ASWebAuthenticationPresentationContextProvidingWrapper */ },
		{ /* #287 = 0x23D */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x2000008 /* Microsoft.Maui.Authentication.WebAuthenticatorImplementation/ContextProvider */ },
		{ /* #288 = 0x23F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000051 /* UIKit.UIImagePickerControllerDelegate */ },
		{ /* #289 = 0x241 */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x2000009 /* Microsoft.Maui.Media.MediaPickerImplementation/PhotoPickerDelegate */ },
		{ /* #290 = 0x243 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000052 /* UIKit.UIDocumentPickerDelegate */ },
		{ /* #291 = 0x245 */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x200000A /* Microsoft.Maui.Storage.FilePickerImplementation/PickerDelegate */ },
		{ /* #292 = 0x247 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000053 /* ContactsUI.CNContactPickerDelegate */ },
		{ /* #293 = 0x249 */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x200000B /* Microsoft.Maui.ApplicationModel.Communication.ContactsImplementation/ContactPickerDelegate */ },
		{ /* #294 = 0x24B */ 17 /* Microsoft.Maui.Essentials */, 0xFFFFFFFF /* Microsoft.Maui.Essentials.dll */, 0x200000C /* Microsoft.Maui.ApplicationModel.Permissions/LocationWhenInUse/ManagerDelegate */ },
		{ /* #295 = 0x24D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000054 /* Foundation.INSCopying */ },
		{ /* #296 = 0x24F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001D5 /* Foundation.NSCopyingWrapper */ },
		{ /* #297 = 0x251 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000055 /* SafariServices.SFSafariViewController */ },
		{ /* #298 = 0x253 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000056 /* UIKit.UIWindowSceneActivationConfiguration */ },
		{ /* #299 = 0x255 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000057 /* PhotosUI.PHPickerResult */ },
		{ /* #300 = 0x257 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000058 /* PhotosUI.PHPickerViewController */ },
		{ /* #301 = 0x259 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000059 /* Foundation.NSEnumerator */ },
		{ /* #302 = 0x25B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200005A /* LinkPresentation.LPLinkMetadata */ },
		{ /* #303 = 0x25D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200005B /* ContactsUI.CNContactPickerViewController */ },
		{ /* #304 = 0x25F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200005C /* UIKit.IUITextViewDelegate */ },
		{ /* #305 = 0x261 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001C8 /* UIKit.UITextViewDelegateWrapper */ },
		{ /* #306 = 0x263 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200005D /* Foundation.INSItemProviderReading */ },
		{ /* #307 = 0x265 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001D6 /* Foundation.NSItemProviderReadingWrapper */ },
		{ /* #308 = 0x267 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200005E /* Foundation.NSCoder */ },
		{ /* #309 = 0x269 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200005F /* Foundation.NSFormatter */ },
		{ /* #310 = 0x26B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000060 /* Intents.INIntentResponse */ },
		{ /* #311 = 0x26D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000061 /* Intents.INIntent */ },
		{ /* #312 = 0x26F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000062 /* WebKit.WKNavigationResponse */ },
		{ /* #313 = 0x271 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000063 /* WebKit.WKPreferences */ },
		{ /* #314 = 0x273 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000064 /* WebKit.WKWindowFeatures */ },
		{ /* #315 = 0x275 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000065 /* WebKit.WKBackForwardListItem */ },
		{ /* #316 = 0x277 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000066 /* WebKit.WKContextMenuElementInfo */ },
		{ /* #317 = 0x279 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000067 /* WebKit.WKFrameInfo */ },
		{ /* #318 = 0x27B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000068 /* WebKit.WKNavigation */ },
		{ /* #319 = 0x27D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000069 /* WebKit.WKNavigationAction */ },
		{ /* #320 = 0x27F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200006A /* WebKit.WKOpenPanelParameters */ },
		{ /* #321 = 0x281 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200006B /* WebKit.IWKPreviewActionItem */ },
		{ /* #322 = 0x283 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200019D /* WebKit.WKPreviewActionItemWrapper */ },
		{ /* #323 = 0x285 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200006C /* WebKit.WKPreviewElementInfo */ },
		{ /* #324 = 0x287 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200006D /* WebKit.WKProcessPool */ },
		{ /* #325 = 0x289 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200006E /* WebKit.WKScriptMessage */ },
		{ /* #326 = 0x28B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200006F /* WebKit.WKSecurityOrigin */ },
		{ /* #327 = 0x28D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000070 /* WebKit.IWKUrlSchemeTask */ },
		{ /* #328 = 0x28F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001A1 /* WebKit.WKUrlSchemeTaskWrapper */ },
		{ /* #329 = 0x291 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000071 /* WebKit.WKUserContentController */ },
		{ /* #330 = 0x293 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000072 /* WebKit.WKUserScript */ },
		{ /* #331 = 0x295 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000073 /* WebKit.WKWebpagePreferences */ },
		{ /* #332 = 0x297 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000074 /* WebKit.WKWebsiteDataRecord */ },
		{ /* #333 = 0x299 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000075 /* WebKit.WKWebViewConfiguration */ },
		{ /* #334 = 0x29B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000076 /* UIKit.UIButtonConfiguration */ },
		{ /* #335 = 0x29D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000077 /* UIKit.NSLayoutManager */ },
		{ /* #336 = 0x29F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000078 /* UIKit.UIAppearance */ },
		{ /* #337 = 0x2A1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000079 /* UIKit.UIBezierPath */ },
		{ /* #338 = 0x2A3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200007A /* UIKit.UICollectionViewLayoutAttributes */ },
		{ /* #339 = 0x2A5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200007B /* UIKit.UIControlEventProxy */ },
		{ /* #340 = 0x2A7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200007C /* UIKit.UIEvent */ },
		{ /* #341 = 0x2A9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200007D /* UIKit.UIFont */ },
		{ /* #342 = 0x2AB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200007E /* UIKit.UIFontDescriptor */ },
		{ /* #343 = 0x2AD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200007F /* UIKit.UILongPressGestureRecognizer */ },
		{ /* #344 = 0x2AF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000080 /* UIKit.UIPanGestureRecognizer */ },
		{ /* #345 = 0x2B1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000081 /* UIKit.UIPinchGestureRecognizer */ },
		{ /* #346 = 0x2B3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000082 /* UIKit.UISwipeGestureRecognizer */ },
		{ /* #347 = 0x2B5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000083 /* UIKit.UIHoverGestureRecognizer */ },
		{ /* #348 = 0x2B7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000084 /* UIKit.UIMenuElement */ },
		{ /* #349 = 0x2B9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000085 /* UIKit.UIMenu */ },
		{ /* #350 = 0x2BB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000086 /* UIKit.UIPresentationController */ },
		{ /* #351 = 0x2BD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000087 /* UIKit.UIScene */ },
		{ /* #352 = 0x2BF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000088 /* UIKit.UIWindowScene */ },
		{ /* #353 = 0x2C1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000089 /* UIKit.UITraitCollection */ },
		{ /* #354 = 0x2C3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200008A /* UIKit.IUIMutableTraits */ },
		{ /* #355 = 0x2C5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001BA /* UIKit.UIMutableTraitsWrapper */ },
		{ /* #356 = 0x2C7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200008B /* UIKit.IUITraitOverrides */ },
		{ /* #357 = 0x2C9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001A2 /* UIKit.UITraitOverridesWrapper */ },
		{ /* #358 = 0x2CB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200008C /* UIKit.UIVisualEffect */ },
		{ /* #359 = 0x2CD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200008D /* UIKit.NSAdaptiveImageGlyph */ },
		{ /* #360 = 0x2CF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200008E /* UIKit.NSCollectionLayoutItem */ },
		{ /* #361 = 0x2D1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200008F /* UIKit.NSCollectionLayoutSupplementaryItem */ },
		{ /* #362 = 0x2D3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000090 /* UIKit.NSCollectionLayoutBoundarySupplementaryItem */ },
		{ /* #363 = 0x2D5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000091 /* UIKit.INSCollectionLayoutContainer */ },
		{ /* #364 = 0x2D7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001A3 /* UIKit.NSCollectionLayoutContainerWrapper */ },
		{ /* #365 = 0x2D9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000092 /* UIKit.NSCollectionLayoutDimension */ },
		{ /* #366 = 0x2DB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000093 /* UIKit.INSCollectionLayoutEnvironment */ },
		{ /* #367 = 0x2DD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001A4 /* UIKit.NSCollectionLayoutEnvironmentWrapper */ },
		{ /* #368 = 0x2DF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000094 /* UIKit.NSCollectionLayoutGroup */ },
		{ /* #369 = 0x2E1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000095 /* UIKit.NSCollectionLayoutSection */ },
		{ /* #370 = 0x2E3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000096 /* UIKit.NSCollectionLayoutSize */ },
		{ /* #371 = 0x2E5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000097 /* UIKit.NSCollectionLayoutSpacing */ },
		{ /* #372 = 0x2E7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000098 /* UIKit.INSCollectionLayoutVisibleItem */ },
		{ /* #373 = 0x2E9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001A5 /* UIKit.NSCollectionLayoutVisibleItemWrapper */ },
		{ /* #374 = 0x2EB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000099 /* UIKit.NSLayoutAnchor`1 */ },
		{ /* #375 = 0x2ED */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200009A /* UIKit.NSLayoutDimension */ },
		{ /* #376 = 0x2EF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200009B /* UIKit.NSLayoutXAxisAnchor */ },
		{ /* #377 = 0x2F1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200009C /* UIKit.NSLayoutYAxisAnchor */ },
		{ /* #378 = 0x2F3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200009D /* UIKit.NSParagraphStyle */ },
		{ /* #379 = 0x2F5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200009E /* UIKit.NSMutableParagraphStyle */ },
		{ /* #380 = 0x2F7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200009F /* UIKit.NSShadow */ },
		{ /* #381 = 0x2F9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000A0 /* UIKit.NSTextAttachment */ },
		{ /* #382 = 0x2FB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000A1 /* UIKit.NSTextContainer */ },
		{ /* #383 = 0x2FD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000A2 /* UIKit.UIAction */ },
		{ /* #384 = 0x2FF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000A3 /* UIKit.UIActivityViewController */ },
		{ /* #385 = 0x301 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000A4 /* UIKit.UIAlertAction */ },
		{ /* #386 = 0x303 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000A5 /* UIKit.UIApplicationShortcutIcon */ },
		{ /* #387 = 0x305 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000A6 /* UIKit.UIApplicationShortcutItem */ },
		{ /* #388 = 0x307 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000A7 /* UIKit.UIBarAppearance */ },
		{ /* #389 = 0x309 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000A8 /* UIKit.UIBarButtonItemGroup */ },
		{ /* #390 = 0x30B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000A9 /* UIKit.UIBlurEffect */ },
		{ /* #391 = 0x30D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000AA /* UIKit.IUITraitDefinition */ },
		{ /* #392 = 0x30F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001CA /* UIKit.UITraitDefinitionWrapper */ },
		{ /* #393 = 0x311 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000AB /* UIKit.IUICGFloatTraitDefinition */ },
		{ /* #394 = 0x313 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001A8 /* UIKit.UICGFloatTraitDefinitionWrapper */ },
		{ /* #395 = 0x315 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000AC /* UIKit.UICollectionViewCompositionalLayoutConfiguration */ },
		{ /* #396 = 0x317 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000AD /* UIKit.IUIDragAnimating */ },
		{ /* #397 = 0x319 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001AE /* UIKit.UIDragAnimatingWrapper */ },
		{ /* #398 = 0x31B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000AE /* UIKit.UIDropProposal */ },
		{ /* #399 = 0x31D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000AF /* UIKit.UICollectionViewLayoutInvalidationContext */ },
		{ /* #400 = 0x31F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000B0 /* UIKit.UICollectionViewFlowLayoutInvalidationContext */ },
		{ /* #401 = 0x321 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000B1 /* UIKit.UIFocusUpdateContext */ },
		{ /* #402 = 0x323 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000B2 /* UIKit.UICollectionViewFocusUpdateContext */ },
		{ /* #403 = 0x325 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000B3 /* UIKit.UICollectionViewTransitionLayout */ },
		{ /* #404 = 0x327 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000B4 /* UIKit.UICollectionViewUpdateItem */ },
		{ /* #405 = 0x329 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000B5 /* UIKit.UICommand */ },
		{ /* #406 = 0x32B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000B6 /* UIKit.UIContextMenuConfiguration */ },
		{ /* #407 = 0x32D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000B7 /* UIKit.IUIContextMenuInteractionAnimating */ },
		{ /* #408 = 0x32F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001AA /* UIKit.UIContextMenuInteractionAnimatingWrapper */ },
		{ /* #409 = 0x331 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000B8 /* UIKit.IUIContextMenuInteractionCommitAnimating */ },
		{ /* #410 = 0x333 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001AB /* UIKit.UIContextMenuInteractionCommitAnimatingWrapper */ },
		{ /* #411 = 0x335 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000B9 /* UIKit.UIMenuSystem */ },
		{ /* #412 = 0x337 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000BA /* UIKit.UIConversationContext */ },
		{ /* #413 = 0x339 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000BB /* UIKit.IUITimingCurveProvider */ },
		{ /* #414 = 0x33B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001C9 /* UIKit.UITimingCurveProviderWrapper */ },
		{ /* #415 = 0x33D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000BC /* UIKit.UICubicTimingParameters */ },
		{ /* #416 = 0x33F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000BD /* UIKit.IUIViewControllerAnimatedTransitioning */ },
		{ /* #417 = 0x341 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001CC /* UIKit.UIViewControllerAnimatedTransitioningWrapper */ },
		{ /* #418 = 0x343 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000BE /* UIKit.IUIDragDropSession */ },
		{ /* #419 = 0x345 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001AF /* UIKit.UIDragDropSessionWrapper */ },
		{ /* #420 = 0x347 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000BF /* UIKit.UIDragInteraction */ },
		{ /* #421 = 0x349 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000C0 /* UIKit.UIDragItem */ },
		{ /* #422 = 0x34B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000C1 /* UIKit.UIDragPreview */ },
		{ /* #423 = 0x34D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000C2 /* UIKit.IUIDragSession */ },
		{ /* #424 = 0x34F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001B1 /* UIKit.UIDragSessionWrapper */ },
		{ /* #425 = 0x351 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000C3 /* UIKit.UIDropInteraction */ },
		{ /* #426 = 0x353 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000C4 /* UIKit.IUIDropSession */ },
		{ /* #427 = 0x355 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001B3 /* UIKit.UIDropSessionWrapper */ },
		{ /* #428 = 0x357 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000C5 /* UIKit.IUIEditMenuInteractionAnimating */ },
		{ /* #429 = 0x359 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001B5 /* UIKit.UIEditMenuInteractionAnimatingWrapper */ },
		{ /* #430 = 0x35B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000C6 /* UIKit.UIFontMetrics */ },
		{ /* #431 = 0x35D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000C7 /* UIKit.UIGraphicsRenderer */ },
		{ /* #432 = 0x35F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000C8 /* UIKit.UIGraphicsImageRenderer */ },
		{ /* #433 = 0x361 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000C9 /* UIKit.UIGraphicsRendererContext */ },
		{ /* #434 = 0x363 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000CA /* UIKit.UIGraphicsImageRendererContext */ },
		{ /* #435 = 0x365 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000CB /* UIKit.UIGraphicsRendererFormat */ },
		{ /* #436 = 0x367 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000CC /* UIKit.UIGraphicsImageRendererFormat */ },
		{ /* #437 = 0x369 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000CD /* UIKit.UIInputSuggestion */ },
		{ /* #438 = 0x36B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000CE /* UIKit.UIKeyCommand */ },
		{ /* #439 = 0x36D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000CF /* UIKit.IUILayoutSupport */ },
		{ /* #440 = 0x36F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001B8 /* UIKit.UILayoutSupportWrapper */ },
		{ /* #441 = 0x371 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000D0 /* UIKit.UIListContentConfiguration */ },
		{ /* #442 = 0x373 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000D1 /* UIKit.UIListContentTextProperties */ },
		{ /* #443 = 0x375 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000D2 /* UIKit.UILocalNotification */ },
		{ /* #444 = 0x377 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000D3 /* UIKit.IUIMenuBuilder */ },
		{ /* #445 = 0x379 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001B9 /* UIKit.UIMenuBuilderWrapper */ },
		{ /* #446 = 0x37B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000D4 /* UIKit.UINavigationBarAppearance */ },
		{ /* #447 = 0x37D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000D5 /* UIKit.UINavigationItem */ },
		{ /* #448 = 0x37F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000D6 /* UIKit.IUINSIntegerTraitDefinition */ },
		{ /* #449 = 0x381 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001BC /* UIKit.UINSIntegerTraitDefinitionWrapper */ },
		{ /* #450 = 0x383 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000D7 /* UIKit.IUIObjectTraitDefinition */ },
		{ /* #451 = 0x385 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001BD /* UIKit.UIObjectTraitDefinitionWrapper */ },
		{ /* #452 = 0x387 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000D8 /* UIKit.UIOpenUrlContext */ },
		{ /* #453 = 0x389 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000D9 /* UIKit.IUIViewControllerInteractiveTransitioning */ },
		{ /* #454 = 0x38B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001CE /* UIKit.UIViewControllerInteractiveTransitioningWrapper */ },
		{ /* #455 = 0x38D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000DA /* UIKit.UIPress */ },
		{ /* #456 = 0x38F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000DB /* UIKit.UISceneActivationRequestOptions */ },
		{ /* #457 = 0x391 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000DC /* UIKit.UISceneConfiguration */ },
		{ /* #458 = 0x393 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000DD /* UIKit.UISceneConnectionOptions */ },
		{ /* #459 = 0x395 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000DE /* UIKit.UISceneDestructionRequestOptions */ },
		{ /* #460 = 0x397 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000DF /* UIKit.UISceneSession */ },
		{ /* #461 = 0x399 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000E0 /* UIKit.UISceneSessionActivationRequest */ },
		{ /* #462 = 0x39B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000E1 /* UIKit.UISceneSizeRestrictions */ },
		{ /* #463 = 0x39D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000E2 /* UIKit.UISceneWindowingBehaviors */ },
		{ /* #464 = 0x39F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000E3 /* UIKit.UISceneWindowingControlStyle */ },
		{ /* #465 = 0x3A1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000E4 /* UIKit.IUISearchBarDelegate */ },
		{ /* #466 = 0x3A3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001C1 /* UIKit.UISearchBarDelegateWrapper */ },
		{ /* #467 = 0x3A5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000E5 /* UIKit.UISearchResultsUpdating */ },
		{ /* #468 = 0x3A7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000E6 /* UIKit.UITab */ },
		{ /* #469 = 0x3A9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000E7 /* UIKit.IUITextFieldDelegate */ },
		{ /* #470 = 0x3AB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001C5 /* UIKit.UITextFieldDelegateWrapper */ },
		{ /* #471 = 0x3AD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000E8 /* UIKit.IUISpringLoadedInteractionContext */ },
		{ /* #472 = 0x3AF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001C2 /* UIKit.UISpringLoadedInteractionContextWrapper */ },
		{ /* #473 = 0x3B1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000E9 /* UIKit.UISpringTimingParameters */ },
		{ /* #474 = 0x3B3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000EA /* UIKit.UIStatusBarManager */ },
		{ /* #475 = 0x3B5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000EB /* UIKit.UITabBarAppearance */ },
		{ /* #476 = 0x3B7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000EC /* UIKit.IUITabBarControllerDelegate */ },
		{ /* #477 = 0x3B9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001C3 /* UIKit.UITabBarControllerDelegateWrapper */ },
		{ /* #478 = 0x3BB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000ED /* UIKit.UITabBarItemAppearance */ },
		{ /* #479 = 0x3BD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000EE /* UIKit.UITabBarItemStateAppearance */ },
		{ /* #480 = 0x3BF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000EF /* UIKit.UITabGroup */ },
		{ /* #481 = 0x3C1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000F0 /* UIKit.UITargetedPreview */ },
		{ /* #482 = 0x3C3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000F1 /* UIKit.UITargetedDragPreview */ },
		{ /* #483 = 0x3C5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000F2 /* UIKit.UITextFormattingViewController */ },
		{ /* #484 = 0x3C7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000F3 /* UIKit.UITextInputAssistantItem */ },
		{ /* #485 = 0x3C9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000F4 /* UIKit.UITextInputPasswordRules */ },
		{ /* #486 = 0x3CB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000F5 /* UIKit.UITextItem */ },
		{ /* #487 = 0x3CD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000F6 /* UIKit.UITextItemMenuConfiguration */ },
		{ /* #488 = 0x3CF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000F7 /* UIKit.UITextPlaceholder */ },
		{ /* #489 = 0x3D1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000F8 /* UIKit.UITextPosition */ },
		{ /* #490 = 0x3D3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000F9 /* UIKit.UITextRange */ },
		{ /* #491 = 0x3D5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000FA /* UIKit.UITextSelectionRect */ },
		{ /* #492 = 0x3D7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000FB /* UIKit.UIToolTipInteraction */ },
		{ /* #493 = 0x3D9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000FC /* UIKit.UITouch */ },
		{ /* #494 = 0x3DB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000FD /* UIKit.UIUserNotificationSettings */ },
		{ /* #495 = 0x3DD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000FE /* UIKit.IUIViewAnimating */ },
		{ /* #496 = 0x3DF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001CB /* UIKit.UIViewAnimatingWrapper */ },
		{ /* #497 = 0x3E1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20000FF /* UIKit.IUIViewControllerContextTransitioning */ },
		{ /* #498 = 0x3E3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001CD /* UIKit.UIViewControllerContextTransitioningWrapper */ },
		{ /* #499 = 0x3E5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000100 /* UIKit.IUIViewControllerTransitionCoordinatorContext */ },
		{ /* #500 = 0x3E7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001D0 /* UIKit.UIViewControllerTransitionCoordinatorContextWrapper */ },
		{ /* #501 = 0x3E9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000101 /* UIKit.IUIViewControllerTransitionCoordinator */ },
		{ /* #502 = 0x3EB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001CF /* UIKit.UIViewControllerTransitionCoordinatorWrapper */ },
		{ /* #503 = 0x3ED */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000102 /* UIKit.IUIViewControllerTransitioningDelegate */ },
		{ /* #504 = 0x3EF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001D1 /* UIKit.UIViewControllerTransitioningDelegateWrapper */ },
		{ /* #505 = 0x3F1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000103 /* UIKit.IUIViewImplicitlyAnimating */ },
		{ /* #506 = 0x3F3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001D2 /* UIKit.UIViewImplicitlyAnimatingWrapper */ },
		{ /* #507 = 0x3F5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000104 /* UIKit.UIViewPropertyAnimator */ },
		{ /* #508 = 0x3F7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000105 /* UIKit.UIWindowSceneGeometry */ },
		{ /* #509 = 0x3F9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000106 /* UIKit.UIWindowSceneGeometryPreferences */ },
		{ /* #510 = 0x3FB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000107 /* UIKit.UIWindowSceneGeometryPreferencesMac */ },
		{ /* #511 = 0x3FD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000108 /* Foundation.INSItemProviderWriting */ },
		{ /* #512 = 0x3FF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001D7 /* Foundation.NSItemProviderWritingWrapper */ },
		{ /* #513 = 0x401 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000109 /* Foundation.NSString */ },
		{ /* #514 = 0x403 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200010A /* CoreLocation.CLRegion */ },
		{ /* #515 = 0x405 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200010B /* CoreLocation.CLBeaconRegion */ },
		{ /* #516 = 0x407 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200010C /* CoreLocation.CLBeacon */ },
		{ /* #517 = 0x409 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200010D /* CoreLocation.CLBeaconIdentityConstraint */ },
		{ /* #518 = 0x40B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200010E /* CoreLocation.CLHeading */ },
		{ /* #519 = 0x40D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200010F /* CoreLocation.CLLocation */ },
		{ /* #520 = 0x40F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000110 /* CoreLocation.CLVisit */ },
		{ /* #521 = 0x411 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000111 /* Foundation.NSValue */ },
		{ /* #522 = 0x413 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000112 /* Foundation.NSDispatcher */ },
		{ /* #523 = 0x415 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000113 /* Foundation.NSActionDispatcher */ },
		{ /* #524 = 0x417 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000114 /* Foundation.NSSynchronizationContextDispatcher */ },
		{ /* #525 = 0x419 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000115 /* Foundation.NSAsyncDispatcher */ },
		{ /* #526 = 0x41B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000116 /* Foundation.NSAsyncActionDispatcher */ },
		{ /* #527 = 0x41D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000117 /* Foundation.NSAsyncSynchronizationContextDispatcher */ },
		{ /* #528 = 0x41F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000118 /* Foundation.NSArray */ },
		{ /* #529 = 0x421 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000119 /* Foundation.NSDateComponents */ },
		{ /* #530 = 0x423 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200011A /* Foundation.NSError */ },
		{ /* #531 = 0x425 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200011B /* Foundation.NSExceptionError */ },
		{ /* #532 = 0x427 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200011C /* Foundation.NSHttpCookie */ },
		{ /* #533 = 0x429 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200011D /* Foundation.NSStream */ },
		{ /* #534 = 0x42B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200011E /* Foundation.NSInputStream */ },
		{ /* #535 = 0x42D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200011F /* Foundation.NSAttributedString */ },
		{ /* #536 = 0x42F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000120 /* Foundation.NSMutableAttributedString */ },
		{ /* #537 = 0x431 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000121 /* Foundation.NSSet */ },
		{ /* #538 = 0x433 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000122 /* Foundation.NSMutableSet */ },
		{ /* #539 = 0x435 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000123 /* Foundation.NSUrlRequest */ },
		{ /* #540 = 0x437 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000124 /* Foundation.NSMutableUrlRequest */ },
		{ /* #541 = 0x439 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000125 /* Foundation.InternalNSNotificationHandler */ },
		{ /* #542 = 0x43B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000126 /* Foundation.NSNull */ },
		{ /* #543 = 0x43D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000127 /* Foundation.NSNumber */ },
		{ /* #544 = 0x43F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000128 /* Foundation.NSProxy */ },
		{ /* #545 = 0x441 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000129 /* Foundation.NSRunLoop */ },
		{ /* #546 = 0x443 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200012A /* Foundation.NSUrlCredential */ },
		{ /* #547 = 0x445 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200012B /* Foundation.NSUrlProtectionSpace */ },
		{ /* #548 = 0x447 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200012C /* Foundation.NSAutoreleasePool */ },
		{ /* #549 = 0x449 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200012D /* Foundation.NSCachedUrlResponse */ },
		{ /* #550 = 0x44B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200012E /* Foundation.NSDateFormatter */ },
		{ /* #551 = 0x44D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200012F /* Foundation.NSException */ },
		{ /* #552 = 0x44F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000130 /* Foundation.NSUrlResponse */ },
		{ /* #553 = 0x451 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000131 /* Foundation.NSHttpUrlResponse */ },
		{ /* #554 = 0x453 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000132 /* Foundation.NSIndexSet */ },
		{ /* #555 = 0x455 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000133 /* Foundation.NSNotification */ },
		{ /* #556 = 0x457 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000134 /* Foundation.NSOperationQueue */ },
		{ /* #557 = 0x459 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000135 /* Foundation.NSData */ },
		{ /* #558 = 0x45B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000136 /* Foundation.NSMutableData */ },
		{ /* #559 = 0x45D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000137 /* Foundation.NSStringDrawingContext */ },
		{ /* #560 = 0x45F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000138 /* Foundation.NSUrlAuthenticationChallenge */ },
		{ /* #561 = 0x461 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000139 /* Foundation.INSUrlSessionDelegate */ },
		{ /* #562 = 0x463 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001D8 /* Foundation.NSUrlSessionDelegateWrapper */ },
		{ /* #563 = 0x465 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200013A /* Foundation.NSUrlSessionDelegate */ },
		{ /* #564 = 0x467 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200013B /* Foundation.NSUrlSessionTaskDelegate */ },
		{ /* #565 = 0x469 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200013C /* Foundation.NSUrlSessionDataDelegate */ },
		{ /* #566 = 0x46B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200013D /* Foundation.NSUrlSessionTask */ },
		{ /* #567 = 0x46D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200013E /* Foundation.NSUrlSessionDataTask */ },
		{ /* #568 = 0x46F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200013F /* CoreAnimation.CAAnimation */ },
		{ /* #569 = 0x471 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000140 /* CoreAnimation.CAPropertyAnimation */ },
		{ /* #570 = 0x473 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000141 /* CoreAnimation.CABasicAnimation */ },
		{ /* #571 = 0x475 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000142 /* CoreAnimation.CADisplayLink */ },
		{ /* #572 = 0x477 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000143 /* CoreAnimation.CALayerDelegate */ },
		{ /* #573 = 0x479 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000144 /* Contacts.CNContactProperty */ },
		{ /* #574 = 0x47B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000145 /* Contacts.CNContact */ },
		{ /* #575 = 0x47D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000146 /* CloudKit.CKShareMetadata */ },
		{ /* #576 = 0x47F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000147 /* AuthenticationServices.ASAuthorization */ },
		{ /* #577 = 0x481 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000148 /* AuthenticationServices.ASAuthorizationController */ },
		{ /* #578 = 0x483 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000149 /* AuthenticationServices.IASAuthorizationCredential */ },
		{ /* #579 = 0x485 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x20001DB /* AuthenticationServices.ASAuthorizationCredentialWrapper */ },
		{ /* #580 = 0x487 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200014A /* AuthenticationServices.ASWebAuthenticationSession */ },
		{ /* #581 = 0x489 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200014B /* Foundation.NSUrlSession */ },
		{ /* #582 = 0x48B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200014C /* UIKit.UIView/UIViewAppearance */ },
		{ /* #583 = 0x48D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200014D /* UIKit.UIScrollView/UIScrollViewAppearance */ },
		{ /* #584 = 0x48F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200014E /* UIKit.UIControl/UIControlAppearance */ },
		{ /* #585 = 0x491 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200014F /* UIKit.UIButton/UIButtonAppearance */ },
		{ /* #586 = 0x493 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000150 /* MediaPlayer.MPVolumeView */ },
		{ /* #587 = 0x495 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000151 /* UIKit.UIBarItem/UIBarItemAppearance */ },
		{ /* #588 = 0x497 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000152 /* WebKit.WKDownload */ },
		{ /* #589 = 0x499 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000153 /* WebKit.WKHttpCookieStore */ },
		{ /* #590 = 0x49B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000154 /* WebKit.WKWebsiteDataStore */ },
		{ /* #591 = 0x49D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000155 /* UIKit.UIApplication */ },
		{ /* #592 = 0x49F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000156 /* UIKit.UIBarButtonItem/Callback */ },
		{ /* #593 = 0x4A1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000157 /* UIKit.UIColor */ },
		{ /* #594 = 0x4A3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000158 /* UIKit.UIDevice */ },
		{ /* #595 = 0x4A5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000159 /* UIKit.UIGestureRecognizer/Callback`1 */ },
		{ /* #596 = 0x4A7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200015A /* UIKit.UIGestureRecognizer/ParameterlessDispatch */ },
		{ /* #597 = 0x4A9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200015B /* UIKit.UIGestureRecognizer/ParametrizedDispatch */ },
		{ /* #598 = 0x4AB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200015C /* UIKit.UIGestureRecognizer/_UIGestureRecognizerDelegate */ },
		{ /* #599 = 0x4AD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200015D /* UIKit.UIImage */ },
		{ /* #600 = 0x4AF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200015E /* UIKit.UIImagePickerController */ },
		{ /* #601 = 0x4B1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200015F /* UIKit.UINavigationBar/UINavigationBarAppearance */ },
		{ /* #602 = 0x4B3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000160 /* UIKit.UIPickerView */ },
		{ /* #603 = 0x4B5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000161 /* UIKit.UIPopoverPresentationController/_UIPopoverPresentationControllerDelegate */ },
		{ /* #604 = 0x4B7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000162 /* UIKit.UIPopoverPresentationController */ },
		{ /* #605 = 0x4B9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000163 /* UIKit.UIScreen */ },
		{ /* #606 = 0x4BB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000164 /* UIKit.UISearchBar/UISearchBarAppearance */ },
		{ /* #607 = 0x4BD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000165 /* UIKit.UISearchBar/_UISearchBarDelegate */ },
		{ /* #608 = 0x4BF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000166 /* UIKit.UISearchController/__Xamarin_UISearchResultsUpdating */ },
		{ /* #609 = 0x4C1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000167 /* UIKit.UISearchController */ },
		{ /* #610 = 0x4C3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000168 /* UIKit.UITableView/UITableViewAppearance */ },
		{ /* #611 = 0x4C5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000169 /* UIKit.UITableView */ },
		{ /* #612 = 0x4C7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200016A /* UIKit.UITextField/_UITextFieldDelegate */ },
		{ /* #613 = 0x4C9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200016B /* UIKit.UIScrollView/_UIScrollViewDelegate */ },
		{ /* #614 = 0x4CB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200016C /* UIKit.UITextView/_UITextViewDelegate */ },
		{ /* #615 = 0x4CD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200016D /* UIKit.NSTextStorage */ },
		{ /* #616 = 0x4CF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200016E /* UIKit.UIDatePicker */ },
		{ /* #617 = 0x4D1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200016F /* UIKit.UIDocumentPickerViewController */ },
		{ /* #618 = 0x4D3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000170 /* UIKit.UIFocusAnimationCoordinator */ },
		{ /* #619 = 0x4D5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000171 /* UIKit.UIProgressView */ },
		{ /* #620 = 0x4D7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000172 /* UIKit.UISearchTextField */ },
		{ /* #621 = 0x4D9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000173 /* UIKit.UISlider */ },
		{ /* #622 = 0x4DB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000174 /* UIKit.UIStackView */ },
		{ /* #623 = 0x4DD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000175 /* UIKit.UIStepper */ },
		{ /* #624 = 0x4DF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000176 /* UIKit.UISwitch/UISwitchAppearance */ },
		{ /* #625 = 0x4E1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000177 /* UIKit.UISwitch */ },
		{ /* #626 = 0x4E3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000178 /* UIKit.UITabBar/UITabBarAppearance */ },
		{ /* #627 = 0x4E5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000179 /* UIKit.UITabBar */ },
		{ /* #628 = 0x4E7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200017A /* UIKit.UITabBarController/_UITabBarControllerDelegate */ },
		{ /* #629 = 0x4E9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200017B /* UIKit.UITabBarItem/UITabBarItemAppearance */ },
		{ /* #630 = 0x4EB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200017C /* UIKit.UITabBarItem */ },
		{ /* #631 = 0x4ED */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200017D /* UIKit.UIVisualEffectView */ },
		{ /* #632 = 0x4EF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200017E /* UIKit.UIWindow */ },
		{ /* #633 = 0x4F1 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200017F /* CoreLocation.CLLocationManager */ },
		{ /* #634 = 0x4F3 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000180 /* Foundation.NSIndexPath */ },
		{ /* #635 = 0x4F5 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000181 /* Foundation.NSBundle */ },
		{ /* #636 = 0x4F7 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000182 /* Foundation.NSDate */ },
		{ /* #637 = 0x4F9 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000183 /* Foundation.NSDictionary */ },
		{ /* #638 = 0x4FB */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000184 /* Foundation.NSItemProvider */ },
		{ /* #639 = 0x4FD */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000185 /* Foundation.NSLocale */ },
		{ /* #640 = 0x4FF */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000186 /* Foundation.NSMutableDictionary */ },
		{ /* #641 = 0x501 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000187 /* Foundation.NSNotificationCenter */ },
		{ /* #642 = 0x503 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000188 /* Foundation.NSObject/NSObject_Disposer */ },
		{ /* #643 = 0x505 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000189 /* Foundation.NSObject/Observer */ },
		{ /* #644 = 0x507 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200018A /* Foundation.NSProgress */ },
		{ /* #645 = 0x509 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200018B /* Foundation.NSThread */ },
		{ /* #646 = 0x50B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200018C /* Foundation.NSTimeZone */ },
		{ /* #647 = 0x50D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200018D /* Foundation.NSUndoManager */ },
		{ /* #648 = 0x50F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200018E /* Foundation.NSUrl */ },
		{ /* #649 = 0x511 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200018F /* Foundation.NSUrlSessionConfiguration */ },
		{ /* #650 = 0x513 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000190 /* Foundation.NSUserDefaults */ },
		{ /* #651 = 0x515 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000191 /* Foundation.NSCache */ },
		{ /* #652 = 0x517 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000192 /* Foundation.NSCalendar */ },
		{ /* #653 = 0x519 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000193 /* Foundation.NSHttpCookieStorage */ },
		{ /* #654 = 0x51B */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000194 /* Foundation.NSUserActivity */ },
		{ /* #655 = 0x51D */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000195 /* System.Net.Http.NSUrlSessionHandler/WrappedNSInputStream */ },
		{ /* #656 = 0x51F */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000196 /* AuthenticationServices.ASAuthorizationAppleIdCredential */ },
		{ /* #657 = 0x521 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000197 /* System.Net.Http.NSUrlSessionHandler/NSUrlSessionHandlerDelegate */ },
		{ /* #658 = 0x523 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000198 /* Foundation.NSMutableSet`1 */ },
		{ /* #659 = 0x525 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x2000199 /* Foundation.NSSet`1 */ },
		{ /* #660 = 0x527 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200019A /* Foundation.NSDictionary`2 */ },
		{ /* #661 = 0x529 */ 191 /* Microsoft.iOS */, 0xFFFFFFFF /* Microsoft.iOS.dll */, 0x200019B /* Foundation.NSMutableDictionary`2 */ },

	};

	static const MTProtocolWrapperMap __xamarin_protocol_wrapper_map [] = {
		{ 0x5 /* UIKit.IUIApplicationDelegate */, 0x7 /* UIApplicationDelegateWrapper */ },
		{ 0x17 /* UIKit.IUIAdaptivePresentationControllerDelegate */, 0x19 /* UIAdaptivePresentationControllerDelegateWrapper */ },
		{ 0x1D /* UIKit.IUICoordinateSpace */, 0x1F /* UICoordinateSpaceWrapper */ },
		{ 0x21 /* UIKit.IUIDynamicItem */, 0x23 /* UIDynamicItemWrapper */ },
		{ 0x2D /* UIKit.IUINavigationControllerDelegate */, 0x2F /* UINavigationControllerDelegateWrapper */ },
		{ 0x33 /* UIKit.IUITableViewDataSource */, 0x35 /* UITableViewDataSourceWrapper */ },
		{ 0x37 /* UIKit.IUIScrollViewDelegate */, 0x39 /* UIScrollViewDelegateWrapper */ },
		{ 0x3F /* UIKit.IUIGestureRecognizerDelegate */, 0x41 /* UIGestureRecognizerDelegateWrapper */ },
		{ 0x51 /* UIKit.IUICollectionViewDelegate */, 0x53 /* UICollectionViewDelegateWrapper */ },
		{ 0xD9 /* UIKit.IUIContextMenuInteractionDelegate */, 0xDB /* UIContextMenuInteractionDelegateWrapper */ },
		{ 0xF9 /* UIKit.IUIDragInteractionDelegate */, 0xFB /* UIDragInteractionDelegateWrapper */ },
		{ 0xFD /* UIKit.IUIDropInteractionDelegate */, 0xFF /* UIDropInteractionDelegateWrapper */ },
		{ 0x161 /* UIKit.IUIInteraction */, 0x163 /* UIInteractionWrapper */ },
		{ 0x19B /* UIKit.IUITextInputTraits */, 0x19D /* UITextInputTraitsWrapper */ },
		{ 0x19F /* UIKit.IUITextInput */, 0x1A1 /* UITextInputWrapper */ },
		{ 0x1B9 /* WebKit.IWKNavigationDelegate */, 0x1BB /* WKNavigationDelegateWrapper */ },
		{ 0x1CF /* UIKit.IUIPickerViewDataSource */, 0x1D1 /* UIPickerViewDataSourceWrapper */ },
		{ 0x1DB /* UIKit.IUISceneDelegate */, 0x1DD /* UISceneDelegateWrapper */ },
		{ 0x1DF /* UIKit.IUIWindowSceneDelegate */, 0x1E1 /* UIWindowSceneDelegateWrapper */ },
		{ 0x1F9 /* WebKit.IWKUIDelegate */, 0x1FB /* WKUIDelegateWrapper */ },
		{ 0x205 /* WebKit.IWKScriptMessageHandler */, 0x207 /* WKScriptMessageHandlerWrapper */ },
		{ 0x20D /* WebKit.IWKUrlSchemeHandler */, 0x20F /* WKUrlSchemeHandlerWrapper */ },
		{ 0x213 /* AuthenticationServices.IASAuthorizationControllerDelegate */, 0x215 /* ASAuthorizationControllerDelegateWrapper */ },
		{ 0x217 /* AuthenticationServices.IASAuthorizationControllerPresentationContextProviding */, 0x219 /* ASAuthorizationControllerPresentationContextProvidingWrapper */ },
		{ 0x22B /* CoreLocation.ICLLocationManagerDelegate */, 0x22D /* CLLocationManagerDelegateWrapper */ },
		{ 0x239 /* AuthenticationServices.IASWebAuthenticationPresentationContextProviding */, 0x23B /* ASWebAuthenticationPresentationContextProvidingWrapper */ },
		{ 0x24D /* Foundation.INSCopying */, 0x24F /* NSCopyingWrapper */ },
		{ 0x25F /* UIKit.IUITextViewDelegate */, 0x261 /* UITextViewDelegateWrapper */ },
		{ 0x263 /* Foundation.INSItemProviderReading */, 0x265 /* NSItemProviderReadingWrapper */ },
		{ 0x281 /* WebKit.IWKPreviewActionItem */, 0x283 /* WKPreviewActionItemWrapper */ },
		{ 0x28D /* WebKit.IWKUrlSchemeTask */, 0x28F /* WKUrlSchemeTaskWrapper */ },
		{ 0x2C3 /* UIKit.IUIMutableTraits */, 0x2C5 /* UIMutableTraitsWrapper */ },
		{ 0x2C7 /* UIKit.IUITraitOverrides */, 0x2C9 /* UITraitOverridesWrapper */ },
		{ 0x2D5 /* UIKit.INSCollectionLayoutContainer */, 0x2D7 /* NSCollectionLayoutContainerWrapper */ },
		{ 0x2DB /* UIKit.INSCollectionLayoutEnvironment */, 0x2DD /* NSCollectionLayoutEnvironmentWrapper */ },
		{ 0x2E7 /* UIKit.INSCollectionLayoutVisibleItem */, 0x2E9 /* NSCollectionLayoutVisibleItemWrapper */ },
		{ 0x30D /* UIKit.IUITraitDefinition */, 0x30F /* UITraitDefinitionWrapper */ },
		{ 0x311 /* UIKit.IUICGFloatTraitDefinition */, 0x313 /* UICGFloatTraitDefinitionWrapper */ },
		{ 0x317 /* UIKit.IUIDragAnimating */, 0x319 /* UIDragAnimatingWrapper */ },
		{ 0x32D /* UIKit.IUIContextMenuInteractionAnimating */, 0x32F /* UIContextMenuInteractionAnimatingWrapper */ },
		{ 0x331 /* UIKit.IUIContextMenuInteractionCommitAnimating */, 0x333 /* UIContextMenuInteractionCommitAnimatingWrapper */ },
		{ 0x339 /* UIKit.IUITimingCurveProvider */, 0x33B /* UITimingCurveProviderWrapper */ },
		{ 0x33F /* UIKit.IUIViewControllerAnimatedTransitioning */, 0x341 /* UIViewControllerAnimatedTransitioningWrapper */ },
		{ 0x343 /* UIKit.IUIDragDropSession */, 0x345 /* UIDragDropSessionWrapper */ },
		{ 0x34D /* UIKit.IUIDragSession */, 0x34F /* UIDragSessionWrapper */ },
		{ 0x353 /* UIKit.IUIDropSession */, 0x355 /* UIDropSessionWrapper */ },
		{ 0x357 /* UIKit.IUIEditMenuInteractionAnimating */, 0x359 /* UIEditMenuInteractionAnimatingWrapper */ },
		{ 0x36D /* UIKit.IUILayoutSupport */, 0x36F /* UILayoutSupportWrapper */ },
		{ 0x377 /* UIKit.IUIMenuBuilder */, 0x379 /* UIMenuBuilderWrapper */ },
		{ 0x37F /* UIKit.IUINSIntegerTraitDefinition */, 0x381 /* UINSIntegerTraitDefinitionWrapper */ },
		{ 0x383 /* UIKit.IUIObjectTraitDefinition */, 0x385 /* UIObjectTraitDefinitionWrapper */ },
		{ 0x389 /* UIKit.IUIViewControllerInteractiveTransitioning */, 0x38B /* UIViewControllerInteractiveTransitioningWrapper */ },
		{ 0x3A1 /* UIKit.IUISearchBarDelegate */, 0x3A3 /* UISearchBarDelegateWrapper */ },
		{ 0x3A9 /* UIKit.IUITextFieldDelegate */, 0x3AB /* UITextFieldDelegateWrapper */ },
		{ 0x3AD /* UIKit.IUISpringLoadedInteractionContext */, 0x3AF /* UISpringLoadedInteractionContextWrapper */ },
		{ 0x3B7 /* UIKit.IUITabBarControllerDelegate */, 0x3B9 /* UITabBarControllerDelegateWrapper */ },
		{ 0x3DD /* UIKit.IUIViewAnimating */, 0x3DF /* UIViewAnimatingWrapper */ },
		{ 0x3E1 /* UIKit.IUIViewControllerContextTransitioning */, 0x3E3 /* UIViewControllerContextTransitioningWrapper */ },
		{ 0x3E5 /* UIKit.IUIViewControllerTransitionCoordinatorContext */, 0x3E7 /* UIViewControllerTransitionCoordinatorContextWrapper */ },
		{ 0x3E9 /* UIKit.IUIViewControllerTransitionCoordinator */, 0x3EB /* UIViewControllerTransitionCoordinatorWrapper */ },
		{ 0x3ED /* UIKit.IUIViewControllerTransitioningDelegate */, 0x3EF /* UIViewControllerTransitioningDelegateWrapper */ },
		{ 0x3F1 /* UIKit.IUIViewImplicitlyAnimating */, 0x3F3 /* UIViewImplicitlyAnimatingWrapper */ },
		{ 0x3FD /* Foundation.INSItemProviderWriting */, 0x3FF /* NSItemProviderWritingWrapper */ },
		{ 0x461 /* Foundation.INSUrlSessionDelegate */, 0x463 /* NSUrlSessionDelegateWrapper */ },
		{ 0x483 /* AuthenticationServices.IASAuthorizationCredential */, 0x485 /* ASAuthorizationCredentialWrapper */ },
	};

	static struct MTRegistrationMap __xamarin_registration_map = {
		"56ca6c48222dea13597419d5b8d1dc346ad6413d",
		__xamarin_registration_assemblies,
		__xamarin_class_map,
		__xamarin_token_references,
		__xamarin_skipped_map,
		__xamarin_protocol_wrapper_map,
		{ NULL, NULL },
		192,
		527,
		661,
		4,
		65,
		0,
		(void **)0
	};

void xamarin_create_classes () {
	__xamarin_class_map [0].handle = objc_getClass ("NSObject");
	__xamarin_class_map [1].handle = objc_getClass ("UIResponder");
	__xamarin_class_map [2].handle = [Microsoft_Maui_MauiUIApplicationDelegate class];
	__xamarin_class_map [3].handle = [AppDelegate class];
	__xamarin_class_map [4].handle = objc_getClass ("UIGestureRecognizer");
	__xamarin_class_map [5].handle = [Microsoft_Maui_Controls_Compatibility_Platform_iOS_GlobalCloseContextGestureRecognizer class];
	__xamarin_class_map [6].handle = [Microsoft_Maui_Controls_Compatibility_Platform_iOS_NativeViewPropertyListener class];
	__xamarin_class_map [7].handle = objc_getClass ("UIViewController");
	__xamarin_class_map [8].handle = [Microsoft_Maui_Platform_ModalWrapper class];
	__xamarin_class_map [9].handle = [Microsoft_Maui_Controls_Platform_ControlsModalWrapper class];
	__xamarin_class_map [10].handle = objc_getClass ("UIView");
	__xamarin_class_map [11].handle = [Microsoft_Maui_Controls_Platform_Compatibility_UIContainerView class];
	__xamarin_class_map [12].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutHeaderContainer class];
	__xamarin_class_map [13].handle = objc_getClass ("UITabBarController");
	__xamarin_class_map [14].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellItemRenderer class];
	__xamarin_class_map [15].handle = objc_getClass ("UITableViewController");
	__xamarin_class_map [16].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewController class];
	__xamarin_class_map [17].handle = objc_getClass ("UITableViewCell");
	__xamarin_class_map [18].handle = [Microsoft_Maui_Controls_Platform_Compatibility_UIContainerCell class];
	__xamarin_class_map [19].handle = objc_getClass ("UICollectionReusableView");
	__xamarin_class_map [20].handle = objc_getClass ("UICollectionViewCell");
	__xamarin_class_map [21].handle = [Microsoft_Maui_Controls_Handlers_Items_ItemsViewCell class];
	__xamarin_class_map [22].handle = [Microsoft_Maui_Controls_Handlers_Items_TemplatedCell class];
	__xamarin_class_map [23].handle = [Microsoft_Maui_Controls_Handlers_Items_CarouselTemplatedCell class];
	__xamarin_class_map [24].handle = objc_getClass ("Microsoft_iOS__UIKit_UICollectionViewDelegate");
	__xamarin_class_map [25].handle = objc_getClass ("Microsoft_iOS__UIKit_UICollectionViewDelegateFlowLayout");
	__xamarin_class_map [26].handle = [Microsoft_Maui_Controls_Handlers_Items_ItemsViewDelegator_2 class];
	__xamarin_class_map [27].handle = [Microsoft_Maui_Controls_Handlers_Items_CarouselViewDelegator class];
	__xamarin_class_map [28].handle = objc_getClass ("UICollectionViewLayout");
	__xamarin_class_map [29].handle = objc_getClass ("UICollectionViewFlowLayout");
	__xamarin_class_map [30].handle = [Microsoft_Maui_Controls_Handlers_Items_ItemsViewLayout class];
	__xamarin_class_map [31].handle = [Microsoft_Maui_Controls_Handlers_Items_CarouselViewLayout class];
	__xamarin_class_map [32].handle = [Microsoft_Maui_Controls_Handlers_Items_DefaultCell class];
	__xamarin_class_map [33].handle = [Microsoft_Maui_Controls_Handlers_Items_GridViewLayout class];
	__xamarin_class_map [34].handle = objc_getClass ("UICollectionViewController");
	__xamarin_class_map [35].handle = [Microsoft_Maui_Controls_Handlers_Items_ItemsViewController_1 class];
	__xamarin_class_map [36].handle = [Microsoft_Maui_Controls_Handlers_Items_StructuredItemsViewController_1 class];
	__xamarin_class_map [37].handle = [Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewController_1 class];
	__xamarin_class_map [38].handle = [Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewController_1 class];
	__xamarin_class_map [39].handle = [Microsoft_Maui_Controls_Handlers_Items_SelectableItemsViewDelegator_2 class];
	__xamarin_class_map [40].handle = [Microsoft_Maui_Controls_Handlers_Items_GroupableItemsViewDelegator_2 class];
	__xamarin_class_map [41].handle = [Microsoft_Maui_Controls_Handlers_Items_HeightConstrainedTemplatedCell class];
	__xamarin_class_map [42].handle = [Microsoft_Maui_Controls_Handlers_Items_HorizontalCell class];
	__xamarin_class_map [43].handle = [Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultCell class];
	__xamarin_class_map [44].handle = [Microsoft_Maui_Controls_Handlers_Items_HorizontalDefaultSupplementalView class];
	__xamarin_class_map [45].handle = [Microsoft_Maui_Controls_Handlers_Items_HorizontalSupplementaryView class];
	__xamarin_class_map [46].handle = [Microsoft_Maui_Controls_Handlers_Items_ListViewLayout class];
	__xamarin_class_map [47].handle = objc_getClass ("UIScrollView");
	__xamarin_class_map [48].handle = objc_getClass ("UICollectionView");
	__xamarin_class_map [49].handle = [Microsoft_Maui_Controls_Handlers_Items_MauiCollectionView class];
	__xamarin_class_map [50].handle = [Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewController_1 class];
	__xamarin_class_map [51].handle = [Microsoft_Maui_Controls_Handlers_Items_ReorderableItemsViewDelegator_2 class];
	__xamarin_class_map [52].handle = [Microsoft_Maui_Controls_Handlers_Items_WidthConstrainedTemplatedCell class];
	__xamarin_class_map [53].handle = [Microsoft_Maui_Controls_Handlers_Items_VerticalCell class];
	__xamarin_class_map [54].handle = [Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultCell class];
	__xamarin_class_map [55].handle = [Microsoft_Maui_Controls_Handlers_Items_VerticalDefaultSupplementalView class];
	__xamarin_class_map [56].handle = [Microsoft_Maui_Controls_Handlers_Items_VerticalSupplementaryView class];
	__xamarin_class_map [57].handle = [Microsoft_Maui_Controls_Handlers_Items2_ItemsViewCell2 class];
	__xamarin_class_map [58].handle = [Microsoft_Maui_Controls_Handlers_Items2_TemplatedCell2 class];
	__xamarin_class_map [59].handle = [Microsoft_Maui_Controls_Handlers_Items2_CarouselTemplatedCell2 class];
	__xamarin_class_map [60].handle = [Microsoft_Maui_Controls_Handlers_Items2_ItemsViewDelegator2_2 class];
	__xamarin_class_map [61].handle = [Microsoft_Maui_Controls_Handlers_Items2_CarouselViewDelegator2 class];
	__xamarin_class_map [62].handle = [Microsoft_Maui_Controls_Handlers_Items2_DefaultCell2 class];
	__xamarin_class_map [63].handle = [Microsoft_Maui_Controls_Handlers_Items2_ItemsViewController2_1 class];
	__xamarin_class_map [64].handle = [Microsoft_Maui_Controls_Handlers_Items2_StructuredItemsViewController2_1 class];
	__xamarin_class_map [65].handle = [Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewController2_1 class];
	__xamarin_class_map [66].handle = [Microsoft_Maui_Controls_Handlers_Items2_GroupableItemsViewController2_1 class];
	__xamarin_class_map [67].handle = [Microsoft_Maui_Controls_Handlers_Items2_SelectableItemsViewDelegator2_2 class];
	__xamarin_class_map [68].handle = [Microsoft_Maui_Controls_Handlers_Items2_GroupableItemsViewDelegator2_2 class];
	__xamarin_class_map [69].handle = [Microsoft_Maui_Controls_Handlers_Items2_HeightConstrainedTemplatedCell2 class];
	__xamarin_class_map [70].handle = [Microsoft_Maui_Controls_Handlers_Items2_HorizontalCell2 class];
	__xamarin_class_map [71].handle = [Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultCell2 class];
	__xamarin_class_map [72].handle = [Microsoft_Maui_Controls_Handlers_Items2_HorizontalDefaultSupplementalView2 class];
	__xamarin_class_map [73].handle = [Microsoft_Maui_Controls_Handlers_Items2_HorizontalSupplementaryView2 class];
	__xamarin_class_map [74].handle = [Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewController2_1 class];
	__xamarin_class_map [75].handle = [Microsoft_Maui_Controls_Handlers_Items2_ReorderableItemsViewDelegator2_2 class];
	__xamarin_class_map [76].handle = [Microsoft_Maui_Controls_Handlers_Items2_WidthConstrainedTemplatedCell2 class];
	__xamarin_class_map [77].handle = [Microsoft_Maui_Controls_Handlers_Items2_VerticalCell2 class];
	__xamarin_class_map [78].handle = [Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultCell2 class];
	__xamarin_class_map [79].handle = [Microsoft_Maui_Controls_Handlers_Items2_VerticalDefaultSupplementalView2 class];
	__xamarin_class_map [80].handle = [Microsoft_Maui_Controls_Handlers_Items2_VerticalSupplementaryView2 class];
	__xamarin_class_map [81].handle = objc_getClass ("UINavigationBar");
	__xamarin_class_map [82].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_MauiNavigationBar class];
	__xamarin_class_map [83].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_VisualElementRenderer_1 class];
	__xamarin_class_map [84].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer_2 class];
	__xamarin_class_map [85].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_ViewRenderer class];
	__xamarin_class_map [86].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_CellTableViewCell class];
	__xamarin_class_map [87].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_iOS7ButtonContainer class];
	__xamarin_class_map [88].handle = objc_getClass ("UITableViewHeaderFooterView");
	__xamarin_class_map [89].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_HeaderWrapperView class];
	__xamarin_class_map [90].handle = objc_getClass ("UIControl");
	__xamarin_class_map [91].handle = objc_getClass ("UIRefreshControl");
	__xamarin_class_map [92].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_FormsRefreshControl class];
	__xamarin_class_map [93].handle = objc_getClass ("Microsoft_iOS__UIKit_UIScrollViewDelegate");
	__xamarin_class_map [94].handle = objc_getClass ("Microsoft_iOS__UIKit_UITableViewSource");
	__xamarin_class_map [95].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_TableViewModelRenderer class];
	__xamarin_class_map [96].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_UnEvenTableViewModelRenderer class];
	__xamarin_class_map [97].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_TableViewRenderer class];
	__xamarin_class_map [98].handle = objc_getClass ("UITapGestureRecognizer");
	__xamarin_class_map [99].handle = [Microsoft_Maui_Platform_ResignFirstResponderTouchGestureRecognizer class];
	__xamarin_class_map [100].handle = objc_getClass ("UIBarItem");
	__xamarin_class_map [101].handle = objc_getClass ("UIBarButtonItem");
	__xamarin_class_map [102].handle = [Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_PrimaryToolbarItem class];
	__xamarin_class_map [103].handle = [Microsoft_Maui_Controls_Platform_DragAndDropDelegate_CustomLocalStateData class];
	__xamarin_class_map [104].handle = [Microsoft_Maui_Controls_Platform_DragAndDropDelegate class];
	__xamarin_class_map [105].handle = objc_getClass ("__UIGestureRecognizerToken");
	__xamarin_class_map [106].handle = [__UIGestureRecognizer class];
	__xamarin_class_map [107].handle = [Microsoft_Maui_Controls_Platform_iOS_CustomPressGestureRecognizer class];
	__xamarin_class_map [108].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutContentRenderer class];
	__xamarin_class_map [109].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellFlyoutRenderer class];
	__xamarin_class_map [110].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellPageRendererTracker_TitleViewContainer class];
	__xamarin_class_map [111].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellSearchResultsRenderer class];
	__xamarin_class_map [112].handle = objc_getClass ("Microsoft_iOS__UIKit_UIGestureRecognizerDelegate");
	__xamarin_class_map [113].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_GestureDelegate class];
	__xamarin_class_map [114].handle = objc_getClass ("Microsoft_iOS__UIKit_UINavigationControllerDelegate");
	__xamarin_class_map [115].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer_NavDelegate class];
	__xamarin_class_map [116].handle = objc_getClass ("UINavigationController");
	__xamarin_class_map [117].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRenderer class];
	__xamarin_class_map [118].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader_ShellSectionHeaderCell class];
	__xamarin_class_map [119].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootHeader class];
	__xamarin_class_map [120].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellSectionRootRenderer class];
	__xamarin_class_map [121].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource_SeparatorView class];
	__xamarin_class_map [122].handle = [Microsoft_Maui_Controls_Platform_Compatibility_ShellTableViewSource class];
	__xamarin_class_map [123].handle = [Microsoft_Maui_Controls_Handlers_Items_CarouselViewController class];
	__xamarin_class_map [124].handle = [Microsoft_Maui_Controls_Handlers_Items2_CarouselViewController2 class];
	__xamarin_class_map [125].handle = objc_getClass ("UICollectionViewCompositionalLayout");
	__xamarin_class_map [126].handle = [Microsoft_Maui_Controls_Handlers_Items2_LayoutFactory2_CustomUICollectionViewCompositionalLayout class];
	__xamarin_class_map [127].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer_ChildViewController class];
	__xamarin_class_map [128].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_PhoneFlyoutPageRenderer class];
	__xamarin_class_map [129].handle = [Microsoft_Maui_Platform_MauiView class];
	__xamarin_class_map [130].handle = [Microsoft_Maui_Platform_ContentView class];
	__xamarin_class_map [131].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer_FrameView class];
	__xamarin_class_map [132].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_FrameRenderer class];
	__xamarin_class_map [133].handle = objc_getClass ("UIAlertController");
	__xamarin_class_map [134].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_MoreActionSheetController class];
	__xamarin_class_map [135].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell class];
	__xamarin_class_map [136].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_ContextScrollViewDelegate class];
	__xamarin_class_map [137].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_ListViewDataSource class];
	__xamarin_class_map [138].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer_UnevenListViewDataSource class];
	__xamarin_class_map [139].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_ListViewRenderer class];
	__xamarin_class_map [140].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_FormsUITableViewController class];
	__xamarin_class_map [141].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_ViewCellRenderer_ViewTableCell class];
	__xamarin_class_map [142].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiNavigationDelegate class];
	__xamarin_class_map [143].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_MauiControlsNavigationBar class];
	__xamarin_class_map [144].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_Container class];
	__xamarin_class_map [145].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer class];
	__xamarin_class_map [146].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_ShellRenderer class];
	__xamarin_class_map [147].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_TabbedRenderer class];
	__xamarin_class_map [148].handle = [Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem_SecondaryToolbarItemContent class];
	__xamarin_class_map [149].handle = [Microsoft_Maui_Controls_Compatibility_Platform_iOS_ToolbarItemExtensions_SecondaryToolbarItem class];
	__xamarin_class_map [150].handle = objc_getClass ("Microsoft_iOS__UIKit_UIContextMenuInteractionDelegate");
	__xamarin_class_map [151].handle = [Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickContextMenuInteraction_FakeRightClickDelegate class];
	__xamarin_class_map [152].handle = objc_getClass ("UIContextMenuInteraction");
	__xamarin_class_map [153].handle = [Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickContextMenuInteraction class];
	__xamarin_class_map [154].handle = [Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickPointerInteraction class];
	__xamarin_class_map [155].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_ContextActionsCell_SelectGestureRecognizer class];
	__xamarin_class_map [156].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_EntryCellRenderer_EntryCellTableViewCell class];
	__xamarin_class_map [157].handle = objc_getClass ("UIToolbar");
	__xamarin_class_map [158].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_SecondaryToolbar class];
	__xamarin_class_map [159].handle = [Microsoft_Maui_Controls_Handlers_Compatibility_NavigationRenderer_ParentingViewController class];
	__xamarin_class_map [160].handle = [Microsoft_Maui_Controls_Platform_GesturePlatformManager_FakeRightClickPointerInteraction_FakeRightClickPointerDelegate class];
	__xamarin_class_map [161].handle = [MauiCALayerAutosizeObserver class];
	__xamarin_class_map [162].handle = objc_getClass ("NSLayoutConstraint");
	__xamarin_class_map [163].handle = [Microsoft_Maui_Platform_CollapseConstraint class];
	__xamarin_class_map [164].handle = [Microsoft_Maui_Platform_ContainerViewController class];
	__xamarin_class_map [165].handle = [Microsoft_Maui_Platform_GeneralWrapperView class];
	__xamarin_class_map [166].handle = [Microsoft_Maui_Platform_LayoutView class];
	__xamarin_class_map [167].handle = objc_getClass ("UIActivityIndicatorView");
	__xamarin_class_map [168].handle = [Microsoft_Maui_Platform_MauiActivityIndicator class];
	__xamarin_class_map [169].handle = [PlatformGraphicsView class];
	__xamarin_class_map [170].handle = [Microsoft_Maui_Platform_MauiBoxView class];
	__xamarin_class_map [171].handle = objc_getClass ("CALayer");
	__xamarin_class_map [172].handle = [Microsoft_Maui_Platform_MauiCALayer class];
	__xamarin_class_map [173].handle = objc_getClass ("UIImageView");
	__xamarin_class_map [174].handle = [Microsoft_Maui_Platform_MauiImageView class];
	__xamarin_class_map [175].handle = objc_getClass ("UILabel");
	__xamarin_class_map [176].handle = [Microsoft_Maui_Platform_MauiLabel class];
	__xamarin_class_map [177].handle = objc_getClass ("UIPageControl");
	__xamarin_class_map [178].handle = [Microsoft_Maui_Platform_MauiPageControl class];
	__xamarin_class_map [179].handle = objc_getClass ("UITextField");
	__xamarin_class_map [180].handle = [Microsoft_Maui_Platform_NoCaretField class];
	__xamarin_class_map [181].handle = [Microsoft_Maui_Platform_MauiPicker class];
	__xamarin_class_map [182].handle = [Microsoft_Maui_Platform_MauiRefreshView class];
	__xamarin_class_map [183].handle = [Microsoft_Maui_Platform_MauiScrollView class];
	__xamarin_class_map [184].handle = objc_getClass ("UISearchBar");
	__xamarin_class_map [185].handle = [Microsoft_Maui_Platform_MauiSearchBar class];
	__xamarin_class_map [186].handle = [Microsoft_Maui_Platform_MauiShapeView class];
	__xamarin_class_map [187].handle = [Microsoft_Maui_Platform_MauiTextField class];
	__xamarin_class_map [188].handle = objc_getClass ("UITextView");
	__xamarin_class_map [189].handle = [Microsoft_Maui_Platform_MauiTextView class];
	__xamarin_class_map [190].handle = [Microsoft_Maui_Platform_MauiWebViewNavigationDelegate class];
	__xamarin_class_map [191].handle = [Microsoft_Maui_Platform_PageViewController class];
	__xamarin_class_map [192].handle = [Microsoft_Maui_Platform_SemanticSwitchContentView class];
	__xamarin_class_map [193].handle = objc_getClass ("CAGradientLayer");
	__xamarin_class_map [194].handle = [Microsoft_Maui_Platform_StaticCAGradientLayer class];
	__xamarin_class_map [195].handle = [Microsoft_Maui_Platform_StaticCALayer class];
	__xamarin_class_map [196].handle = objc_getClass ("CAShapeLayer");
	__xamarin_class_map [197].handle = [Microsoft_Maui_Platform_StaticCAShapeLayer class];
	__xamarin_class_map [198].handle = [Microsoft_Maui_Platform_WrapperView class];
	__xamarin_class_map [199].handle = objc_getClass ("Microsoft_iOS__UIKit_UIPickerViewModel");
	__xamarin_class_map [200].handle = [Microsoft_Maui_Handlers_PickerSource class];
	__xamarin_class_map [201].handle = objc_getClass ("UIButton");
	__xamarin_class_map [202].handle = [Microsoft_Maui_Handlers_SwipeItemButton class];
	__xamarin_class_map [203].handle = [Microsoft_Maui_MauiUISceneDelegate class];
	__xamarin_class_map [204].handle = [Microsoft_Maui_WindowOverlay_OverlayGraphicsView class];
	__xamarin_class_map [205].handle = [Microsoft_Maui_Platform_MauiCheckBox class];
	__xamarin_class_map [206].handle = [Microsoft_Maui_Platform_MauiDatePicker class];
	__xamarin_class_map [207].handle = [Microsoft_Maui_Platform_MauiDoneAccessoryView class];
	__xamarin_class_map [208].handle = objc_getClass ("WKWebView");
	__xamarin_class_map [209].handle = [Microsoft_Maui_Platform_MauiHybridWebView class];
	__xamarin_class_map [210].handle = [Microsoft_Maui_Platform_MauiSwipeView class];
	__xamarin_class_map [211].handle = [Microsoft_Maui_Platform_MauiTimePicker class];
	__xamarin_class_map [212].handle = [Microsoft_Maui_Platform_MauiUIContextMenuInteraction_FlyoutUIContextMenuInteractionDelegate class];
	__xamarin_class_map [213].handle = [Microsoft_Maui_Platform_MauiUIContextMenuInteraction class];
	__xamarin_class_map [214].handle = objc_getClass ("Microsoft_iOS__WebKit_WKUIDelegate");
	__xamarin_class_map [215].handle = [Microsoft_Maui_Platform_MauiWebViewUIDelegate class];
	__xamarin_class_map [216].handle = [Microsoft_Maui_Platform_MauiWKWebView class];
	__xamarin_class_map [217].handle = [Microsoft_Maui_Platform_PlatformTouchGraphicsView class];
	__xamarin_class_map [218].handle = [Microsoft_Maui_Handlers_HybridWebViewHandler_WebViewScriptMessageHandler class];
	__xamarin_class_map [219].handle = [Microsoft_Maui_WindowOverlay_PassthroughView class];
	__xamarin_class_map [220].handle = [Microsoft_Maui_Handlers_HybridWebViewHandler_SchemeHandler class];
	__xamarin_class_map [221].handle = [Microsoft_Maui_Authentication_AuthManager class];
	__xamarin_class_map [222].handle = objc_getClass ("Microsoft_iOS__PhotosUI_PHPickerViewControllerDelegate");
	__xamarin_class_map [223].handle = [Microsoft_Maui_Media_PhotoPickerDelegate class];
	__xamarin_class_map [224].handle = objc_getClass ("Microsoft_iOS__UIKit_UIAdaptivePresentationControllerDelegate");
	__xamarin_class_map [225].handle = [Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate class];
	__xamarin_class_map [226].handle = [Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate class];
	__xamarin_class_map [227].handle = objc_getClass ("Microsoft_iOS__UIKit_UIActivityItemSource");
	__xamarin_class_map [228].handle = [Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource class];
	__xamarin_class_map [229].handle = objc_getClass ("Microsoft_iOS__CoreLocation_CLLocationManagerDelegate");
	__xamarin_class_map [230].handle = [Microsoft_Maui_Devices_Sensors_SingleLocationListener class];
	__xamarin_class_map [231].handle = [Microsoft_Maui_Devices_Sensors_ContinuousLocationListener class];
	__xamarin_class_map [232].handle = objc_getClass ("Microsoft_iOS__SafariServices_SFSafariViewControllerDelegate");
	__xamarin_class_map [233].handle = [Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate class];
	__xamarin_class_map [234].handle = [Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider class];
	__xamarin_class_map [235].handle = objc_getClass ("Microsoft_iOS__UIKit_UIImagePickerControllerDelegate");
	__xamarin_class_map [236].handle = [Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate class];
	__xamarin_class_map [237].handle = objc_getClass ("Microsoft_iOS__UIKit_UIDocumentPickerDelegate");
	__xamarin_class_map [238].handle = [Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate class];
	__xamarin_class_map [239].handle = objc_getClass ("Microsoft_iOS__ContactsUI_CNContactPickerDelegate");
	__xamarin_class_map [240].handle = [Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate class];
	__xamarin_class_map [241].handle = [Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate class];
	__xamarin_class_map [242].handle = objc_getClass ("SFSafariViewController");
	__xamarin_class_map [243].handle = objc_getClass ("UIWindowSceneActivationConfiguration");
	__xamarin_class_map [244].handle = objc_getClass ("PHPickerResult");
	__xamarin_class_map [245].handle = objc_getClass ("PHPickerViewController");
	__xamarin_class_map [246].handle = objc_getClass ("NSEnumerator");
	__xamarin_class_map [247].handle = objc_getClass ("LPLinkMetadata");
	__xamarin_class_map [248].handle = objc_getClass ("CNContactPickerViewController");
	__xamarin_class_map [249].handle = objc_getClass ("NSCoder");
	__xamarin_class_map [250].handle = objc_getClass ("NSFormatter");
	__xamarin_class_map [251].handle = objc_getClass ("INIntentResponse");
	__xamarin_class_map [252].handle = objc_getClass ("INIntent");
	__xamarin_class_map [253].handle = objc_getClass ("WKNavigationResponse");
	__xamarin_class_map [254].handle = objc_getClass ("WKPreferences");
	__xamarin_class_map [255].handle = objc_getClass ("WKWindowFeatures");
	__xamarin_class_map [256].handle = objc_getClass ("WKBackForwardListItem");
	__xamarin_class_map [257].handle = objc_getClass ("WKContextMenuElementInfo");
	__xamarin_class_map [258].handle = objc_getClass ("WKFrameInfo");
	__xamarin_class_map [259].handle = objc_getClass ("WKNavigation");
	__xamarin_class_map [260].handle = objc_getClass ("WKNavigationAction");
	__xamarin_class_map [261].handle = objc_getClass ("WKOpenPanelParameters");
	__xamarin_class_map [262].handle = objc_getClass ("WKPreviewElementInfo");
	__xamarin_class_map [263].handle = objc_getClass ("WKProcessPool");
	__xamarin_class_map [264].handle = objc_getClass ("WKScriptMessage");
	__xamarin_class_map [265].handle = objc_getClass ("WKSecurityOrigin");
	__xamarin_class_map [266].handle = objc_getClass ("WKUserContentController");
	__xamarin_class_map [267].handle = objc_getClass ("WKUserScript");
	__xamarin_class_map [268].handle = objc_getClass ("WKWebpagePreferences");
	__xamarin_class_map [269].handle = objc_getClass ("WKWebsiteDataRecord");
	__xamarin_class_map [270].handle = objc_getClass ("WKWebViewConfiguration");
	__xamarin_class_map [271].handle = objc_getClass ("UIButtonConfiguration");
	__xamarin_class_map [272].handle = objc_getClass ("NSLayoutManager");
	__xamarin_class_map [273].handle = objc_getClass ("Microsoft_iOS__UIKit_UIAppearance");
	__xamarin_class_map [274].handle = objc_getClass ("UIBezierPath");
	__xamarin_class_map [275].handle = objc_getClass ("UICollectionViewLayoutAttributes");
	__xamarin_class_map [276].handle = objc_getClass ("UIKit_UIControlEventProxy");
	__xamarin_class_map [277].handle = objc_getClass ("UIEvent");
	__xamarin_class_map [278].handle = objc_getClass ("UIFont");
	__xamarin_class_map [279].handle = objc_getClass ("UIFontDescriptor");
	__xamarin_class_map [280].handle = objc_getClass ("UILongPressGestureRecognizer");
	__xamarin_class_map [281].handle = objc_getClass ("UIPanGestureRecognizer");
	__xamarin_class_map [282].handle = objc_getClass ("UIPinchGestureRecognizer");
	__xamarin_class_map [283].handle = objc_getClass ("UISwipeGestureRecognizer");
	__xamarin_class_map [284].handle = objc_getClass ("UIHoverGestureRecognizer");
	__xamarin_class_map [285].handle = objc_getClass ("UIMenuElement");
	__xamarin_class_map [286].handle = objc_getClass ("UIMenu");
	__xamarin_class_map [287].handle = objc_getClass ("UIPresentationController");
	__xamarin_class_map [288].handle = objc_getClass ("UIScene");
	__xamarin_class_map [289].handle = objc_getClass ("UIWindowScene");
	__xamarin_class_map [290].handle = objc_getClass ("UITraitCollection");
	__xamarin_class_map [291].handle = objc_getClass ("UIVisualEffect");
	__xamarin_class_map [292].handle = objc_getClass ("NSAdaptiveImageGlyph");
	__xamarin_class_map [293].handle = objc_getClass ("NSCollectionLayoutItem");
	__xamarin_class_map [294].handle = objc_getClass ("NSCollectionLayoutSupplementaryItem");
	__xamarin_class_map [295].handle = objc_getClass ("NSCollectionLayoutBoundarySupplementaryItem");
	__xamarin_class_map [296].handle = objc_getClass ("NSCollectionLayoutDimension");
	__xamarin_class_map [297].handle = objc_getClass ("NSCollectionLayoutGroup");
	__xamarin_class_map [298].handle = objc_getClass ("NSCollectionLayoutSection");
	__xamarin_class_map [299].handle = objc_getClass ("NSCollectionLayoutSize");
	__xamarin_class_map [300].handle = objc_getClass ("NSCollectionLayoutSpacing");
	__xamarin_class_map [301].handle = objc_getClass ("NSLayoutAnchor");
	__xamarin_class_map [302].handle = objc_getClass ("NSLayoutDimension");
	__xamarin_class_map [303].handle = objc_getClass ("NSLayoutXAxisAnchor");
	__xamarin_class_map [304].handle = objc_getClass ("NSLayoutYAxisAnchor");
	__xamarin_class_map [305].handle = objc_getClass ("NSParagraphStyle");
	__xamarin_class_map [306].handle = objc_getClass ("NSMutableParagraphStyle");
	__xamarin_class_map [307].handle = objc_getClass ("NSShadow");
	__xamarin_class_map [308].handle = objc_getClass ("NSTextAttachment");
	__xamarin_class_map [309].handle = objc_getClass ("NSTextContainer");
	__xamarin_class_map [310].handle = objc_getClass ("UIAction");
	__xamarin_class_map [311].handle = objc_getClass ("UIActivityViewController");
	__xamarin_class_map [312].handle = objc_getClass ("UIAlertAction");
	__xamarin_class_map [313].handle = objc_getClass ("UIApplicationShortcutIcon");
	__xamarin_class_map [314].handle = objc_getClass ("UIApplicationShortcutItem");
	__xamarin_class_map [315].handle = objc_getClass ("UIBarAppearance");
	__xamarin_class_map [316].handle = objc_getClass ("UIBarButtonItemGroup");
	__xamarin_class_map [317].handle = objc_getClass ("UIBlurEffect");
	__xamarin_class_map [318].handle = objc_getClass ("UICollectionViewCompositionalLayoutConfiguration");
	__xamarin_class_map [319].handle = objc_getClass ("UIDropProposal");
	__xamarin_class_map [320].handle = objc_getClass ("UICollectionViewLayoutInvalidationContext");
	__xamarin_class_map [321].handle = objc_getClass ("UICollectionViewFlowLayoutInvalidationContext");
	__xamarin_class_map [322].handle = objc_getClass ("UIFocusUpdateContext");
	__xamarin_class_map [323].handle = objc_getClass ("UICollectionViewFocusUpdateContext");
	__xamarin_class_map [324].handle = objc_getClass ("UICollectionViewTransitionLayout");
	__xamarin_class_map [325].handle = objc_getClass ("UICollectionViewUpdateItem");
	__xamarin_class_map [326].handle = objc_getClass ("UICommand");
	__xamarin_class_map [327].handle = objc_getClass ("UIContextMenuConfiguration");
	__xamarin_class_map [328].handle = objc_getClass ("UIMenuSystem");
	__xamarin_class_map [329].handle = objc_getClass ("UIConversationContext");
	__xamarin_class_map [330].handle = objc_getClass ("UICubicTimingParameters");
	__xamarin_class_map [331].handle = objc_getClass ("UIDragInteraction");
	__xamarin_class_map [332].handle = objc_getClass ("UIDragItem");
	__xamarin_class_map [333].handle = objc_getClass ("UIDragPreview");
	__xamarin_class_map [334].handle = objc_getClass ("UIDropInteraction");
	__xamarin_class_map [335].handle = objc_getClass ("UIFontMetrics");
	__xamarin_class_map [336].handle = objc_getClass ("UIGraphicsRenderer");
	__xamarin_class_map [337].handle = objc_getClass ("UIGraphicsImageRenderer");
	__xamarin_class_map [338].handle = objc_getClass ("UIGraphicsRendererContext");
	__xamarin_class_map [339].handle = objc_getClass ("UIGraphicsImageRendererContext");
	__xamarin_class_map [340].handle = objc_getClass ("UIGraphicsRendererFormat");
	__xamarin_class_map [341].handle = objc_getClass ("UIGraphicsImageRendererFormat");
	__xamarin_class_map [342].handle = objc_getClass ("UIInputSuggestion");
	__xamarin_class_map [343].handle = objc_getClass ("UIKeyCommand");
	__xamarin_class_map [344].handle = objc_getClass ("UIListContentConfiguration");
	__xamarin_class_map [345].handle = objc_getClass ("UIListContentTextProperties");
	__xamarin_class_map [346].handle = objc_getClass ("UILocalNotification");
	__xamarin_class_map [347].handle = objc_getClass ("UINavigationBarAppearance");
	__xamarin_class_map [348].handle = objc_getClass ("UINavigationItem");
	__xamarin_class_map [349].handle = objc_getClass ("UIOpenURLContext");
	__xamarin_class_map [350].handle = objc_getClass ("UIPress");
	__xamarin_class_map [351].handle = objc_getClass ("UISceneActivationRequestOptions");
	__xamarin_class_map [352].handle = objc_getClass ("UISceneConfiguration");
	__xamarin_class_map [353].handle = objc_getClass ("UISceneConnectionOptions");
	__xamarin_class_map [354].handle = objc_getClass ("UISceneDestructionRequestOptions");
	__xamarin_class_map [355].handle = objc_getClass ("UISceneSession");
	__xamarin_class_map [356].handle = objc_getClass ("UISceneSessionActivationRequest");
	__xamarin_class_map [357].handle = objc_getClass ("UISceneSizeRestrictions");
	__xamarin_class_map [358].handle = objc_getClass ("UISceneWindowingBehaviors");
	__xamarin_class_map [359].handle = objc_getClass ("UISceneWindowingControlStyle");
	__xamarin_class_map [360].handle = objc_getClass ("Microsoft_iOS__UIKit_UISearchResultsUpdating");
	__xamarin_class_map [361].handle = objc_getClass ("UITab");
	__xamarin_class_map [362].handle = objc_getClass ("UISpringTimingParameters");
	__xamarin_class_map [363].handle = objc_getClass ("UIStatusBarManager");
	__xamarin_class_map [364].handle = objc_getClass ("UITabBarAppearance");
	__xamarin_class_map [365].handle = objc_getClass ("UITabBarItemAppearance");
	__xamarin_class_map [366].handle = objc_getClass ("UITabBarItemStateAppearance");
	__xamarin_class_map [367].handle = objc_getClass ("UITabGroup");
	__xamarin_class_map [368].handle = objc_getClass ("UITargetedPreview");
	__xamarin_class_map [369].handle = objc_getClass ("UITargetedDragPreview");
	__xamarin_class_map [370].handle = objc_getClass ("UITextFormattingViewController");
	__xamarin_class_map [371].handle = objc_getClass ("UITextInputAssistantItem");
	__xamarin_class_map [372].handle = objc_getClass ("UITextInputPasswordRules");
	__xamarin_class_map [373].handle = objc_getClass ("UITextItem");
	__xamarin_class_map [374].handle = objc_getClass ("UITextItemMenuConfiguration");
	__xamarin_class_map [375].handle = objc_getClass ("UITextPlaceholder");
	__xamarin_class_map [376].handle = objc_getClass ("UITextPosition");
	__xamarin_class_map [377].handle = objc_getClass ("UITextRange");
	__xamarin_class_map [378].handle = objc_getClass ("UITextSelectionRect");
	__xamarin_class_map [379].handle = objc_getClass ("UIToolTipInteraction");
	__xamarin_class_map [380].handle = objc_getClass ("UITouch");
	__xamarin_class_map [381].handle = objc_getClass ("UIUserNotificationSettings");
	__xamarin_class_map [382].handle = objc_getClass ("UIViewPropertyAnimator");
	__xamarin_class_map [383].handle = objc_getClass ("UIWindowSceneGeometry");
	__xamarin_class_map [384].handle = objc_getClass ("UIWindowSceneGeometryPreferences");
	__xamarin_class_map [385].handle = objc_getClass ("UIWindowSceneGeometryPreferencesMac");
	__xamarin_class_map [386].handle = objc_getClass ("NSString");
	__xamarin_class_map [387].handle = objc_getClass ("CLRegion");
	__xamarin_class_map [388].handle = objc_getClass ("CLBeaconRegion");
	__xamarin_class_map [389].handle = objc_getClass ("CLBeacon");
	__xamarin_class_map [390].handle = objc_getClass ("CLBeaconIdentityConstraint");
	__xamarin_class_map [391].handle = objc_getClass ("CLHeading");
	__xamarin_class_map [392].handle = objc_getClass ("CLLocation");
	__xamarin_class_map [393].handle = objc_getClass ("CLVisit");
	__xamarin_class_map [394].handle = objc_getClass ("NSValue");
	__xamarin_class_map [395].handle = objc_getClass ("Foundation_NSDispatcher");
	__xamarin_class_map [396].handle = objc_getClass ("__MonoMac_NSActionDispatcher");
	__xamarin_class_map [397].handle = objc_getClass ("__MonoMac_NSSynchronizationContextDispatcher");
	__xamarin_class_map [398].handle = objc_getClass ("Foundation_NSAsyncDispatcher");
	__xamarin_class_map [399].handle = objc_getClass ("__MonoMac_NSAsyncActionDispatcher");
	__xamarin_class_map [400].handle = objc_getClass ("__MonoMac_NSAsyncSynchronizationContextDispatcher");
	__xamarin_class_map [401].handle = objc_getClass ("NSArray");
	__xamarin_class_map [402].handle = objc_getClass ("NSDateComponents");
	__xamarin_class_map [403].handle = objc_getClass ("NSError");
	__xamarin_class_map [404].handle = objc_getClass ("Foundation_NSExceptionError");
	__xamarin_class_map [405].handle = objc_getClass ("NSHTTPCookie");
	__xamarin_class_map [406].handle = objc_getClass ("NSStream");
	__xamarin_class_map [407].handle = objc_getClass ("NSInputStream");
	__xamarin_class_map [408].handle = objc_getClass ("NSAttributedString");
	__xamarin_class_map [409].handle = objc_getClass ("NSMutableAttributedString");
	__xamarin_class_map [410].handle = objc_getClass ("NSSet");
	__xamarin_class_map [411].handle = objc_getClass ("NSMutableSet");
	__xamarin_class_map [412].handle = objc_getClass ("NSURLRequest");
	__xamarin_class_map [413].handle = objc_getClass ("NSMutableURLRequest");
	__xamarin_class_map [414].handle = objc_getClass ("Foundation_InternalNSNotificationHandler");
	__xamarin_class_map [415].handle = objc_getClass ("NSNull");
	__xamarin_class_map [416].handle = objc_getClass ("NSNumber");
	__xamarin_class_map [417].handle = objc_getClass ("NSProxy");
	__xamarin_class_map [418].handle = objc_getClass ("NSRunLoop");
	__xamarin_class_map [419].handle = objc_getClass ("NSURLCredential");
	__xamarin_class_map [420].handle = objc_getClass ("NSURLProtectionSpace");
	__xamarin_class_map [421].handle = objc_getClass ("NSAutoreleasePool");
	__xamarin_class_map [422].handle = objc_getClass ("NSCachedURLResponse");
	__xamarin_class_map [423].handle = objc_getClass ("NSDateFormatter");
	__xamarin_class_map [424].handle = objc_getClass ("NSException");
	__xamarin_class_map [425].handle = objc_getClass ("NSURLResponse");
	__xamarin_class_map [426].handle = objc_getClass ("NSHTTPURLResponse");
	__xamarin_class_map [427].handle = objc_getClass ("NSIndexSet");
	__xamarin_class_map [428].handle = objc_getClass ("NSNotification");
	__xamarin_class_map [429].handle = objc_getClass ("NSOperationQueue");
	__xamarin_class_map [430].handle = objc_getClass ("NSData");
	__xamarin_class_map [431].handle = objc_getClass ("NSMutableData");
	__xamarin_class_map [432].handle = objc_getClass ("NSStringDrawingContext");
	__xamarin_class_map [433].handle = objc_getClass ("NSURLAuthenticationChallenge");
	__xamarin_class_map [434].handle = objc_getClass ("Microsoft_iOS__Foundation_NSUrlSessionDelegate");
	__xamarin_class_map [435].handle = objc_getClass ("Microsoft_iOS__Foundation_NSUrlSessionTaskDelegate");
	__xamarin_class_map [436].handle = objc_getClass ("Microsoft_iOS__Foundation_NSUrlSessionDataDelegate");
	__xamarin_class_map [437].handle = objc_getClass ("NSURLSessionTask");
	__xamarin_class_map [438].handle = objc_getClass ("NSURLSessionDataTask");
	__xamarin_class_map [439].handle = objc_getClass ("CAAnimation");
	__xamarin_class_map [440].handle = objc_getClass ("CAPropertyAnimation");
	__xamarin_class_map [441].handle = objc_getClass ("CABasicAnimation");
	__xamarin_class_map [442].handle = objc_getClass ("CADisplayLink");
	__xamarin_class_map [443].handle = objc_getClass ("Microsoft_iOS__CoreAnimation_CALayerDelegate");
	__xamarin_class_map [444].handle = objc_getClass ("CNContactProperty");
	__xamarin_class_map [445].handle = objc_getClass ("CNContact");
	__xamarin_class_map [446].handle = objc_getClass ("CKShareMetadata");
	__xamarin_class_map [447].handle = objc_getClass ("ASAuthorization");
	__xamarin_class_map [448].handle = objc_getClass ("ASAuthorizationController");
	__xamarin_class_map [449].handle = objc_getClass ("ASWebAuthenticationSession");
	__xamarin_class_map [450].handle = objc_getClass ("NSURLSession");
	__xamarin_class_map [451].handle = objc_getClass ("UIKit_UIView_UIViewAppearance");
	__xamarin_class_map [452].handle = objc_getClass ("UIKit_UIScrollView_UIScrollViewAppearance");
	__xamarin_class_map [453].handle = objc_getClass ("UIKit_UIControl_UIControlAppearance");
	__xamarin_class_map [454].handle = objc_getClass ("UIKit_UIButton_UIButtonAppearance");
	__xamarin_class_map [455].handle = objc_getClass ("MPVolumeView");
	__xamarin_class_map [456].handle = objc_getClass ("UIKit_UIBarItem_UIBarItemAppearance");
	__xamarin_class_map [457].handle = objc_getClass ("WKDownload");
	__xamarin_class_map [458].handle = objc_getClass ("WKHTTPCookieStore");
	__xamarin_class_map [459].handle = objc_getClass ("WKWebsiteDataStore");
	__xamarin_class_map [460].handle = objc_getClass ("UIApplication");
	__xamarin_class_map [461].handle = objc_getClass ("UIKit_UIBarButtonItem_Callback");
	__xamarin_class_map [462].handle = objc_getClass ("UIColor");
	__xamarin_class_map [463].handle = objc_getClass ("UIDevice");
	__xamarin_class_map [464].handle = objc_getClass ("__UIGestureRecognizerGenericCB");
	__xamarin_class_map [465].handle = objc_getClass ("__UIGestureRecognizerParameterlessToken");
	__xamarin_class_map [466].handle = objc_getClass ("__UIGestureRecognizerParametrizedToken");
	__xamarin_class_map [467].handle = objc_getClass ("UIKit_UIGestureRecognizer__UIGestureRecognizerDelegate");
	__xamarin_class_map [468].handle = objc_getClass ("UIImage");
	__xamarin_class_map [469].handle = objc_getClass ("UIImagePickerController");
	__xamarin_class_map [470].handle = objc_getClass ("UIKit_UINavigationBar_UINavigationBarAppearance");
	__xamarin_class_map [471].handle = objc_getClass ("UIPickerView");
	__xamarin_class_map [472].handle = objc_getClass ("UIKit_UIPopoverPresentationController__UIPopoverPresentationControllerDelegate");
	__xamarin_class_map [473].handle = objc_getClass ("UIPopoverPresentationController");
	__xamarin_class_map [474].handle = objc_getClass ("UIScreen");
	__xamarin_class_map [475].handle = objc_getClass ("UIKit_UISearchBar_UISearchBarAppearance");
	__xamarin_class_map [476].handle = objc_getClass ("UIKit_UISearchBar__UISearchBarDelegate");
	__xamarin_class_map [477].handle = objc_getClass ("UIKit_UISearchController___Xamarin_UISearchResultsUpdating");
	__xamarin_class_map [478].handle = objc_getClass ("UISearchController");
	__xamarin_class_map [479].handle = objc_getClass ("UIKit_UITableView_UITableViewAppearance");
	__xamarin_class_map [480].handle = objc_getClass ("UITableView");
	__xamarin_class_map [481].handle = objc_getClass ("UIKit_UITextField__UITextFieldDelegate");
	__xamarin_class_map [482].handle = objc_getClass ("UIKit_UIScrollView__UIScrollViewDelegate");
	__xamarin_class_map [483].handle = objc_getClass ("UIKit_UITextView__UITextViewDelegate");
	__xamarin_class_map [484].handle = objc_getClass ("NSTextStorage");
	__xamarin_class_map [485].handle = objc_getClass ("UIDatePicker");
	__xamarin_class_map [486].handle = objc_getClass ("UIDocumentPickerViewController");
	__xamarin_class_map [487].handle = objc_getClass ("UIFocusAnimationCoordinator");
	__xamarin_class_map [488].handle = objc_getClass ("UIProgressView");
	__xamarin_class_map [489].handle = objc_getClass ("UISearchTextField");
	__xamarin_class_map [490].handle = objc_getClass ("UISlider");
	__xamarin_class_map [491].handle = objc_getClass ("UIStackView");
	__xamarin_class_map [492].handle = objc_getClass ("UIStepper");
	__xamarin_class_map [493].handle = objc_getClass ("UIKit_UISwitch_UISwitchAppearance");
	__xamarin_class_map [494].handle = objc_getClass ("UISwitch");
	__xamarin_class_map [495].handle = objc_getClass ("UIKit_UITabBar_UITabBarAppearance");
	__xamarin_class_map [496].handle = objc_getClass ("UITabBar");
	__xamarin_class_map [497].handle = objc_getClass ("UIKit_UITabBarController__UITabBarControllerDelegate");
	__xamarin_class_map [498].handle = objc_getClass ("UIKit_UITabBarItem_UITabBarItemAppearance");
	__xamarin_class_map [499].handle = objc_getClass ("UITabBarItem");
	__xamarin_class_map [500].handle = objc_getClass ("UIVisualEffectView");
	__xamarin_class_map [501].handle = objc_getClass ("UIWindow");
	__xamarin_class_map [502].handle = objc_getClass ("CLLocationManager");
	__xamarin_class_map [503].handle = objc_getClass ("NSIndexPath");
	__xamarin_class_map [504].handle = objc_getClass ("NSBundle");
	__xamarin_class_map [505].handle = objc_getClass ("NSDate");
	__xamarin_class_map [506].handle = objc_getClass ("NSDictionary");
	__xamarin_class_map [507].handle = objc_getClass ("NSItemProvider");
	__xamarin_class_map [508].handle = objc_getClass ("NSLocale");
	__xamarin_class_map [509].handle = objc_getClass ("NSMutableDictionary");
	__xamarin_class_map [510].handle = objc_getClass ("NSNotificationCenter");
	__xamarin_class_map [511].handle = objc_getClass ("__NSObject_Disposer");
	__xamarin_class_map [512].handle = objc_getClass ("__XamarinObjectObserver");
	__xamarin_class_map [513].handle = objc_getClass ("NSProgress");
	__xamarin_class_map [514].handle = objc_getClass ("NSThread");
	__xamarin_class_map [515].handle = objc_getClass ("NSTimeZone");
	__xamarin_class_map [516].handle = objc_getClass ("NSUndoManager");
	__xamarin_class_map [517].handle = objc_getClass ("NSURL");
	__xamarin_class_map [518].handle = objc_getClass ("NSURLSessionConfiguration");
	__xamarin_class_map [519].handle = objc_getClass ("NSUserDefaults");
	__xamarin_class_map [520].handle = objc_getClass ("NSCache");
	__xamarin_class_map [521].handle = objc_getClass ("NSCalendar");
	__xamarin_class_map [522].handle = objc_getClass ("NSHTTPCookieStorage");
	__xamarin_class_map [523].handle = objc_getClass ("NSUserActivity");
	__xamarin_class_map [524].handle = objc_getClass ("System_Net_Http_NSUrlSessionHandler_WrappedNSInputStream");
	__xamarin_class_map [525].handle = objc_getClass ("ASAuthorizationAppleIDCredential");
	__xamarin_class_map [526].handle = objc_getClass ("System_Net_Http_NSUrlSessionHandler_NSUrlSessionHandlerDelegate");
	xamarin_add_registration_map (&__xamarin_registration_map, false);
}


} /* extern "C" */

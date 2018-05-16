#import "XXAppDelegate.h"
#import<mach-o/dyld.h>
#import<dlfcn.h>

#ifndef PT_DENY_ATTACH
	#define PT_DENY_ATTACH 31
#endif

typedef int (*ptrace_ptr_t)(int _request, pid_t _pid,caddr_t _addr, int _data);

void disable_gdb(){
  	void *handle = dlopen(0, RTLD_GLOBAL | RTLD_NOW);
	ptrace_ptr_t ptrace_ptr = (ptrace_ptr_t)dlsym(handle, "ptrace");
	ptrace_ptr(PT_DENY_ATTACH, 0, 0, 0);
  	dlclose(handle);
}

int main(int argc,char *argv[] ){
  @autoreleasepool{
    //DEBUG代表是测试版而不是发行版，所以不需要开启反调试
    disable_gdb();
		return UIApplicationMain(argc, argv, nil, NSStringFromClass(XXAppDelegate.class));
  }
}

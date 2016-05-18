# lkpbench
lkp benchmarks for android_x86

# Usable Benchmarks
refer to [doc in lkp-tests by dc3671](https://github.com/dc3671/lkp-tests/blob/master/doc/benchmark_list.md)

#修改
##由configure生成Makefile的
设定一个参数$target，当$target=android_x86时，在configure中为CFLAGS加上-m32 -static
``` sh
if [ "$target" = "android_x86" ]; then
	CFLAGS="${CFLAGS} -m32 -static"
fi
```
##只有Makefile的
当$target=android_x86时，在Makefile中直接为CFLAGS加上-m32 -static
``` Makefile
ifeq ($(TARGET),android_x86)
CFLAGS := ${CFLAGS} -m32 -static
endif
```
##需要修改源代码的
增加ifdef ... else ... endif条件编译
``` C
#ifdef __x86_64
    orginal code
#else
    code for android_x86
#endif
```

今天早上弄gdb弄到头要爆了，用gdb进行watchpoint调试变量时候，出现了变量符号无法识别问题：
No symbol "*" in current context
百度了好久，-g命令是有的，那就是gdb和gcc版本不匹配，gdb版本落后于gcc，导致gdb无法识别一些gcc产生的调试标识signal
一开始想着降低gcc版本，结果老是有问题，想想还是升级gdb版本算了
先把gdb8.1.0给卸载了，再下载gdb8.2,希望能解决这个问题

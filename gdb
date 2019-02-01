今天早上弄gdb弄到头要爆了，用gdb进行watchpoint调试变量时候，出现了变量符号无法识别问题：
No symbol "*" in current context
百度了好久，-g命令是有的，那就是gdb和gcc版本不匹配，gdb版本落后于gcc，导致gdb无法识别一些gcc产生的调试标识signal
一开始想着降低gcc版本，结果老是有问题，想想还是升级gdb版本算了
先把gdb8.1.0给卸载了，再下载gdb8.2,希望能解决这个问题

问题算是解决了！！
但是，问题不在于什么gcc与gdb版本不匹配问题，也不在于gcc编译优化过头，也不在于我的编译command没有加-g，问题在于我根本就对gdb的断点设置一窍不通，我竟然一直拿着一个局部变量在设置watchpoint，变量根本就不在scope之内，我的天！！！
所以！！！
所以！！！
我觉得以后有小朋友出现：No symbol "*" in current context
这个问题时候，先判断一下你的watchpoint设置的对不对！！！
然后再考虑上述其他几种可能的情况，不要一直在走弯路！！！


























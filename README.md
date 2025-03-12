目前只支持 Linux。

使用方法：假设题目名为 `name`，那么设置输入输出文件为 `name.in`，`name.out`。在数据中，对于一组测试点 `name2_3.in`，`name2_3.ans`，两个文件应当为两个压缩包，密码为 `src/core/judgingthread.cpp` 中定义的宏 `selfEval_password`，`name2_3.in` 压缩包中仅有一个 `name.in`，`name2_3.ans` 压缩包中仅有一个 `name.ans`。正确配置后，评测方式与 Lemon 相同。若有 Special Judge 或交互文件，无法加密 spj 与交互库。

主要用途是在 NOI 赛制模拟赛中下发 pretests。

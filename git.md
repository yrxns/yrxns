### 疑难杂症
> VC push失败的处理方法：
    
    1. 打开克隆到本地的仓库的.git文件
    2. 修改URL为 http://用户名：密码@......(即在原URL中加上用户名：密码@)
***
### msysGit 的初始设置

姓名和邮箱:

    $ git config --global user.name "yrxns"
    $ git config --global user.email "cmcq819924033@qq.com"
    
可在`~/.gitconfig`下找到初始化的个人信息
   
SSH Key:
1. 生成密钥
2. 在GitHub中添加公开密钥
3. 用手中的私人密钥与GitHub进行认证和通信  
``` 
 $ ssh-keygen -t rsa -C "cmcq819924033@qq.com"  
 $ cat ~/.ssh/id_rsa.pub
 $ ssh -T git@github.com
```  

`$ git init`——初始化仓库

步骤:

    $ mkdir sgsc
    $ cd sgsc
    $ git init
  
初始化的目的是为了生成`.git`目录(附属于该仓库的工作树文件的编辑等操作在此中进行)以使用Git进行版本管理。

`$ git status`——查看仓库的状态

`$ git add`——向暂存区中添加文件

**暂存区：** 即提交之前的一个临时区域 

使文件加入到Git仓库的版本管理对象当中。

`$ git commit`——保存仓库的历史记录
该命令可将当前暂存区中的文件实际保存到仓库的历史记录中。通过这些记录，就可在工作树中复原文件

1. 记述一行提交信息

        $ git commit -m "......"
        ......是对此提交的概述

2. 记述详细提交信息

        $ git commit  
**输入格式：**
* 第一行：简述提交的更改内容
* 第二行：空行
* 第三行：记述更改的原因和详细的内容

**中止提交：**
如果在编辑器启动后想中止提交，可以将提交信息留空并直接关闭编辑器，随后提交就会中止。

`$ git log`——查看提交日志  
`$ git log ......`——只显示指定目录、文件的日志  
`$ git log -p [...]`——显示文件的改动

`$ git diff`——查看当前工作树与暂存区的差别(若暂存区为空，则显示工作树与最新提交状态之间的差别)  
`$ git diff HEAD`——查看工作树与最新提交的差别  
**HEAD：** 指向当前分支中最新一次提交的指针

`$ git branch`

```
$ git checkout -b ...       

$ git branch ...
$ git checkout ...

$ git checkout -
```
    $ git merge ...
>
    $ git log --graph
>
    $ git reset --hard ......
>
    $ git reflog
>
    $ git commit --amend
>
    $ git commit -am "......"
>
    $ git rebase -i HEAD~2
>
    $ git remote add origin ......
>
    $ git push origin ...(:...)
>
    $ git clone ......
>
    $ git branch -a
>
    $ git checkout -b ... origin/...
>
    $ git pull origin ...(:...)
>
    按下t键查看文件
>
    ....../compare/master...A     

    ....../compare/master@{3.day.ago}...master

    ....../compare/master@{2021-07-20}...master
>
    ....../用户名/仓库名/pull/9
    ....../用户名/仓库名/pull/9.diff
    ....../用户名/仓库名/pull/9.patch
>
    引用评论：按R键引用选中的部分
    使用表情：：后加相关的字母
>
    $ git remote add upstream https://......
    $ git fetch upstream
    $ git merge upstream/master
>

    

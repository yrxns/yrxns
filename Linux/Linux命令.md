    $ whoami              
    yrxns
>
    $ who
    root    tty1    2021-7-21 11:13     (:0)
    yrxns   pts/0   ......... .....     ....
    ......  
>
    $ w
    11:24:54    up 3 days,      3 users,        load average: 0.66, 0.58, 0.46  
    USER    TTY     FROM        LOGIN@    IDLE    JCPU    PCPU    WHAT  
    yrxns   pts/0   (......)    ...       ...     ...     ...     ...  
    ......
> 
    $ users
    yrxns   myqfw   root    ...
>
    $ tty  
    /dev/pts/1c
>
    $ uname  
    Linux
>
    $ date
>
    $ cal  
    $ cal 2021
    $ cal 7 2021
>
    $ clear
>
    $ su -  / su - root
    $ su - yrxns
>
    $ passwd
    $ passwd myqfw
    $ passwd -S yrxns
>
    $ whatis ...    (简单说明)
>
    $ ... --help
> 
    $ man ...
    
    /...    向下搜索
    ?...    向上搜索
    n       正向搜寻
    N       返乡搜寻
>
    $ pwd
    /home/yrxns
>
    $ cd 
    $ cd ~
    $ cd -
    $ cd ...
>
    $ ls
    $ ls . ..
    $ ls ... (... ...)
    $ ls -F (...)       /:目录  *:可执行文件    空白：纯文本文件或ASCII码文件   @:符号链接
    $ ls -a (...)
    $ ls -l (...)
    $ ls -h (...)
    $ ls -d (...)       目录本身的信息
>
    $ cp ...( ... ...) ...
    $ cp -i ... ...
    $ cp -r ... ...
    $ cp -p ... ...
    $ cp -f ... ...
>
    $ mv ... ......
    $ mv ...( ... ...) ...
>
    $ mkdir ...
>
    $ touch ...         更新已存在的文件的时间戳
>
    $ rm ...( ... ...)
    $ rm -i ... ...         询问
    $ rm -r ... ...         递归
    $ rm -f ... ...         强制
>
    $ rmdir ...
>
    $ file ...
>
    $ cat ...( ... ...)
    $ cat -A ...
    $ cat -s ...        将多余的空行压缩成一个空行
    $ cat -b ...        行号

    $ cat > ...
    ......
    Ctrl + D

    $ cat >> ...
>
    $ head -n 9 ...
    $ head -9 ...
>
    $ tail -9 ...
    $ tail -n 9 ...
    $ tail +9 ...
    $ tail +n 9 ...
    $ tail -f ...           当正文的内容发生变化时，就把变化的信息显示在屏幕上
>
    $ wc ...
    $ wc -l                 仅显示行数
    $ wc -w                 单词
    $ wc -c                 字符
>
    $ more ...
>
    $ cat /etc/shells
>
    *
    ?
    [a-z]
    [^a-z]
    [xyz]
    [^xyz]
>
    $ ls ~
    $ ls ~yrxns
>
    $ history
    $ !n

    $ ^2^1

    Ctrl + R
>
    $ echo $PATH
    $ echo $HOME

    $ cd $HOME
>
    $ touch yrxns.{A,B}
    $ touch {yrxns,myqfw}.{A,B}
>
    $ date
    $ echo "Today is `date`"
    $ echo "Today is $(date)"
>
    $ year=2001;
    $ echo $year

    $ n1=2; n2=5; n3=9;
    $ echo $[$n1 + $n2]
>
    ' '     禁止所有命令行扩展功能
    " "     ...以下命令除外
    $    `    \    ! 
>
    0:  stdin
    1:  stdout
    2:  stderr
>
    $ find ... ... (...)

    -name ...
    -size [+|-]n
    -atime [+|-]n           超n天没访问，n天内没访问
    _mtime [+|-]n           更改时间
    -type [f|d]

    -exec ... {} \;
    -ok ... {} \;
    -print
    -ls
>

    >   覆写
    >>  追加
>
    $ ...... > ...
    $ ...... 1> ...
    $ ...... 2> ...
    $ ...... 2> ... 1> ...
    $ ...... > ... 2>&1
>
    <   重定向输入
>
    $ tr 'A-Z' 'a-z' < ...
    $ tr 'A-Z' 'a-z' < ... > ...
>
    $ cut -f3 ...

    $ cut -d, ...      以,为分隔符   默认tab

    $ cut -c3-5 ...   从3 到 5的字符

>
    $ paste -d, ...
>
    $ col -x ...        将tab转化为空格
>
    $ sort ...
    -r      降序
    -f      忽略大小写
    -n      以数字的顺序进行排序
    -u      去掉重复行
    -tc     以字符c作为分隔符
    -kN     按第N个字段排序
    -k N1,N2    先... 后...
>
    $ uniq ...
    -c      行前显示出现次数
    -d      只显示重复行
    -i      忽略字符的大小写
    -u      只显示出现一次的行
>
    /etc/passwd
    /etc/shadow
>
    /etc/group
    /etc/gshadow
>
    $ passwd -S 用户  查看密码状态
>
    $ diff ... ...
    $ sdiff ... ...
>
    $ expand ...        将tab转化为空格
>
    $ tar c ...         创建一个新的tar文件
    $ tar t ...         列出tar文件中内容的目录
    $ tar x ...         从tar文件中抽取文件
    $ tar v ...         现实所打包的文件的详细信息
    $ tar z ...         使用gzip压缩算法来压缩打包后的文件
    $ tar j ...         使用bzip2压缩算法来压缩打包后的文件
>
    $ gzip ...
    $ gzip -v ...       显示文件的压缩比
    $ gzip -c           保留原来的文件，而新创建一个压缩文件，其中压缩文件名以.gz结尾
    $ gunzip ...        解压文件

**注意：** gzip只能用来压缩文件，不能用来压缩目录

>
    ^   锁定行的开头
    $   锁定行的结尾
>
    $ grep 选项 模式 文件名
    -c      仅列出包含模式的行数      
    -i      忽略模式中字母的大小写
    -l      列出带有匹配行的文件名
    -n      在每行的最前面列出行号
    -v      列出没有匹配模式的行
    -w      把表达式作为一个完整的单字来搜寻，忽略那些部分匹配的行
**注意：** 如果是搜寻多个文件，grep命令的结果只显示在文件中发现匹配模式的文件名
>
    $ egrep
    +       匹配一个或多个前导字符
    a|b     匹配a或b
    (RE)    匹配括号中的正则表达式RE
>
    $ sed 's/.../.../g' ......
    $ sed 's/.../.../n' ......
    $ sed 's/.../.../g;s/.../.../g' ......
    $ ... | sed '1d'
    $ ... | sed '1,2d'      删除1~2行
    $ ... | sed '2,$d'
    $ ... | sed '/^$/d'     删除空白行
>
    $ awk '{commands}'
    $ awk '{print}' ...
    $ ... | awk '{print}
    $ ... | awk '{s = s + $3; print s}'     (s += $3)
    $ ... | awk '{...} END {...}'
    $ ... | awk -f 文件名
    $ ... | awk -F: '{if length($3) == 3 print $0}'
    -f      将从该标志之后的文件中读取指令而不是从命令行读取
    -Fc     表明字段之间的分隔符是c而不是默认的空白字符
    NF      显示一行记录中有多少个字段
    $NF     显示一行记录中的最后一个字段
    NR      追踪所显示数据行的数目
    $0      表示整个数据行
    \n      换行
    \t      tab
>
    $ vim -r 文件名         如果在编辑一个文件时系统崩溃了，可以使用这个命令来恢复文件
    $ vim -R 文件名         以只读方式打开文件

**命令模式下vim光标移动**(字、词、行、段)

    h   左移一字符
    j   下移一字符
    k   上移一字符
    l   右移一字符
    w   前移一个字
    b   后移一个字
    e   当前字的结尾
    $   当前行的结尾
    0   当前行的开始
    ^   当前行里第一个非空白字符
    (   后移一句子
    )   前移一句子
    {   上移一段落
    }   下移一段落
**进入插入模式的方式**

    a   光标后添加
    i   光标前插入
    A   行后添加
    I   行前插入
    o   行下开启新行
    O   行上开启新行
**命令模式下的操作**
|          |  change  | delete   | yank(copy) |
| :------: | :------: | :------: | :------:   |
| line     | cc       | dd       | yy         |                       
| letter   | cl       | dl       | yl         |
| word     | cw       | dw       | yw         |

**复原文件：回到命令模式，按u键**

    c)
    d)
    y)
    c(
    d(
    y(
    c{
    d{
    y{
    c}
    d}
    y}
>
**如果之前操作的是行**
    p       粘贴在当前行之下
    P(大)   ...........之下
**如果之前操作的是字符**
    p       粘贴在光标之后
    P(大)   .........之前
>
    u       复原最近一次的变更
    Ctrl+R  取消最近一次的复原
    U       复原当前行的所有变化
>
    /   向下搜索关键字
    ?   向上搜索关键字
    n   继续同方向搜索
    N   继续反方向搜索
>
    ~       转换光标所在字母的大小写
    ndd     删除n行（从光标处算起）
    nyy     复制n行（从光标处算起）
>
    :w      存盘
    :q      退出，但不存盘
    :wq     存盘并退出
    :w!     强行存盘，即便是只读文件
    :q!     强行退出，如果做过修改可能会丢失数据
    :wq!    强行存盘并退出
>   
    G       光标跳到文件的最后一行
    nG      光标跳到文件的第n行
    Ctrl+d  光标向下移动半个屏幕
    Ctrl+u  光标向上移动半个屏幕
>
    H       光标跳到屏幕的第一行
    M       光标跳到屏幕正中间的那一行
    L       光标跳到屏幕的最后一行
    z<Enter>:   将当前行变为屏幕的第一行
>
**shell变量**  
- 局部变量（自定义）：只能在当前的工作环境中使用
- 环境变量：可以在当前工作的shell使用，并且会传给它的所有的子shell

**显示shell变量** 

    $ set | more        显示所有的变量
    $ env | more        显示环境变量

**通常以大写字母作为shell变量名**

**Linux预定义的Bash Shell变量**
- COLUMNS       设置终端窗口的宽度
- LINES         设置终端窗口的高度
- HISTFILESIZE  决定在退出系统时将多少条命令存入历史文件
>
    PS1     主要用来设置Bash Shell提示符所显示的信息
    $ PS1='...'
    \d  系统当前的日期
    \t  系统当前的时间
    \h  简短形式的主机名
    \u  当前用户名
    \w  当前的工作目录
    \!  当前命令的历史编号
    \$  普通用户显示$，root用户显示#
    \l  显示shell终端设备的基本名
>
    $ alias         列出Bash Shell预定义的别名
    $ alias 别名=命令字符串
    $ unalias 别名      取消别名
>
    $ set -o
    $ set -o 变量名
>
    $ export 变量名         将自定义变量升级为环境变量
>
    $ unset 变量名          取消变量
>
    


         


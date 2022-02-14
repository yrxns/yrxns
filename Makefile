# gcc常用选项:
# -c				仅对源文件进行编译，不链接生成可执行文件
# -g[gdb]			在可执行文件中加入调试信息
# -0[0、1、2、3]	优化生成的代码，中括号中的部分是优化级别，缺省为2,0为不进行优化。注意，采用更高级的优化并不一定得到效率更高的代码
# -Idir				在编译源程序时增加一个搜索头文件的额外目录——dir，即include增加一个搜索的额外目录
# -Ldir				在编译源文件时增加一个搜索库文件的额外目录
# -llib				在编译链接文件时增加一个额外的库，库名为liblibrary.so
# -w				禁止所有警告

# Makefile中常见预定义变量：
# CXX		C++编译器的名称，默认值为g++
# RM		文件删除程序的名称，默认值为rm -f
# CXXFLAGS	C++编译器的选项，无默认值
# LDFLAGS	链接器参数。

# $< 	表示第一个依赖文件
# $@ 	表示目标集
# $^	表示依赖集

# VPATH		它是特殊变量，make搜寻目标文件和依赖文件的路径（路径之间分号间隔）
# vpath		它是关键字，比起VPATH更加地灵活，以下：
# vpath <pattern> <directories>		为符合模式<pattern>的文件指定搜索目录<directories>
# vpath <pattern>					清除符合模式<pattern>的文件的搜索目录
# vpath 							清除所有已被设置好了的文件搜索目录。

# <targets> : <target-pattern> : <prereq-patterns>
#    <commands> 

# 当我们用 @ 字符在命令行前，那么，这个命令将不被make显示出来
# @echo 。。。

# 忽略命令的出错，我们可以在命令行前加一个减号 - ，标记为不管命令出不出错都认为是成功的

#############################################################################
VPATH = src:../headers
vpath %.h ../headers

############################################################
objects = foo.o bar.o

all: $(objects)

$(objects): %.o: %.c
    $(CC) -c $(CFLAGS) $< -o $@

# 相当于

foo.o : foo.c
    $(CC) -c $(CFLAGS) foo.c -o foo.o
bar.o : bar.c
    $(CC) -c $(CFLAGS) bar.c -o bar.o

############################################################################

exec:
    cd /home/hchen
    pwd

exec:
    cd /home/hchen; pwd

####################################################################

subsystem:
    cd subdir && $(MAKE)

####################################################################

# 命令包

define run-yacc
	yacc $(firstword $^)
	mv y.tab.c $@
endef

foo.c : foo.y
    $(run-yacc)

###########################################################

# 我们可以替换变量中的共有的部分，其格式是 $(var:a=b) 或是 ${var:a=b} ，其意思是，把变量var中所有以“a”字串“结尾”的“a”替换成“b”字串。

foo := a.o b.o c.o
bar := $(foo:.o=.c)

foo := a.o b.o c.o
bar := $(foo:%.o=%.c)

#########################################################################

# 局部变量

prog : CFLAGS = -g
prog : prog.o foo.o bar.o
    $(CC) $(CFLAGS) prog.o foo.o bar.o

prog.o : prog.c
    $(CC) $(CFLAGS) prog.c

foo.o : foo.c
    $(CC) $(CFLAGS) foo.c

bar.o : bar.c
    $(CC) $(CFLAGS) bar.c

# 这个特性非常的有用，当我们设置了这样一个变量，这个变量会作用到由这个目标所引发的所有的规则中去。

###########################################################

# 模式变量

%.o : CFLAGS = -O

######################################

# 条件判断

# ifeq 相等为真
libs_for_gcc = -lgnu
normal_libs =

ifeq ($(CC),gcc)
    libs=$(libs_for_gcc)
else
    libs=$(normal_libs)
endif

foo: $(objects)
    $(CC) -o foo $(objects) $(libs)

# ifneq

# ifdef 非空为真
foo =
ifdef foo
    frobozz = yes
else
    frobozz = no
endif

# ifndef

########################################################

# 函数

# subst 字符串替换

$(subst <from>,<to>,<text>)

$(subst ee,EE,feet on the street)

把 feet on the street 中的 ee 替换成 EE ，返回结果是 fEEt on the strEEt 。

#################################################################

# patsubst 模式字符串替换

$(patsubst <pattern>,<replacement>,<text>)

$(patsubst %.c,%.o,x.c.c bar.c)

把字串 x.c.c bar.c 符合模式 %.c 的单词替换成 %.o ，返回结果是 x.c.o bar.o

######################################################################


# filter 过滤函数

$(filter <pattern...>,<text>)

sources := foo.c bar.c baz.s ugh.h
foo: $(sources)
cc $(filter %.c %.s,$(sources)) -o foo

$(filter %.c %.s,$(sources)) 返回的值是 foo.c bar.c baz.s 。

###############################################

# filter-out 反过滤

$(filter-out <pattern...>,<text>)

###########################################################

sort

$(sort <list>)

################################################

word 取第n个单词

$(word <n>,<text>)

$(word 2, foo bar baz) 返回值是 bar 

################################################

wordlist

$(wordlist 2, 3, foo bar baz) 返回值是 bar baz

##########################################

words 统计单词个数

$(words <text>)

$(words, foo bar baz) 返回值是 3

$(word $(words <text>),<text>) 取最后一个单词

###################################

firstword

$(firstword <text>)

$(firstword foo bar) 返回值是 foo

########################################

dir

$(dir <names...>)

$(dir src/foo.c hacks) 返回值是 src/ ./ 。

######################################

notdir

$(notdir <names...>)

$(notdir src/foo.c hacks) 返回值是 foo.c hacks 。

################################################

suffix 取文件后缀

$(suffix <names...>)

$(suffix src/foo.c src-1.0/bar.c hacks) 返回值是 .c .c。

###############################################

basename 取文件前缀

$(basename <names...>)

$(basename src/foo.c src-1.0/bar.c hacks) 返回值是 src/foo src-1.0/bar hacks 。

##################################################

addsuffix 添加文件后缀

$(addsuffix <suffix>,<names...>)

$(addsuffix .c,foo bar) 返回值是 foo.c bar.c 。

####################################################

addprefix 添加文件前缀

$(addprefix <prefix>,<names...>)

$(addprefix src/,foo bar) 返回值是 src/foo src/bar 。

####################################################

join

$(join <list1>,<list2>)

$(join aaa bbb , 111 222 333) 返回值是 aaa111 bbb222 333 。

###################################################
foreach 函数

$(foreach <var>,<list>,<text>)

names := a b c d

files := $(foreach n,$(names),$(n).o)

$(files) 的值是 a.o b.o c.o d.o 。

################################################
call函数

$(call <expression>,<parm1>,<parm2>,...,<parmn>)

reverse =  $(1) $(2)

foo = $(call reverse,a,b)

那么， foo 的值就是 a b 。当然，参数的次序是可以自定义的，不一定是顺序的，如：

reverse =  $(2) $(1)

foo = $(call reverse,a,b)

此时的 foo 的值就是 b a 。

######################################################

shell函数

contents := $(shell cat foo)
files := $(shell echo *.c)

###################################################
指定Makefile

make -f hchen.mk

###########################################

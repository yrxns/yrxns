

| 符号常量      | 意义        |
|---------------|-------------|
| STDIN_FILENO  | 0, 标准输入 |
| STDOUT_FILENO | 1，标准输出 |
| STDERR_FILENO | 2，标准错误 |

# **open** 

        int open(const char *path, int oflag, ...);

| 文件状态标志 | 意义                                                    |
|--------------|---------------------------------------------------------|
| O_RDONLY     | 只读打开                                                |
| O_WRONLY     | 只写打开                                                |
| O_RDWR       | 读写打开                                                |
| O_EXEC       | 只执行打开                                              |
| O_APPEND     | 文件末尾追加                                            |
| O_CREAT      | 问件不存在是创建，需指定第三参数mode                    |
| O_TRUNC      | 如果文件存在，且为只写或读写成功打开时，将其长度截断为0 |

# **creat** 

        int creat(const char *path, mode_t mode);

等价于`open(path, O_WRONLY|O_CREAT|O_TRUNC, mode);`  
creat 的一个不足之处是它以只写方式打开所创建的文件，修正方式为`open(path, O_RDWR|O_CREAT|O_TRUNC, mode)` 

# **close** 

        int close(int fd);

当一个进程终止时，内核会自动关闭它打开的所有文件

# **lseek** 

        off_t lseek(int fd, off_t offset, int whence);

| whence   | meaning                                        |
|----------|------------------------------------------------|
| SEEK_SET | 偏移量设置为文件开始处offset个字节             |
| SEEK_CUR | 偏移量设置为当前值加上offset，offset可正可负   |
| SEEK_END | 偏移量设置为文件长度加上offset，offset可正可负 |

# read

        ssize_t read(int fd, void *buf, size_t nbytes);

# write

        ssize_t write(int fd, void *buf, size_t nbytes);

# dup
>复制一个现有的文件描述符

        int dup(int fd);

# sync、fsync
        void sync(void);
        int fsync(int fd);

>成功，0；出错，-1

 sync将所有修改过的块缓冲区排入写队列，然后就返回，它并不等待实际写磁盘操作结束  
fsync只对fd文件起作用，并且等待写磁盘操作结束才返回

----------------

    struct stat {
        mode_t                  st_mode;
        ino_t                   st_ino;
        dev_t                   st_dev;
        nlink_t                 st_nlink;
        uid_t                   st_uid;
        gid_t                   st_gid;
        off_t                   st_size;
        struct timespec         st_atime;
        struct timespec         st_mtime;
        struct timespec         st_ctime;
        blksize_t               st_blksize;
        blkcnt_t                st_blocks;
    };


# stat、fstat、lstat
>获取文件的信息结构

    #include <sys/stat.h>

    int stat(const char *restrict pathname, struct stat *restrict buf);
    int fstat(int fd, struct stat *buf);
    int lstat(const char *restrict pathname, struct stat *restrict buf);

                                                            成功，0；出错，-1


# 文件类型
>文件类型信息包含在 **stat** 结构的 **st_mode** 中

| 宏         | 文件类型     |
|------------|--------------|
| S_ISREG()  | 普通文件     |
| S_ISDIR()  | 目录文件     |
| S_ISCHR()  | 字符特殊文件 |
| S_ISBLK()  | 块特殊文件   |
| S_ISFIFO() | 管道或FIFO   |
| S_ISLNK()  | 符号链接     |
| S_ISSOCK() | 套接字       |


# 文件访问权限
>**stat** 结构的 **st_mode** 也包含了文件的访问权限信息

| mode    | 含义               |
|---------|--------------------|
| S_ISUID | 执行时设置用户ID   |
| S_ISGID | 执行时设置组ID     |
| S_ISVTX | 保存正文（黏着位） |
| ***     | ***                |
| S_IRWXU | user rwx           |
| S_IRUSR | user r             |
| S_IWUSR | user w             |
| S_IXUSR | user x             |
| S_IRWXG | group rwx          |
| S_IRGRP | group r            |
| S_IWGRP | group w            |
| S_IXGRP | group x            |
| S_IRWXO | other rwx          |
| S_IROTH | other r            |
| S_IWOTH | other w            |
| S_IXOTH | other x            |


# access
>测试实际用户和实际组（而非有效用户和有效组）对文件的访问权限

    #include <unistd.h>

    int access(const char *pathname, int mode);
                                                            成功，0；出错，-1


| mode | 含义             |
|------|------------------|
| F_OK | 测试文件是否存在 |
| R_OK | 测试读权限       |
| W_OK | 测试写权限       |
| X_OK | 测试执行权限     |



# umask

    #include <sys/stat.h>

    mode_t umask(mode_t cmask);
                                                                    返回之前的st_mode


# chmod、fchmod

    #include <sys/stat.h>

    int chmod(const char *pathname, mode_t mode);
    int fchmod(int fd, mode_t mode);
                                                                        成功，0；出错，-1


# chown、fchown、lchown

    #include <unistd.h>

    int chown(const char *pathname, uid_t owner, gid_t group);
    int fchmod(int fd, uid_t owner, gid_t group);
    int lchown(const char *pathname, uid_t owner, gid_t group);
                                                                    成功，0；出错，-1


# truncate、ftruncate
>文件截断

    #include <unistd.h>

    int truncate(const char *pathname, off_t length);
    int ftruncate(int fd, off_t length);
                                                                成功，0；出错，-1


# link、unlink

    #include <unistd.h>

    int link(const char *existingpath, const char *newpath);
    int unlink(const char *pathname);
                                                                    成功，0；出错，-1

>处理临时文件遗留问题，可以open()后紧接着unlink()


# remove

>对于文件，remove同于unlink;对于目录，remove同于rmdir

    #include <stdio.h>

    int remove(const char *pathname);
                                                                        成功，0；出错，-1


# rename

    #include <stdio.h>

    int rename(const char *oldname, const char *newname);
                                                                    成功，0；出错，-1


# symlink

    #include <unistd.h>

    int symlink(const char *actualpath, const char *sympath);
                                                                    成功，0；出错，-1


# readlink

>打开软连接本身，并读取链接的名字

    #include <unistd.h>

    ssize_t readlink(const char *restrict pathname, char *restrict buf, size_t bufsize);
                                                                    成功，返回读取的字节数；出错，-1


# mkdir、rmdir

    #include <sys/stat.h>

    int mkdir(const char *pathname, mode_t mode);

    ------------

    #include <unistd.h>

    int rmdir(const char *pathname);
                                                                成功，0；出错，-1


# 读目录

    #include <dirent.h>

    DIR *opendir(const char *pathname);
    DIR *fdopendir(int fd);
                                                                成功，返回指针；出错，返回NULL

    struct dirent *readdir(DIR *dp);
                                                                成功，返回指针；在目录尾或出错，返回NULL

    int closedir(DIR *dp);
                                                                成功，0；出错，-1

**dirent** 结构

    struct dirent {
        ...
        ino_t d_ino;            /* i-node number */
        char d_name;            /* filename */
        ...
    }


# chdir、fchdir
>指定新的工作目录

    #include <unistd.h>

    int chdir(const char *pathname);
    int fchdir(int fd);
                                                                成功，0；出错，-1


# getcwd
>获取当前工作目录的绝对路径

    #include <unistd.h>

    char *getcwd(char *buf, size_t size);
                                                                成功，0；出错，-1

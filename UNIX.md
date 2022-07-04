

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

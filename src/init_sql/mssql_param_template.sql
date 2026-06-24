-- MSSQL 参数模板初始数据
-- 插入到 param_template 表中

INSERT IGNORE INTO `param_template` (`db_type`, `variable_name`, `default_value`, `editable`, `valid_values`, `description`) VALUES

-- 内存相关
('mssql', 'max server memory (MB)', '2147483647', 1, '128-2147483647', 'SQL Server 最大可使用内存(MB)'),
('mssql', 'min server memory (MB)', '0', 1, '0-2147483647', 'SQL Server 最小保留内存(MB)'),
('mssql', 'index create memory (KB)', '0', 0, '704-2147483647', '索引创建排序时使用的内存量(KB)，0=自动'),
('mssql', 'min memory per query (KB)', '1024', 0, '512-2147483647', '每个查询执行所需的最小内存(KB)'),

-- 并行度
('mssql', 'max degree of parallelism', '0', 1, '0-64', '最大并行度，0=使用所有可用处理器，1=禁用并行'),
('mssql', 'cost threshold for parallelism', '5', 1, '0-32767', '并行开销阈值(秒)，高于此开销的查询才考虑并行'),
('mssql', 'max worker threads', '0', 0, '128-65535', '最大工作线程数，0=自动配置'),

-- 网络
('mssql', 'remote query timeout (s)', '600', 1, '0-2147483647', '远程查询超时时间(秒)，0=禁用超时'),
('mssql', 'remote login timeout (s)', '10', 0, '0-2147483647', '远程登录超时时间(秒)'),
('mssql', 'network packet size (B)', '4096', 0, '512-65536', '网络包大小(字节)'),
('mssql', 'remote access', '1', 0, '0,1', '允许远程访问(0=禁用,1=启用)'),

-- 备份
('mssql', 'backup compression default', '0', 1, '0,1', '备份默认压缩(0=不压缩,1=压缩)'),
('mssql', 'recovery interval (min)', '0', 0, '0-32767', '恢复间隔(分钟)，0=自动配置'),
('mssql', 'backup checksum default', '0', 0, '0,1', '备份默认校验和'),

-- 查询优化
('mssql', 'optimize for ad hoc workloads', '0', 1, '0,1', '针对即席工作负荷进行优化(建议开启)'),
('mssql', 'query governor cost limit', '0', 0, '0-2147483647', '查询调控器开销限制，0=禁用'),
('mssql', 'max text repl size (B)', '65536', 0, '-1-2147483647', '最大文本复制大小(B)，-1=无限制'),
('mssql', 'fill factor (%)', '0', 0, '0-100', '索引填充因子(%)，0=使用服务器默认值'),

-- 高级选项
('mssql', 'show advanced options', '0', 0, '0,1', '显示高级配置选项(sp_configure)'),
('mssql', 'blocked process threshold (s)', '0', 1, '0-86400', '阻塞进程阈值(秒)，0=不监控'),
('mssql', 'clr enabled', '0', 0, '0,1', '启用 CLR 集成'),
('mssql', 'xp_cmdshell', '0', 1, '0,1', '启用 xp_cmdshell 扩展存储过程'),
('mssql', 'Ole Automation Procedures', '0', 0, '0,1', '启用 OLE 自动化存储过程'),
('mssql', 'Database Mail XPs', '0', 1, '0,1', '启用数据库邮件'),

-- 跟踪标志相关（使用 DBCC TRACEON/OFF 设置）
('mssql', 'default trace enabled', '1', 0, '0,1', '启用默认跟踪'),
('mssql', 'scan for startup procs', '0', 0, '0,1', '扫描启动存储过程'),
('mssql', 'transform noise words', '0', 0, '0,1', '转换干扰词(全文搜索)'),
('mssql', 'PH timeout (s)', '60', 0, '1-3600', 'DBCC CHECKDB 的 PH 超时(秒)'),
('mssql', 'two digit year cutoff', '2049', 0, '1753-9999', '两位数年份截止年份'),
('mssql', 'user options', '0', 0, '0-32767', '用户连接默认 SET 选项(位掩码)'),
('mssql', 'user connections', '0', 0, '0-32767', '最大用户连接数，0=自动');

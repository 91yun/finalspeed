# FinalSpeed
### 说明
修复了无法更改端口等bug

### 一键安装代码：
```
wget --no-check-certificate -qO- https://raw.githubusercontent.com/imazes/finalspeed/master/install_fs.sh |bash
```
###一键卸载代码
```
wget --no-check-certificate -qO- https://raw.githubusercontent.com/imazes/finalspeed/master/uninstall_fs.sh |bash
```
### finalspeed操作命令

启动： 
```
service finalspeed start
```
停止命令：
```
service finalspeed stop
```
状态命令（查看日志）：
```
service finalspeed status
```
### finalspeed安装路径

安装路径： /fs/

日志路径：/fs/server.log

### 如何更改端口
####-----首次指定端口
```
mkdir -p /fs/cnf/
echo 1234 > /fs/cnf/listen_port
```
####----------再次更改端口
```
echo 1234 > /fs/cnf/listen_port
```
【1234】就是你要指定的端口号,更改端口后需要重启fs

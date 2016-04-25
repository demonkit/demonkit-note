1. .ssh/config增加需要私钥的配置时，需要增加一个命令：ssh-add /path/to/your/private/key. 这种添加时临时添加，重启机器会丢失。
2. mac下使用ssh-add -K [path/to/your/ssh-key]，使用mac的keychain来管理你的秘钥和密码。


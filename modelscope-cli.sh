#登陆
modelscope login --token ms-809bbc0d-c32b-46ad-94d2-f2141472f487

#上传文件夹
modelscope upload owner_name/repo_name /path/to/your_folder

#上传文件
modelscope upload owner_name/repo_name /path/to/your_file.suffix data/your
_file.suffix --repo-type model

#完整用法示例
modelscope upload [repo_id] [local_path] [path_in_repo] --repo-type model --include '*.bin' --exclude '*.log' --commit-message 'init' 
--commit-description 'my first commit' --token 'xxx-xxx' --max-workers 16 --endpoint 'https://www.modelscope.cn'

repo_id             是  位置参数，上传的目标魔搭仓库ID，如 user_name/repo_name
local_path          是  位置参数，待上传的本地文件或文件夹路径
path_in_repo        是  位置参数，指定上传至魔搭仓库的文件夹或文件具体路径，包括路径及文件夹或文件具体名称
repo-type           否  --repo-type 'model'默认为 model
include             否  指定上传文件中应该包含文件类型的模板，例如 --include '*.safetensors'默认为 None
exclude             否  指定上传文件中应该排除掉的文件类型模板，例如 --exclude '*.log'
commit-message      否  提交信息 例如 --commit-message 'init'﻿ 默认为 None﻿
commit-description  否  本地提交的描述信息，例如 --commit-description 'myfirst commit'﻿
token               否  SDK token， --token 'xxx-xxx' 默认为 None,获取来源：https://modelscope.cn/my/myaccesstoken
max-workers         否  上传所用的线程数， --max-workers 16 默认为 min(8,os.cpu_count() + 4)
endpoint            否  服务端点， --endpoint 'https://www.modelscope.cn' 默认值： https://www.modelscope.cn
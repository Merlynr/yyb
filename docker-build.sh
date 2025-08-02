docker build -t yyb-docker:v1.0.0 .
docker login --username=13290*****@qq.com registry.cn-beijing.aliyuncs.com
docker tag [imageId] registry.cn-beijing.aliyuncs.com/smile2025/player_mode
l_image:1.0.2
docker push registry-vpc.cn-beijing.aliyuncs.com/smile2025/player_model_ima
ge:1.0.2
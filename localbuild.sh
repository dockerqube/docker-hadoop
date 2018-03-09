set -e
DOCKER_TAG=${1:-latest}
docker build -t docker.registry/hadoop:$DOCKER_TAG hadoop
docker build -t docker.registry/hadoop-hdfs-datanode:$DOCKER_TAG hdfs-datanode
docker build -t docker.registry/hadoop-hdfs-namenode:$DOCKER_TAG hdfs-namenode
docker build -t docker.registry/hadoop-yarn-nodemanager:$DOCKER_TAG yarn-nodemanager
docker build -t docker.registry/hadoop-yarn-resourcemanager:$DOCKER_TAG yarn-resourcemanager

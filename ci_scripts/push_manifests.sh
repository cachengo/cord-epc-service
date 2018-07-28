export IMAGE_TAG=$(cat VERSION)

docker manifest create --amend cachengo/vepc-synchronizer:$IMAGE_TAG cachengo/vepc-synchronizer-x86_64:$IMAGE_TAG cachengo/vepc-synchronizer-aarch64:$IMAGE_TAG
docker manifest push cachengo/vepc-synchronizer:$IMAGE_TAG

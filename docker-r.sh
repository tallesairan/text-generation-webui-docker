model=TheBloke/vicuna-13B-1.1-GPTQ-4bit-128g
volume=$PWD/data # share a volume with the Docker container to avoid downloading weights every run

docker run --gpus all --shm-size 1g -p 8080:80 -v $volume:/data ghcr.io/huggingface/text-generation-inference:0.9.4 --model-id $model
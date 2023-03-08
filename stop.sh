CURRENT_DIR=$(cd $(dirname $0); pwd)
echo "Current work dir: $CURRENT_DIR"

count=1
while [ "$#" -ge "1" ];do
    echo "Need to stop: $1"

    if [ ! -d "./$1" ]; then
        echo "Directory of $1 not found"
        exit
    fi

    cd "./$1"
    docker-compose down
    
    cd $CURRENT_DIR

    let count=count+1
    shift
done
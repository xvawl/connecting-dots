setproxy() {
    export http_proxy=http://127.0.0.1:"$1"
    export https_proxy=http://127.0.0.1:"$1"
    export all_proxy=http://127.0.0.1:"$1"
    export no_proxy=http://127.0.0.1:"$1"
    export HTTP_PROXY=http://127.0.0.1:"$1"
    export HTTPS_PROXY=http://127.0.0.1:"$1"
    export ALL_PROXY=http://127.0.0.1:"$1"
    export NO_PROXY=http://127.0.0.1:"$1"
    return 0
}

uproxy() {
    unset http_proxy
    export https_proxy
    export all_proxy
    export no_proxy
    export HTTP_PROXY
    export HTTPS_PROXY
    export ALL_PROXY
    export NO_PROXY
    return 0
}


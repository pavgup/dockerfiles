Start Redis Server
==================

    docker run -d crosbymichael/redis

Create a link alias
===================

    docker link `docker ps -l -q` /redis

Launch some workers linked to redis
===================================

    docker run -d -link /redis:redis vieux/rqworker
    docker run -d -link /redis:redis vieux/rqworker
    docker run -d -link /redis:redis vieux/rqworker
    docker run -d -link /redis:redis vieux/rqworker

Launch rq-dashboard
===================

    docker run -d  -link /redis:redis -p 9181 vieux/rq-dashboard

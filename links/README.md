Start Redis Server
==================

    docker run -d -name /redis crosbymichael/redis


Launch some workers linked to redis
===================================

    docker run -d -link /redis:redis vieux/rqworker
    docker run -d -link /redis:redis vieux/rqworker
    docker run -d -link /redis:redis vieux/rqworker
    docker run -d -link /redis:redis vieux/rqworker

Launch rq-dashboard
===================

    docker run -d  -link /redis:redis -p 9181 vieux/rq-dashboard

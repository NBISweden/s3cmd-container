FROM python:buster

WORKDIR /tmp/
ENTRYPOINT /usr/local/bin/s3cmd

# Temporary hack to pull in token-fixing, remove when merged.

RUN git clone --depth 1 https://github.com/s3tools/s3cmd.git && \
    cd s3cmd && \
    git config remote.origin.fetch '+refs/pull/*:refs/remotes/origin/pull/*' && \
    git config user.email "you@example.com" && \
    git config user.name "Nobody" && \
    git fetch && \
    git checkout v2.1.0 && \
    git cherry-pick origin/pull/1155/head && \
    python ./setup.py install && \
    cd / \
    && rm -rf /tmp/s3cmd

# s3cmd

This is a container image of s3cmd (as time of writing the latest release
version, 2.1.0) suitable for running with singularity.

This image also contains a fix to 
[an issue when using authentication tokens](https://github.com/s3tools/s3cmd/issues/1153)
provided through configuration files.

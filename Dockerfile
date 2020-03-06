FROM ubuntu
COPY test.sh /home/test/
COPY test_11_KiB /home/test/
COPY test_330_bytes /home/test/
WORKDIR /home/test
FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y python3 git

RUN mkdir /root/A /root/B /root/C /root/files && \
    touch /root/files/a.txt /root/files/b.txt /root/files/c.txt

CMD ["python3", "-c", "import shutil; import os; shutil.move('/root/files/a.txt', '/root/A/'); shutil.move('/root/files/b.txt', '/root/B/'); shutil.move('/root/files/c.txt', '/root/C/')"]

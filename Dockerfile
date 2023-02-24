FROM python:3.6-slim

RUN pip install pip==9.0.1

RUN pip install logging==0.4.9.6 torch==0.4.1 numpy==1.15.4 nibabel==2.4.1 scipy==1.1.0 argparse==1.1 

COPY . ./

CMD ["./shell.sh"]
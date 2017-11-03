#FROM nvidia/cuda:8.0-cudnn7-runtime-ubuntu16.04
FROM ubuntu:16.04
#RUN apt-get update -y && 
#    apt-get install -y --no-install-recommends git ca-certificates
RUN pip install virtualenv virtualenvwrapper
RUN /bin/bash -c "source /usr/local/bin/virtualenvwrapper.sh"

RUN pip install git+ssh://git@github.com/NikolayStarikov/lpr_opencv_svc.git

#RUN git clone https://github.com/NikolayStarikov/lpr_opencv_svc.git
RUN cd lpr_opencv_svc/

RUN pip install -r requirements.txt
RUN pip install wxpython
CMD [ "python", './LPR_SVM_linear_classifier.py"]



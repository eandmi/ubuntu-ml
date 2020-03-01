FROM ubuntu

WORKDIR '/app'

# Install basic development env and ruby
RUN apt update
RUN apt install -y build-essential
RUN apt install -y wget


# Install python3 and ML tools
RUN apt install -y python3
RUN apt install -y python3-pip

# Install ML tools
COPY requirements.txt .
RUN pip3 install -r requirements.txt
#RUN pip3 install numpy
#RUN pip3 install pandas
#RUN pip3 install scikit-learn
#RUN pip3 install matplotlib
#RUN pip3 install seaborn
#RUN pip3 install xlrd
#RUN pip3 install virtualenv

# Install python test tools
RUN pip3 install pytest
RUN pip3 install pytest-cov
RUN pip3 install pytest-xdist

CMD ["bash"]

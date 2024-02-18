FROM toposoid/toposoid-scala-lib-base:0.5

ARG TARGET_BRANCH
WORKDIR /app

ENV DEPLOYMENT=local
ENV _JAVA_OPTIONS="-Xms512m -Xmx4g"

RUN apt-get update \
&& apt-get -y install git unzip \
&& git clone https://github.com/toposoid/scala-data-accessor-neo4j.git \
&& cd scala-data-accessor-neo4j \
&& git fetch origin ${TARGET_BRANCH} \
&& git checkout ${TARGET_BRANCH} \
&& sbt publishLocal \
&& rm -Rf ./target \
&& cd .. \
&& git clone https://github.com/toposoid/toposoid-sentence-transformer-neo4j.git \
&& cd toposoid-sentence-transformer-neo4j \
&& git fetch origin ${TARGET_BRANCH} \
&& git checkout ${TARGET_BRANCH} \
&& sbt publishLocal \
&& rm -Rf ./target \
&& cd .. \
&& git clone https://github.com/toposoid/toposoid-feature-vectorizer.git \
&& cd toposoid-feature-vectorizer \
&& git fetch origin ${TARGET_BRANCH} \
&& git checkout ${TARGET_BRANCH} \
&& sbt publishLocal \
&& rm -Rf ./target
FROM toandrew/spark-python-template:2.3.1-hadoop2.7

MAINTAINER Jim <jianmin.jim@gmail.com>

ENV SPARK_SUBMIT_ARGS  "--conf "spark.mongodb.input.uri=mongodb://10.0.7.11/test.coll?readPreference=primaryPreferred" \
                 --conf "spark.mongodb.output.uri=mongodb://10.0.7.11/test.coll" \
                 --packages org.mongodb.spark:mongo-spark-connector_2.11:2.3.0"

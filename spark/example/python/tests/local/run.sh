$SPARK_HOME/bin/spark-submit --master "spark://10.0.4.234:7077"  \
                    --conf "spark.mongodb.input.uri=mongodb://10.0.4.234/test.coll?readPreference=primaryPreferred" \
                    --conf "spark.mongodb.output.uri=mongodb://10.0.4.234/test.coll" \
                    --packages org.mongodb.spark:mongo-spark-connector_2.11:2.3.0 \
                    $1

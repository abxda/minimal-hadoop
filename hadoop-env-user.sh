# User oriented environment variables (for use with bash)

# The java implementation to use.
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

export HADOOP_ROOT="/vagrant/opt/tdh"
export HADOOP_HOME="$HADOOP_ROOT/hadoop"

export HADOOP_CONF_DIR="$HADOOP_HOME/etc/hadoop"
export HADOOP_COMMON_HOME="$HADOOP_HOME"
export HADOOP_HDFS_HOME="$HADOOP_COMMON_HOME"
export HADOOP_MAPRED_HOME="$HADOOP_COMMON_HOME"
export YARN_HOME="$HADOOP_COMMON_HOME"

export HBASE_HOME="$HADOOP_ROOT/hbase"
export HIVE_HOME="$HADOOP_ROOT/hive"
export KAFKA_HOME="$HADOOP_ROOT/kafka"
export SPARK_HOME="$HADOOP_ROOT/spark"
export OOZIE_HOME="$HADOOP_ROOT/oozie"

export HADOOP_PATH="\
$HADOOP_HOME/bin:\
$HBASE_HOME/bin:\
$HIVE_HOME/bin:\
$KAFKA_HOME/bin:\
$SPARK_HOME/bin"

# shouldn't need to add anything below this line
# this part is intended to avoiding stomping on these vars
if [ "$LD_LIBRARY_PATH" ]; then
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HADOOP_HOME/lib/native"
else
    export LD_LIBRARY_PATH="$HADOOP_HOME/lib/native"
fi

if [ "$HADOOP_CLASSPATH" ]; then
    if [ "$CLASSPATH" ]; then
        export CLASSPATH="$CLASSPATH:$HADOOP_CLASSPATH"
    else
        export CLASSPATH="$HADOOP_CLASSPATH"
    fi
fi

if [ "$HADOOP_PATH" ]; then
    if [ "$PATH" ]; then
        export PATH="$PATH:$HADOOP_PATH"
    else
        export PATH="$HADOOP_PATH"
    fi
fi

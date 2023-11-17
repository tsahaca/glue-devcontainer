PROFILE_NAME=default
WORKSPACE_LOCATION=$PWD
SCRIPT_FILE_NAME=sample.py
UNIT_TEST_FILE_NAME=test_sample.py

docker run -it -v ~/.aws:/home/glue_user/.aws -v $WORKSPACE_LOCATION:/home/glue_user/workspace/ -e AWS_PROFILE=$PROFILE_NAME -e DISABLE_SSL=true --rm -p 4040:4040 -p 18080:18080 --name glue_spark_submit amazon/aws-glue-libs:glue_libs_3.0.0_image_01 spark-submit /home/glue_user/workspace/src/$SCRIPT_FILE_NAME

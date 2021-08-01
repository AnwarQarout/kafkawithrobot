*** Settings ***
Library           SSHLibrary
Resource          resourceFile.robot
Library           TestKafka.py    #Library    #../../../anaconda3/Lib/site-packages/kafka/__init__.py

*** Test Cases ***
create topic
    list all topics and print them
    create topic    RobotTopic
    List All Topics And Print Them

delete topic
    List All Topics And Print Them
    delete topic    RobotTopic
    List All Topics And Print Them

send file content to topic
    send file to kafka topic    RobotTopic    kafka1/file.txt

consume messages from topic
    kafka consumer    RobotTopic    out.txt

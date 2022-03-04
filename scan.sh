sonar-scanner -X \
  -Dsonar.projectKey=ems \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://sonarqube:9000 \
  -Dsonar.login=7b78263254b0e97395b95531966b36d8df358e20 \
  -Dsonar.language=java \
  -Dsonar.java.source=12 \
  -Dsonar.sourceEncoding=UTF-8 \
  -Dsonar.java.binaries=target/classes \
  -Dsonar.projectName=\u8fd8\u6562\u4e71\u7801 
#  -Dsonar-project.properties=UTF-8

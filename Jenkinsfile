pipeline {
    agent any
    stages {
         stage('Download Dependices') {
             steps {
                  sh '''
                    npm install
                  '''
             }
         }

         stage ('Prepare Artifacts') {
           steps {
               sh '''
                  zip -r todo.zip *
               '''
           }
         }
       stage('Upload Artifacts') {
          steps {
              sh '''

                 curl -f -v -u admin:vamsi --upload-file todo.zip http://172.31.9.137:8081/repository/todo/todo.zip
              '''
          }
       }
    }
}

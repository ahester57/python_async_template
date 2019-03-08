## Python Asynchronous Template

(Python3.6)

This is a python app that shows usage of gevent's async powers.  
To install dependencies, first install pipenv: ```pip install --upgrade pipenv```  

Then in the project directory, run: ```pipenv install```  

To run it, ```python src/run.py```  

To get help, ```python src/run.py -h``` or ```python src/run.py --help```  

To give it a custom number of things to do, ```python src/run.py -c <num>``` or ```python src/run.py --count <num>```

To build the app into an executable bash script, ```./make.sh```.  
This will generate a script called ```start.sh``` with you can run and treat the same as ```python src/run.py```.  
This ```start.sh``` is completely portable and contains an encoded version of the source.  


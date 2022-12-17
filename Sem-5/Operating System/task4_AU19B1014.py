def my_function():

   """ Assignment Task-IV:  Two threads presenting thread lifecycle 
        Sequence of thread responce is as follows;

	Nipun started & requesting Anirudhs role
	Nipun tells anirudh to start.
	Anirudh started & waiting forr Nipuns turn...
	Nipun continues his role.
	Nipun patiently waits Anirudh to finish &join
	Anirudh completed his role
	Nipun & Anirudh are both done their play cheers CS5003
    """ 
print("Task4__doc__:")
print(my_function.__doc__)


#import required dependencies 
import threading
import time

class speekeranirudh(threading.Thread):
    def __init__(self):
        super().__init__()
        print("Nipun tells aniruddh to start")

    def run(self):
        print('Anirudh started & waiting for Nipuns turn...')
#add sleeping time for this thread you can use time module
        time.sleep(2)
        print('Anirudh done with his role')

# main thread a.k.a. Nipun
if __name__ == '__main__':
    print("Nipun started and requesting Aniruddh's role")
    anirudh = speekeranirudh()
    print('')
    
#add start method on child thread 
    anirudh.start()
    print('Nipun continues his role')
    time.sleep(0.5)

    print('Nipun patiently waits for Anirudh to finish and join')
#use join method to join threads
    anirudh.join()
    print('Nipun and Anirudh are both done with their roles, cheers CS5003')




def my_function():

    """ Assignment Task-II:In this task you are suppose to showcase process 
    creation mechanisms (single threaded multiple process) architecture the coded block
    need to be explained add screen snippets of action noticed and observation """
    return None

print("Task2__doc__:")
print(my_function.__doc__)

import os
import threading
#import multiprocessing library 
import multiprocessing
def cpu_dist():
    while True:
        pass

print('Hi I am AU19B1014',__name__)
#create entry point to the program at this location use using __name__ == __main__ conditioning
# display information about this process
if __name__ == "__main__":
    print('\n  Process ID: ', os.getpid())#get pid at this point
    print('Thread Count: ', threading.active_count())
    for th in threading.enumerate():
        print(th)
    
    print('Start disturbance cycle based on your configuration')
    for i in range(1,28): # Decide the range with reason 
        threading.Thread(target=cpu_dist).start()
    
    # display information about this process
    print('\n  Process ID: ', os.getpid())
    print('Thread Count: ', threading.active_count())#get active count of thread
    for th in threading.enumerate():
        print(th)


def my_function():

    """Assignment Task-I:In this task you are suppose to showcase process 
    and thread creation mechanisms logic of coded block
    need to be explained add screen snippets of action noticed and observation """
    return None
print("Task1__doc__:")
print(my_function.__doc__)
import os
import threading

# a simple function that disturbs CPU cycles 
def cpu_dist():
    while True:
        pass
print('\n  Process ID: ',os.getpid())#generate pid at this location read os module doc   
print('Thread Count TC: ', threading.active_count())
for th in threading.enumerate():
    print(th)

print('\n Write disturbs according to number of physical cores you have...')
for i in range(1,13): #add range here based on number of logical processors you have
    threading.Thread(target=cpu_dist).start()

# display information about this process
print('\n  Process ID: ',os.getpid())#generate pid at this location read os module doc   
print('Thread Count: ', threading.active_count())
for th in threading.enumerate():
    print(th)

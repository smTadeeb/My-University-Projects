def my_function():

   """ Assignment Task-III: Create two threads and run both of them for specific duration of time
       comment on schedular behaviour and explain the process created to generate these threads
       You are also required to print the thread ID that should mention parent and child thread """

print("Task3__doc__:")
print(my_function.__doc__)

def my_function():

    """ Assignment Task-III: Create two threads and run both of them for specific duration of time
        comment on schedular behaviour and explain the process created to generate these threads
        You are also required to print the thread ID that should mention parent and child thread """

print("Task3__doc__:")
print(my_function.__doc__)

#import required dependencies 
import threading 
import time
speech = True

def speech_chance():
    name = threading.current_thread().getName()
    speech_count = 0                #initialize the variable 
    while speech:
        print(name,'Given a Speech ',threading.get_ident())
        print()
        speech_count+=1               #increament the count by one         
    print('Count:',speech_count)

#create a entry point for the code use __name__ __main__ block
if __name__ == '__main__':    
    threading.Thread(target=speech_chance, name='parent').start()#assign Target
    threading.Thread(target=speech_chance,name='child').start() #assign Target
# add timesleep for the thread exection you can use time module  
    time.sleep(2)
    speech = False 
 
    

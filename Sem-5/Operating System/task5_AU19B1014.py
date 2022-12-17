# =============================================================================
# def my_function():
# 
# 	""" Assignment -III Task V: student1 cleans a hostel room meanwhile student2 Cooks a food analogy """
# print("Task5__doc__:")
# print(my_function.__doc__)
# #import required modules at this location 
# import threading
# import time
# 
# def room_cleaner():
#     while True:
#         print('write a garbage collector message here')
#         time.sleep(1)
#         
# if __name__ == '__main__':
#     somesh = threading.Thread(target=room_cleaner())# add target child thread function defination 
# #add daemon method to child thread  
#     somesh.setDaemon(True)
#     somesh.start()
# #add sequence of print statements by parent thread on the count of 0.8 seconds
#     print('student2 is done with cooking!') #This is the last instruction to be executed
# =============================================================================
def my_function():

	""" Assignment -III Task V: student1 cleans a hostel room meanwhile student2 Cooks a food analogy """
print("Task5__doc__:")
print(my_function.__doc__)

import time
import threading

def room_cleaner():
        while True:
            print('Cleaning Started')
            time.sleep(1)
        

if __name__ == '__main__':
    somesh = threading.Thread(target=room_cleaner)# add target child thread function defination 
#add daemon method to child thread 

    somesh.setDaemon(True)
    
    somesh.start()
    
    time.sleep(1)           
#add sequence of print statements by parent thread on the count of 0.8 seconds
    print('student2 is done with cooking!') #This is the last instruction to be executed
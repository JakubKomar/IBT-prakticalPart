# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:46:03
 # @ Description: Inicialization function for communication between simulator and gui
 '''

from model.xpc import XPlaneConnect as XPC
import logging 
global client # global var for client

#incicialization function
def estCon(xpHost='localhost', xpPort=49009, port=0, timeout=100):
    print("X-Plane Connect example script")
    global client
    client = XPC(xpHost,xpPort,port,timeout)
    try:
        # If X-Plane does not respond to the request, a timeout error
        # will be raised.
        client.getDREF("sim/test/test_float")
        logging.info("Connection succsesfull")
    except:
        logging.error("Error establishing connection to X-Plane.")


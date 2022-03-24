# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:23:16
 # @ Description: Custum slot and signals, that catching connection exeption, in program not used
 '''

from PySide6.QtCore import Slot
from functools import wraps

def custSlot(func):
    @Slot()
    @wraps(func)
    def inner_function(*args, **kwargs):
        try:
            func(*args, **kwargs)
        except WindowsError as ex:
            print(f"ouch, error: slot, exception: {ex}")
    return inner_function


def custSignal(func):
    @wraps(func)
    def inner_function(*args, **kwargs):
        try:
            func(*args, **kwargs)
        except WindowsError as ex:
            print(f"ouch, error: signal, exception: {ex}")

    return inner_function
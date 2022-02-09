# This Python file uses the following encoding: utf-8

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

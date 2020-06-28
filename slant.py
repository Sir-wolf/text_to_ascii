#!/usr/bin/python3
import pyfiglet 
from pyfiglet import Figlet
custom_fig = Figlet(font='slant')

text = input("enter text : ")

print(custom_fig.renderText(text))

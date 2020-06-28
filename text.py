#!/usr/bin/python3
import pyfiglet 

text = input("enter text : ")

ascii_banner = pyfiglet.figlet_format(text)
print(ascii_banner)
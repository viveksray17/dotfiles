#!/usr/bin/python3
import random
import os

ascii_characters = []

i = 33
while i <= 126:
	"""
	exclude these characters
	34 -> quotation mark
	39 -> apostrophe
	"""
	if i == 34:
		pass
	elif i == 39:
		pass
	else:
		ascii_characters.append(chr(i))
	i = i + 1

password = ""
i = 0
while i <= 20:
	password += random.choice(ascii_characters)
	i = i + 1

if __name__ == "__main__":
	print(password)

from FizzBuzz import FizzBuzz


def EnterData():
	
	while True:
		try:
			numb = int(input('Enter number: '))
		except ValueError:
			print('>>> Incorrect data type')
		else:
			return numb


print(FizzBuzz(EnterData()))


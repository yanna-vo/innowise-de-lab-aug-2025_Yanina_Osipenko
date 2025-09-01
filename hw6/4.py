print ("Я загадал число от 1 до 5. Попробуй угадать!")
import random
variant = input("Введите число:")
answer = random.randint(1, 5)
variant = int(variant)
if variant > answer:
    result = "Слишком много!"
elif variant < answer:
    result = "Слишком мало!"
else:
    variant = answer
    result = "Ты угадал!"
print(result)
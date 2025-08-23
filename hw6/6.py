first_number = input ("Введите первое число:")
first_number = float(first_number)
second_number = input ("Введите второе число:")
second_number = float(second_number)
operator = input ("Выберите оператор (+,-,*,/,//,%,**):")
if operator == "+":
    result = first_number + second_number
elif operator == "-":
    result = first_number - second_number
elif operator == "*":
    result = first_number * second_number
elif operator == "/":
    result = first_number / second_number
elif operator == "//":
    result = first_number // second_number
elif operator == "%":
    result = first_number % second_number
elif operator == "**":
    result = first_number ** second_number
else:
    print("Ошибка: Некорректный оператор.")
    exit()
result = float(result)
print ("Результат:", first_number, operator, second_number, "=", result)
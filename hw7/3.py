secret_number = 7

guess = None # Инициализируем guess, чтобы цикл while запустился

while guess != secret_number:
    try:
        guess = int(input("Угадайте число от 1 до 10: "))
        if guess < 1 or guess > 10:
            print("Пожалуйста, введите число от 1 до 10.")
        elif guess != secret_number:
            print("Неверно, попробуйте еще раз.")
        else:
            print("Поздравляю! Вы угадали число!")
    except ValueError:
        print("Пожалуйста, введите целое число.")


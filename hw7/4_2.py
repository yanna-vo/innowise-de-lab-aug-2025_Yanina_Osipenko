scores = [75, 88, 95, 0, 100]
total_score = 0
processed_all = True

for score in scores:
    if score < 0:
        continue
    if score == 0:
        processed_all = False
        break
    total_score += score
    print(f"Добавлен балл: {score}")

if processed_all:
    print("Все данные успешно обработаны.")
else:
    print("Обработка прервана.")

print(f"\nИтоговая сумма баллов: {total_score}")


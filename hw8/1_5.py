def find_sum_indices(nums, target):
  num_map = {}  # Создаем словарь

  for index, num in enumerate(nums):  # Перебираем список
    complement = target - num  # Вычисляем, какое число нам нужно

    if complement in num_map:  # Если complement уже есть
      return [num_map[complement], index]  # Возвращаем индексы

    num_map[num] = index  # Добавляем число и его индекс

  return None  # Если не нашли пару, возвращаем None

nums1 = [2, 7, 11, 15]
target1 = 9
result1 = find_sum_indices(nums1, target1)
print(f"Для списка {nums1} и target = {target1}, ответ: {result1}")

nums2 = [3, 2, 4]
target2 = 6
result2 = find_sum_indices(nums2, target2)
print(f"Для списка {nums2} и target = {target2}, ответ: {result2}")
import datetime

def show_current_time():

  now = datetime.datetime.now() # Получаем текущую дату и время

  # Форматируем дату и время в удобном виде
  formatted_time = now.strftime("%Y-%m-%d %H:%M:%S")

  # Выводим отформатированную дату и время на экран
  print("Текущая дата и время:", formatted_time)

show_current_time()

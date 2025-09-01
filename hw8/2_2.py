prices = [1000, 3499, 250]
nds = 0.20

# Выносим расчёт в функцию add_vat().
def add_vat(price, nds):

  return price + (price * nds)

# Применяем её ко всем элементам списка в цикле и распечатываем итоговые цены, используя цикл.
for price in prices:
  price_with_vat = add_vat(price, nds)
  print(f"Цена {price} с НДС: {price_with_vat}")


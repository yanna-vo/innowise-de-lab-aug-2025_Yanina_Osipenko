email = " USER@DOMAIN.COM "

email = email.strip().lower() # Очистить и отформатировать до вида: "user@domain.com"
print(email)

username, domain = email.split('@') # Разделить на имя пользователя и домен
print(f"Имя пользователя: {username}, Домен: {domain}")

result = f"Username: {username}, Domain: {domain}" # Используя f-строку, создать: "Username: user, Domain: domain.com"
print(result)

words = ["hello", "world", "python", "code"]

word_lengths = [len(word) for word in words]
print("Список длин слов:", word_lengths)

long_words = [word for word in words if len(word) > 4]
print("Список слов длиннее 4 символов:", long_words)

word_length_dict = {word: len(word) for word in words}
print("Словарь {слово: длина}:", word_length_dict)
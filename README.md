# Пример шифрования Виженера на нескольких ЯП

*Шифрование по Виженеру представляет собой сложение блока открытого текста с ключом по модулю мощности алфавита.*

Когда-то давно у меня возникла необходимость передавать зашифрованную строку текста между сервером и клиентом.

На просторах интернета я нашел простой пример шифрования Виженера написанный на Delphi неким программистом с ником "Danger".

В связи с тем что на клиенте и сервере в моем случае была разная среда и использовались разные ЯП, пришлось переписать эту функцию...

И вот уже сейчас я представляю Вам эту функцию переведенную на несколько ЯП:
* c / c++ / arduino
* javascript
* pascal / delphi
* perl
* php

Пытался так же переписать ее на языках "**python**" и "**bash**", но у меня это сделать не получилось из-за особенностей используемого в них метода преобразования числа в символ.
Мой неудачный код на ЯП "**python**" и "**bash**" так же включен в репозиторий, если у Вас есть какие-то идеи как его исправить, пишите мне :smile:.

Пример использования функции:
```c++
# зашифровать
res = code("text", "password", true);
print (res);
# разшифровать
res = code(res, "password", false);
print (res);
```

При передаче данных, зашифрованных таким методом, в некоторых ЯП могут возникнуть проблемы, поэтому рекомендую зашифрованные данные заворачивать например в base64.

---

# Example of Vigenere cipher in several programming languages

*Vigenere cipher is the addition of a block of plaintext with a key modulo the power of the alphabet.*

Once upon a time, I had the need to transfer an encrypted string of text between the server and the client.

On the Internet, I found a simple example of a Vision encryption written in Delphi by a programmer with the nickname "Danger".

Due to the fact that the client and server in my case had a different environment and used different programming languages, I had to rewrite this function...

And now I present to you this function translated into several programming languages:
* c / c++ / arduino
* javascript
* pascal / delphi
* perl
* php

I also tried to rewrite it in the languages "**python**" and "**bash**", but I could not do it because of the peculiarities of the method used in them to convert a number into a symbol.
My unsuccessful code in the programming languages "**python**" and "**bash**" is also included in the repository, if you have any ideas how to fix it, write to me :smile:.

Example of using the function:
```c++
# encrypt
res = code("text", "password", true);
print (res);
# decrypt
res = code(res, "password", false);
print (res);
```

When transferring data encrypted by this method, problems may arise in some programming languages, so I recommend wrapping encrypted data in base64, for example.

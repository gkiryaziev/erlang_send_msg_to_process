Отправляем сообщение процессу.

7> Pid = spawn(fun main:messageRec/0).
8> Pid ! {factorial, 10}.
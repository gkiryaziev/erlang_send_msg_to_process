Отправляем сообщение процессу.

<pre>
7> Pid = spawn(fun main:messageRec/0).
</pre>
<pre>
8> Pid ! {factorial, 10}.
</pre>

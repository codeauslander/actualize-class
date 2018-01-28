p a = (5||6)&&("WAT"||9)#"WAT" true
p b = ("hello"&&0)||(5&&true)#0 true
p c = (false||"Kazzo"&&true)||17#true
p d = nil&&(true||true||true)#nil false
p e = (true&&false)||(true&&false)#false

p f = !(5||6)&&("WAT"||9)
p h = ("hello"&&0)||!(5&&true)
p i = (false||"kazoo"&&[3,4])&&!!17
p j = !nil&&!(true||false||true)

p k = false||nil||true&&"hi"

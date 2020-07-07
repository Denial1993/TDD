# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.create(title: "五倍紅寶石 part 1", content: "斷開鎖鍊吧!")
Article.create(title: "五倍紅寶石 part 2", content: "斷開魂結吧!")
#存檔後，執行 bin/rails db:seed 指令，就可以把資料寫進資料庫裡了，不管是目的性或是實用性來說，把預設資料放在這裡都是比較好的做法。





#rails db:setup
#另外，bin/rails db:setup 指令其實除了建立資料庫之外，也隱含了執行 bin/rails db:seed 的指令，
#所以如果是全新的資料庫，執行 bin/rails db:setup 可一口氣把資料表建好，順便把預設資料寫入。
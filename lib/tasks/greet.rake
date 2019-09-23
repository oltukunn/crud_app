#greetという名前空間 => 挨拶をするタスクを定義
namespace :greet do
  #タスクの説明 desc => description(説明)
  desc "Goodbyeを表示するタスク"
  #task_name => タスクの名前
  task say_hello: :environment do
    #実行したい処理を記述する場所
    puts "Goodbye"
  end

  desc "Helloを表示するタスク"
  task say_hello: :enviroment do
    pust "Hello!!"
  end
end

#cgreet_when_datingという名前空間 => デート時の挨拶をするタスクを定義
namespace :greet_when_dating do

  desc "容姿を褒める"
  task praise_appearance: :enviroment do
    puts "You are beautiful!!"
  end

  desc "ファッションを褒める"
  task praise_fashion: :enviromet do
    puts "That's fashionable!!"
  end
end


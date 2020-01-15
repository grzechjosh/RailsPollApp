# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


usersArray = ["glakebiggs", "tonebologna", "woricard", "webthineaster"]
usersArray.each do |name|
    User.create(username: name)
end
pollNum = 1
userNum = 1
4.times do |i|
    Poll.create(user_id: userNum, title: "Test Poll ##{pollNum}")
    pollNum += 1
    userNum += 1
end
pollNum = 1
4.times do |i|
    qNum = 1
    4.times do |i|
        Question.create(poll_id: pollNum, text: "Test Question ##{qNum}")
        qNum += 1
    end
    pollNum += 1
    qNum += 1
end
qNum = 1
16.times do |i|
    choiceNum = 1
    4.times do |i|
        AnswerChoice.create(question_id: qNum, text: "This is choice #{choiceNum}")
        choiceNum += 1
    end
    qNum += 1
end
qNum = 1
answerNum = 1
lastAnswerNum = 4
4.times do |i|
    userNum = 1
    4.times do |i|
        Response.create(question_id: qNum, user_id: userNum, answer_choice_id: rand(answerNum..lastAnswerNum))
        userNum += 1
    end
    answerNum += 4
    lastAnswerNum += 4
    qNum += 1
end

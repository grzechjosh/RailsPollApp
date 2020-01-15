class Response < ApplicationRecord
    belongs_to :answer_choice,
        primary_key: :id,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice
    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User
    has_one :question, 
        through: :answer_choice
    
end
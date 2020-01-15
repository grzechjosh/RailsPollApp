class User < ApplicationRecord
    has_many :polls,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Poll
    def authored_polls
        self.polls
    end
    has_many :responses,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Response
end
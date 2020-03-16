class Article < ApplicationRecord
    
    validates :title, presence: true, length: { minimum: 3 }
    #validates :text, acceptance: true
    validates :title, confirmation: true
    #validates :title_confirmation, presence: true
    validates :text, exclusion: { in: %w(www kfu muneeb),
    message: "%{value} is reserved." }
    validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    validates :title, inclusion: { in: %w(ThePost ),
    message: "%{value} is not a valid Title" }
    validates :title, uniqueness: true
    # validates_each :title, do |record|
    #     record.error.add(attr, 'attr must start with uper case')
    # if value =~ /\A[[:lower:]]/
    # end
end

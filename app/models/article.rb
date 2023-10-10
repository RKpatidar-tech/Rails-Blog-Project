# class MyValidator < ActiveModel::Validator
#     def validate(record)
#       unless record.title.start_with? 'D'
#         record.errors.add :title, "Need a name starting with D please!"
#       end
#     end
#   end


class Article < ApplicationRecord
    include Visible
    
    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    # include ActiveModel::Validations
    # validates_with MyValidator
    # validates_each :title do |record, attr, value|
    #     record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
    #   end

    # validates :title, inclusion: { in: %w(small medium large),
    # message: "%{value} is not a valid size" }
    # validates :title, format: { with: /\A[a-zA-Z]+\z/,
    # message: "only allows letters" }
    
    # validates :title, exclusion: { in: %w(www us ca jp),
    # message: "%{value} is reserved." }

    # before_validation :normalize_title, on: :create
    

  # :on takes an array as well
  

#   private
#     def normalize_title
#       self.title = title.downcase.titleize
#     end


    # after_initialize do |user|
    #     puts "User was created"
    # end

    # after_find do |user|
    #     puts "User will be finded"
    # end

    # after_touch do |atricle|
    #     puts "You have toched"
    # end

    after_destroy :log_destroy_action

    def log_destroy_action
        puts 'Article destroyed'
      end

end

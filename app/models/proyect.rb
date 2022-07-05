class Proyect < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    
    enum status: [:Propuesta, :Progreso, :Terminado]
    def self.load
        20.times do |i|
            Proyect.create(
                name: Faker::Company.name,
                description: Faker::Company.catch_phrase,
                date_begin: Time.now,
                date_end: Time.now + 3.days

            )
        end
    end
end

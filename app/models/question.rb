class Question < ApplicationRecord

  belongs_to :user

  # Проверка максимальной длины текста вопроса (максимум 255 символов)
  validates :text, length: { maximum: 255 }
  validates :user, :text, presence: true
end

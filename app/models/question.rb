class Question < ApplicationRecord

  # Проверка максимальной длины текста вопроса (максимум 255 символов)
  validates :text, length: { maximum: 255 }
end

class UsersController < ApplicationController
  def index
    @users = [
      User.new(
        id: 1,
        name: 'Edik',
        username: 'wildfrog',
        avatar_url: 'https://img3.goodfon.ru/original/4000x3000/a/9b/glaza-zhivotnye-zelenyy-lyagushka.jpg'
      ),
      User.new(
        id: 2,
        name: 'Misha',
        username: 'arist'
      )
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      name: 'Prima',
      username: 'inspector',
      avatar_url: 'https://img3.goodfon.ru/original/4000x3000/a/9b/'  \
          'glaza-zhivotnye-zelenyy-lyagushka.jpg'
    )

    @questions = [
      Question.new(text: 'Как дела?', created_at: Date.parse('02.12.2020')),
      Question.new(text: 'В чем смысл жизни?', created_at: Date.parse('02.12.2020'))
    ]

    @new_question = Question.new
  end
end

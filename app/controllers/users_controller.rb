class UsersController < ApplicationController
  def index
    #@users = [
    #  User.new(
    #    id: 1,
    #    name: 'Edik',
    #    username: 'wildfrog',
    #    avatar_url: 'https://img3.goodfon.ru/original/4000x3000/a/9b/glaza-zhivotnye-zelenyy-lyagushka.jpg'
    #  ),
    #  User.new(
    #    id: 2,
    #    name: 'Misha',
    #    username: 'arist'
    #  )
    #]
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_url, notice: 'Пользователь успешно зарегистрирован!'
    end
  end

  def edit
  end

  def show
    #@user = User.new(
    #  name: 'Prima',
    #  username: 'inspector',
    #  avatar_url: 'https://img3.goodfon.ru/original/4000x3000/a/9b/'  \
    #      'glaza-zhivotnye-zelenyy-lyagushka.jpg'
    #)
    #
    #@questions = [
    #  Question.new(text: 'Как дела?', created_at: Date.parse('02.12.2020')),
    #  Question.new(text: 'В чем смысл жизни?', created_at: Date.parse('02.12.2020'))
    #]
    #
    #@new_question = Question.new
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,
                                 :name, :username, :avatar_url)
  end
end

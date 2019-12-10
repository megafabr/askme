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
    else
      render 'new'
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def show
    @user = User.find params[:id]
    @questions = @user.questions.order(created_at: :desc)

    @new_question = @user.questions.build
    @no_answered_questions = @questions.map { |question| question.answer == nil }.count
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,
                                 :name, :username, :avatar_url)
  end
end

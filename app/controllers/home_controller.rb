class HomeController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def answer
    question = Question.find(params[:id])
    question.answers << Answer.create(option: params[:opt])

    redirect_to :root
  end
end

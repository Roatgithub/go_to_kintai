class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[ show edit update destroy ]
  before_action :set_q, only: [:index, :search]

  # GET /quizzes or /quizzes.json
  def index
    @quizzes = @q.result
    @quizzes = Quiz.order(:created_at).page(params[:page]) 
  end

  # GET /quizzes/1 or /quizzes/1.json
  def show
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes or /quizzes.json
  def create
    @quiz = Quiz.new(quiz_params)

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to quiz_url(@quiz), notice: "登録しました。" }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1 or /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to quiz_url(@quiz), notice: "更新しました。" }
        format.json { render :show, status: :ok, location: @quiz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1 or /quizzes/1.json
  def destroy
    @quiz.destroy

    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: "削除しました。" }
      format.json { head :no_content }
    end
  end
  
  def search
    @results = @q.result
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end
    
    def set_q
      @q = Quiz.ransack(params[:q])
    end

    # Only allow a list of trusted parameters through.
    def quiz_params
      params.require(:quiz).permit(:question, :answer, :image, :destination)
    end
end

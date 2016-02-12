class AnswersController < ApplicationController
  #before_action :set_answer, only: [:show, :edit, :update, :destroy]

  before_filter :get_report

  def get_report
    @report = Report.find(params[:report_id])
  end
  # GET /answers
  # GET /answers.json
  def index
    if params[:name]
      @report = Report.where(id: params[:id])
      @answers = @report.answers
    else
      @answers = Answer.all
    end

  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = @report.answers.new(answer_params)
    @answer.stakeholder_id = current_stakeholder.id;
    respond_to do |format|
      if @answer.save
        format.html { redirect_to @report, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @report, notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to report_answers, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:content, :answer_type, :stakeholder_id, :report_id, :report,:id)
    end
end

class SentencesController < ApplicationController
  before_action :set_sentence, only: %i[ show edit update destroy ]

  # GET /sentences or /sentences.json
  def index
    @sentences = Sentence.all
  end
 def addsentence
   @sentence=Sentence.new(sentence_params)
   @sentence.save
   @mypic=@sentence.mypic
         render partial: "mypics/sentences", locals:{mypic:@mypic}, layout: false
         
           end
  def show
  end

  # GET /sentences/new
  def new
    @sentence = Sentence.new
  end

  # GET /sentences/1/edit
  def edit
  end

  # POST /sentences or /sentences.json
  def create
    @sentence = Sentence.new(sentence_params)

    respond_to do |format|
      if @sentence.save
        format.html { redirect_to sentence_url(@sentence), notice: "Sentence was successfully created." }
        format.json { render :show, status: :created, location: @sentence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sentence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sentences/1 or /sentences/1.json
  def update
    respond_to do |format|
      if @sentence.update(sentence_params)
        format.html { redirect_to sentence_url(@sentence), notice: "Sentence was successfully updated." }
        format.json { render :show, status: :ok, location: @sentence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sentence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sentences/1 or /sentences/1.json
  def destroy
    @sentence.destroy

    respond_to do |format|
      format.html { redirect_to sentences_url, notice: "Sentence was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentence
      @sentence = Sentence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sentence_params
      params.require(:sentence).permit(:content_fr,:content_en, :mypic_id)
    end
end

class MypicsController < ApplicationController
  before_action :set_mypic, only: %i[ editstuff show edit update destroy add ]
  protect_from_forgery except: [:add]

  # GET /mypics or /mypics.json
  def add
    Mymapstuff.create(mypic_id:@mypic.id,x:params[:x],y:params[:y],title:params[:title])
    render partial: "mypics/mypicmap", locals:{mypic:@mypic}, layout: false

  end
  def index
    @mypics = Mypic.all
  end

  # GET /mypics/1 or /mypics/1.json
  def show
    @sentence=Sentence.new(mypic_id:@mypic.id)
  end

  # GET /mypics/new
  def new
    @mypic = Mypic.new
  end

  # GET /mypics/1/edit
  def edit
  end

  # POST /mypics or /mypics.json
  def create
    @mypic = Mypic.new(mypic_params)

    respond_to do |format|
      if @mypic.save
        format.html { redirect_to mypic_url(@mypic), notice: "Mypic was successfully created." }
        format.json { render :show, status: :created, location: @mypic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mypic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mypics/1 or /mypics/1.json
  def update
    respond_to do |format|
      if @mypic.update(mypic_params)
        format.html { redirect_to mypic_url(@mypic), notice: "Mypic was successfully updated." }
        format.json { render :show, status: :ok, location: @mypic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mypic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mypics/1 or /mypics/1.json
  def destroy
    @mypic.destroy

    respond_to do |format|
      format.html { redirect_to mypics_url, notice: "Mypic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mypic
      @mypic = Mypic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mypic_params
      params.require(:mypic).permit(:image)
    end
end

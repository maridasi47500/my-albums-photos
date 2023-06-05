class MymapstuffsController < ApplicationController
  before_action :set_mymapstuff, only: %i[ show edit update destroy autrenom supprimer ]
  protect_from_forgery except:[:autrenom,:supprimer]

  # GET /mymapstuffs or /mymapstuffs.json
  def autrenom
    @mymapstuff.update(title:params[:title])
    params[:action]="editstuff"
    render partial: "mypics/mypicmap", locals:{mypic:@mymapstuff.mypic}, layout: false

              end
    def supprimer
      @mypic=@mymapstuff.mypic
    @mymapstuff.destroy
    params[:action]="editstuff"
              render partial: "mypics/mypicmap", locals:{mypic:@mypic}, layout: false

                end
  def index
    @mymapstuffs = Mymapstuff.all
  end

  # GET /mymapstuffs/1 or /mymapstuffs/1.json
  def show
  end

  # GET /mymapstuffs/new
  def new
    @mymapstuff = Mymapstuff.new
  end

  # GET /mymapstuffs/1/edit
  def edit
  end

  # POST /mymapstuffs or /mymapstuffs.json
  def create
    @mymapstuff = Mymapstuff.new(mymapstuff_params)

    respond_to do |format|
      if @mymapstuff.save
        format.html { redirect_to mymapstuff_url(@mymapstuff), notice: "Mymapstuff was successfully created." }
        format.json { render :show, status: :created, location: @mymapstuff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mymapstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mymapstuffs/1 or /mymapstuffs/1.json
  def update
    respond_to do |format|
      if @mymapstuff.update(mymapstuff_params)
        format.html { redirect_to mymapstuff_url(@mymapstuff), notice: "Mymapstuff was successfully updated." }
        format.json { render :show, status: :ok, location: @mymapstuff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mymapstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mymapstuffs/1 or /mymapstuffs/1.json
  def destroy
    @mymapstuff.destroy

    respond_to do |format|
      format.html { redirect_to mymapstuffs_url, notice: "Mymapstuff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mymapstuff
      @mymapstuff = Mymapstuff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mymapstuff_params
      params.require(:mymapstuff).permit(:title, :x, :y, :mypic_id)
    end
end

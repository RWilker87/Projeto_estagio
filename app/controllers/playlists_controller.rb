class PlaylistsController < ApplicationController
  before_action :set_playlist, only: %i[ show edit update destroy ]

  # GET /playlists or /playlists.json
  def index
    @usuario = Usuario.find(params[:usuario_id])
    @playlists = @usuario.playlists
  end


  # GET /playlists/1 or /playlists/1.json
  def show
  end

  # GET /playlists/new
  def new
    @usuario = Usuario.find(params[:usuario_id])
    @playlist = @usuario.playlists.build
  end

  # GET /playlists/1/edit
  def edit
  end

  # POST /playlists or /playlists.json
  def create
    @usuario = Usuario.find(params[:usuario_id])
    @playlist = @usuario.playlists.build(playlist_params)

    if @playlist.save
      redirect_to @usuario, notice: "Playlist criada com sucesso!"
    else
      render :new
    end
  end

  # PATCH/PUT /playlists/1 or /playlists/1.json
  def update
    respond_to do |format|
      if @playlist.update(playlist_params)
        format.html { redirect_to playlist_url(@playlist), notice: "Playlist was successfully updated." }
        format.json { render :show, status: :ok, location: @playlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlists/1 or /playlists/1.json
  def destroy
    @playlist.destroy

    respond_to do |format|
      format.html { redirect_to playlists_url, notice: "Playlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
  def playlist_params
    params.require(:playlist).permit(:nome, :descricao, :usuario_id)
  end
end

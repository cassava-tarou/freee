class TalkRoomsController < ApplicationController
  before_action :set_talk_room, only: [:show, :edit, :update, :destroy]

  # GET /talk_rooms
  # GET /talk_rooms.json
  def index
    @talk_rooms = TalkRoom.all
  end

  # GET /talk_rooms/1
  # GET /talk_rooms/1.json
  def show
  end

  # GET /talk_rooms/new
  def new
    @talk_room = TalkRoom.new
  end

  # GET /talk_rooms/1/edit
  def edit
  end

  # POST /talk_rooms
  # POST /talk_rooms.json
  def create
    @talk_room = TalkRoom.new(talk_room_params)

    respond_to do |format|
      if @talk_room.save
        format.html { redirect_to @talk_room, notice: 'Talk room was successfully created.' }
        format.json { render :show, status: :created, location: @talk_room }
      else
        format.html { render :new }
        format.json { render json: @talk_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /talk_rooms/1
  # PATCH/PUT /talk_rooms/1.json
  def update
    respond_to do |format|
      if @talk_room.update(talk_room_params)
        format.html { redirect_to @talk_room, notice: 'Talk room was successfully updated.' }
        format.json { render :show, status: :ok, location: @talk_room }
      else
        format.html { render :edit }
        format.json { render json: @talk_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talk_rooms/1
  # DELETE /talk_rooms/1.json
  def destroy
    @talk_room.destroy
    respond_to do |format|
      format.html { redirect_to talk_rooms_url, notice: 'Talk room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_talk_room
      @talk_room = TalkRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def talk_room_params
      params.require(:talk_room).permit(:member)
    end
end

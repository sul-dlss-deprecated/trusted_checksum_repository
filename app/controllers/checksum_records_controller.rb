class ChecksumRecordsController < ApplicationController
  before_action :set_checksum_record, only: [:show, :update, :destroy]

  # GET /checksum_records
  # GET /checksum_records.json
  def index
    @checksum_records = ChecksumRecord.all
  end

  # GET /checksum_records/1
  # GET /checksum_records/1.json
  def show
  end

  # POST /checksum_records
  # POST /checksum_records.json
  def create
    @checksum_record = ChecksumRecord.new(checksum_record_params)

    if @checksum_record.save
      render :show, status: :created, location: @checksum_record
    else
      render json: @checksum_record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /checksum_records/1
  # PATCH/PUT /checksum_records/1.json
  def update
    if @checksum_record.update(checksum_record_params)
      render :show, status: :ok, location: @checksum_record
    else
      render json: @checksum_record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /checksum_records/1
  # DELETE /checksum_records/1.json
  def destroy
    @checksum_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checksum_record
      @checksum_record = ChecksumRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checksum_record_params
      params.require(:checksum_record).permit(:druid, :version, :moab_md5, :moab_sha1, :moab_sha256, :archive_md5, :archive_sha1, :archive_sha256)
    end
end

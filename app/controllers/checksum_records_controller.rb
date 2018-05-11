# API endpoint to create and read checksum data
class ChecksumRecordsController < ApplicationController
  before_action :set_checksum_record, only: [:show]

  def create
    @checksum_record = ChecksumRecord.new(checksum_record_params)

    if @checksum_record.save
      render :show, status: :created, location: @checksum_record
    else
      render json: @checksum_record.errors, status: :unprocessable_entity
    end
  end

  def show; end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_checksum_record
      @checksum_record = ChecksumRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checksum_record_params
      permitted_params = [
        :druid,
        :version,
        :moab_md5,
        :moab_sha1,
        :moab_sha256,
        :archive_md5,
        :archive_sha1,
        :archive_sha256
      ]
      # params.require(:checksum_record).permit(permitted_params)
      params.permit(permitted_params).to_unsafe_h
    end
end

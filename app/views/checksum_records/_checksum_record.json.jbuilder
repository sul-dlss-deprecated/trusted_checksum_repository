json.extract! checksum_record, :id, :druid, :version, :moab_md5, :moab_sha1, :moab_sha256, :archive_md5, :archive_sha1, :archive_sha256, :created_at, :updated_at
json.url checksum_record_url(checksum_record, format: :json)

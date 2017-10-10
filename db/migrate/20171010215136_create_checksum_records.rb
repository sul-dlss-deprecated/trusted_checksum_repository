class CreateChecksumRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :checksum_records do |t|
      t.string :druid, null: false, unique: true
      t.integer :version, null: false
      t.string :moab_md5
      t.string :moab_sha1
      t.string :moab_sha256
      t.string :archive_md5
      t.string :archive_sha1
      t.string :archive_sha256

      t.timestamps

#      add_index [:druid, :version], unique: true
    end

    add_index :checksum_records, [:druid, :version], unique: true
  end
end

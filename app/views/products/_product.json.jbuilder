json.extract! product, :id, :name, :description, :manufacturer_id, :barcode, :weight, :productgroup_id, :created_at, :updated_at
json.url product_url(product, format: :json)

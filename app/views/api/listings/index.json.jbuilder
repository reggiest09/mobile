json.array!(@listings) do |listing|
    json.extract! listing, :id, :name, :description, :price, :image_url
    
  end
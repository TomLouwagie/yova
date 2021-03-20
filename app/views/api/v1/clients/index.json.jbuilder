json.array! @clients do |client|
  json.extract! client, :id, :name, :notifications, :positions
end

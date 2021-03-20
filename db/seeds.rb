# Creating a first admin
u = User.create!(email: 'tom@yova.com', password: 'yovalogin')

# Creating two clients
c1 = Client.create!(name: "Investor GmbH")
c2 = Client.create!(name: "Financial Inc")

# Creating notifications
Notification.create!(user: u, client: c1, is_read: false, title: "First notification", content: "Welcome to Yova")
Notification.create!(user: u, client: c2, is_read: false, title: "First notification", content: "Welcome to Yova")
Notification.create!(user: u, client: c1, is_read: false, title: "Second notification", content: "Update from Yova")

# Creating positions
Position.create!(client: c1, value:100, name: "NVS")


u = User.create!(email: 'tom@yova.com', password: 'yovalogin')
c = Client.create!(name: "Investor GmbH")
Notification.create!(user: u, client: c, is_read: false, title: "First notification", content: "Welcome to Yova")

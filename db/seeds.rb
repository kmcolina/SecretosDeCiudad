admin = User.create(email: 'admin@admin.com', password: '123456', rol: 'admin')
admin.save!
guide = User.create(email: 'guide@guide.com', password: '123456', rol: 'guide')
guide.save!

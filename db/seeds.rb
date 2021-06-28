# frozen_string_literal: true

puts '############# Creatting dummy user data #############'
User.create([
              { name: 'John Smith', email: 'john.smith@example.com', password: 'password' },
              { name: 'Dee End', email: 'dee.end@example.com', password: 'password' },
              { name: 'Tiya Seyn', email: 'tiya.seyn@example.com', password: 'password' },
              { name: 'Max Floyad', email: 'max.floyad@example.com', password: 'password' },
              { name: 'Admin User', email: 'admin.user@example.com', password: 'password' }
            ])

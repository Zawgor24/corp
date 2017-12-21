# frozen_string_literal: true
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Corporation.create(name: 'LG', founded: DateTime.new(1966,2,3), founder: 'Koo In-hwoi',
                    revenue: 143, area_served: 'Worldwide', rating: 8)

Corporation.create(name: 'Samsung', founded: DateTime.new(1938,3,1), founder: 'Lee Byung-chul',
                    revenue: 305, area_served: 'Worldwide', rating: 9)

Corporation.create(name: 'Apple', founded: DateTime.new(1976,4,1), founder: 'Steve Jobs',
                    revenue: 229.234, area_served: 'Worldwide', rating: 8)
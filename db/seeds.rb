# frozen_string_literal: true

puts '############# Creatting dummy appointments data #############'
Appointment.create([
                     { appointment_date: '2021-07-01', appointment_time: '09:00' },
                     { appointment_date: '2021-07-01', appointment_time: '09:30' },
                     { appointment_date: '2021-07-01', appointment_time: '10:00' },
                     { appointment_date: '2021-07-01', appointment_time: '10:30' },
                     { appointment_date: '2021-07-01', appointment_time: '11:00' },
                     { appointment_date: '2021-07-02', appointment_time: '09:00' },
                     { appointment_date: '2021-07-02', appointment_time: '09:30' },
                     { appointment_date: '2021-07-02', appointment_time: '10:00' },
                     { appointment_date: '2021-07-02', appointment_time: '10:30' },
                     { appointment_date: '2021-07-02', appointment_time: '11:00' },
                     { appointment_date: '2021-07-03', appointment_time: '09:00' },
                     { appointment_date: '2021-07-03', appointment_time: '09:30' },
                     { appointment_date: '2021-07-03', appointment_time: '10:00' },
                     { appointment_date: '2021-07-03', appointment_time: '10:30' },
                     { appointment_date: '2021-07-03', appointment_time: '11:00' }
                   ])

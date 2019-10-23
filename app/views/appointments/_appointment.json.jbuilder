json.extract! appointment, :id, :appointment_id, :appointment_date, :physician_name_id, :patient_name_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)

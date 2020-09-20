json.extract! patient, :id, :account_number, :lname, :fname, :money_due, :money_paid, :total_due, :phone, :phone2, :phone3, :notes, :created_at, :updated_at
json.url patient_url(patient, format: :json)

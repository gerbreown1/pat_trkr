json.array!(@patients) do |patient|
  json.extract! patient, :lname, :fname, :DOB, :date
  json.url patient_url(patient, format: :json)
end
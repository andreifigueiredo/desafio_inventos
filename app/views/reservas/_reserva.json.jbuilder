json.extract! reserva, :id, :data_da_reserva, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)

class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :amount, :transaction_id
end

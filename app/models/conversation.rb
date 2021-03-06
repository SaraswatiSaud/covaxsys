class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy

  scope :between, -> (sender_id, recipient_id) do
    where("(conversations.sender_id = ? AND   conversations.recipient_id =?) OR (conversations.sender_id = ? AND conversations.recipient_id =?)", sender_id, recipient_id, recipient_id, sender_id)
  end
end

class Task < ApplicationRecord
  attribute :completed, :boolean, default: false

  def status
    completed ? "\u{1F44D} \u{1F44F} done! \u{1F44D} \u{1F44F}" : "\u{1F44E} \u{1F47F} not done yet... \u{1F44E} \u{1F47F}"
  end
end

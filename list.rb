class List < ApplicationRecord
  attachment :image

  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
  def change
    create_table :lists do |t|
      t.string :title
      t.string :body

      t.timestamps


    end
  end
end


class Pet < ApplicationRecord
  has_many :pet_histories, dependent: :destroy
  belongs_to :owner

  validates :name, :owner_id, presence: true
  
  

  def history_count
    self.pet_histories.count
  end

  def avg_weight
    if self.history_count > 0
      
      temp_sum = 0
      self.pet_histories.each do |w|
        temp_sum += w.weight
      end

      return (temp_sum / self.history_count).round(2)

    else
      return 0
    end
    
  end

  def avg_height
    if self.history_count > 0
      
      temp_sum = 0
      self.pet_histories.each do |d|
        temp_sum += d.heigth
      end

      return (temp_sum / self.history_count).round(2)

    else
      return 0
    end
  end

  def max_weight
    max = 0
    self.pet_histories.each do |w|
      if w.weight > max
        max = w.weight
      end
    end

    return max.round(2)
    
  end

  def max_height
    max = 0
    self.pet_histories.each do |h|
      if h.heigth > max
        max = h.heigth
      end
    end

    return max.round(2)
  end

end

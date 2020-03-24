module ApplicationHelper
  def muscle_action_label(num)
    num.zero? ? "※動作前" : "※動作後"
  end

  def select_muscle_image_label(num)
    "#{muscle_action_label(num)}の筋肉を選択してください"
  end
end

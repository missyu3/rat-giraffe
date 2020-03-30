module PropertyHelper
  def button_display
    if action_name == "new"
      "登録する"
    else
      "更新する"
    end
  end
end

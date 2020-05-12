class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end


# editアクションでは必要になるインスタンス変数はないので、
# アクションを定義するだけで大丈夫です。

# Userモデルの更新を行うupdateアクションは、保存できた場合、
# できなかった場合で処理を分岐しています。

# updateできた場合は「true」が、できなかった場合は「false」が返り値として戻ってきます。
# それを利用して、if文での分岐ができます。

# 今回の場合は、current_user.updateに成功した場合、rootにリダイレクトし、
# 失敗した場合、editのビューを再度描画する、という記述になっています。



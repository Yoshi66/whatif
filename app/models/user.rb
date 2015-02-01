class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts, dependent: :destroy
  def feed
    # このコードは準備段階です。
    # 完全な実装は第11章「ユーザーをフォローする」を参照してください。
    Post.where("user_id = ?", id)
  end
end

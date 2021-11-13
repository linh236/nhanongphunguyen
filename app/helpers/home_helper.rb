module HomeHelper
  def count_liked array_likes
    count = 0;
    array_likes.map { |p| count += 1 if p.status?}
    return count
  end

  def active_liked array_likes, user_id
    array_likes.each do |like|
      if like.user_id == user_id && like.status?
        return 'active'
      else
        return 'not-active'
      end
    end
  end

end

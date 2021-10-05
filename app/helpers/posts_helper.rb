module PostsHelper
    def isShowImage attachment
        if attachment.blob.content_type.include?('image')
            return true;
        else
            return false
        end
    end
end

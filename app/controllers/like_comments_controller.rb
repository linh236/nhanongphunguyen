class LikeCommentsController < ApplicationController
  before_action :set_like_comment, only: %i[ show edit update destroy ]

  # GET /like_comments or /like_comments.json
  def index
    @like_comments = LikeComment.all
  end

  # GET /like_comments/1 or /like_comments/1.json
  def show
  end

  # GET /like_comments/new
  def new
    @like_comment = LikeComment.new
  end

  # GET /like_comments/1/edit
  def edit
  end

  # POST /like_comments or /like_comments.json
  def create
    @like_comment = LikeComment.new(like_comment_params)

    respond_to do |format|
      if @like_comment.save
        format.html { redirect_to @like_comment, notice: "Like comment was successfully created." }
        format.json { render :show, status: :created, location: @like_comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @like_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /like_comments/1 or /like_comments/1.json
  def update
    respond_to do |format|
      if @like_comment.update(like_comment_params)
        format.html { redirect_to @like_comment, notice: "Like comment was successfully updated." }
        format.json { render :show, status: :ok, location: @like_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @like_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /like_comments/1 or /like_comments/1.json
  def destroy
    @like_comment.destroy
    respond_to do |format|
      format.html { redirect_to like_comments_url, notice: "Like comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like_comment
      @like_comment = LikeComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def like_comment_params
      params.require(:like_comment).permit(:comment_id, :user_id)
    end
end

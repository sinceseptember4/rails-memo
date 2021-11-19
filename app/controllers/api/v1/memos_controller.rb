module Api
    module V1
      class MemosController < ApplicationController
        before_action :set_memo, only: [:show, :update, :destroy]
  
        def index
          memos = Memo.order(created_at: :desc)
          render json: { status: 'SUCCESS', message: 'Loaded posts', data: memos }
        end
  
        def show
          render json: { status: 'SUCCESS', message: 'Loaded the post', data: @memo }
        end
  
        def create
          memo = Memo.new(memo_params)
          if memo.save
            render json: { status: 'SUCCESS', data: memo }
          else
            render json: { status: 'ERROR', data: memo.errors }
          end
        end
  
        def destroy
          @memo.destroy
          render json: { status: 'SUCCESS', message: 'Deleted the post', data: @memo }
        end
  
        def update
          if @memo.update(memo_params)
            render json: { status: 'SUCCESS', message: 'Updated the post', data: @memo }
          else
            render json: { status: 'SUCCESS', message: 'Not updated', data: @memo.errors }
          end
        end
  
        private
  
        def set_memo
          @memo = Memo.find(params[:id])
        end
  
        def memo_params
            params.permit(:title ,:text)
        end
      end
    end
  end
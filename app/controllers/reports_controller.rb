class ReportsController < ApplicationController
    before_action :authenticate_user!
 
    def index
        @reports = Report.all
    end

    def new
        @report = Report.new
      end
    
    def create
      report = Report.new(report_params)
      report.user_id = current_user.id 
      if report.save!
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
    end

    def show
      @report = Report.find(params[:id])
    end
    
    def edit
      @report = Report.find(params[:id])
    end

    def update
      report = Report.find(params[:id])
      if report.update(report_params)
        redirect_to :action => "show", :id => report.id
      else
        redirect_to :action => "new"
      end 
    end
    
    def destroy
      report = Report.find(params[:id])
      report.destroy
      redirect_to action: :index
    end
    
  private
  def report_params
    params.require(:report).permit(:title, :about, :day, :image, :start_time, :content)
  end
end

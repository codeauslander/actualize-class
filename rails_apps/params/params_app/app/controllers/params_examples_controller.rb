class ParamsExamplesController < ApplicationController
   def query_params_method
    input_message = params["my_message"]
    input_message_2 = params[:my_message_2]

    if input_message == 'hello'
      output_message = "Hello back to you"
    else
      output_message = 'Shut up, go away'
    end

    render json:{
      message:input_message + " " + output_message,
      message_2:input_message_2
    }
  end
  def segment_params_method
    input_message = params[:this_is_a_variable]
    input_message_2 = params[:coffee]
    render json:{
      variable:input_message,
      second:input_message_2
    }
  end
end

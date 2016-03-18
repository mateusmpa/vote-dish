module ApplicationHelper
  def formatted_value(number)
    number_to_currency number,
    unit: 'R$',
    separator: ',',
    delimiter: '.'
  end

  def new_comment(commentable)
    render partial: 'comments/new_comment',
           locals: { commentable: commentable }
  end
end

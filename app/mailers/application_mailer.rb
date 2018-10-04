class ApplicationMailer < ActionMailer::Base
  default from: 'andreipaesfigueiredo@gmail.com'
  layout 'mailer'

  add_template_helper(ApplicationHelper)
end

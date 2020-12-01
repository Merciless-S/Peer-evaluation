Rails.application.routes.draw do
  get 'team/getAllTeams'
  get 'admin/getAdmin'
  get 'admin/postAdmin'
  get 'score/postScore'
  get 'score/getByGrader'
  get 'score/getByTeammate'
  get 'student/postStudent'
  get 'student/deleteStudent'
  get 'student/getByGroupnum'
  get 'student/getByBuckid'
  get 'student/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

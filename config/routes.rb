Rails.application.routes.draw do
  
  #첫 페이지를 인덱스 페이지로 설정
  root :to => "home#input"
  
  # 개별적 라우트 처리
  # get 'home/input'
  # post 'home/output'
  # get 'home/delete'
  
  #상단 영령어와 같은 명령어이나 보안에 취약
  match ":controller(/:action(/:id))", :via => [:post, :get]
  
end

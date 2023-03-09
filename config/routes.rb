# frozen_string_literal: true

Rails.application.routes.draw do
  resources :payloads, only: :create
end

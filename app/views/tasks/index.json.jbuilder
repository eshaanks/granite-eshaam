# frozen_string_literal: true

json.tasks do
  json.pending @pending_tasks do |pending_task|
    json.id pending_task.id
    json.title pending_task.title
    json.slug pending_task.slug
    json.progress pending_task.progress
    json.assigned_user do
      json.extract! pending_task.assigned_user,
        :id,
        :name
    end
  end

  json.completed @completed_tasks
end

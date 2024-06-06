json.extract! task, :id, :name, :description, :finished, :due_date, :priority, :member_id, :created_at, :updated_at
json.url task_url(task, format: :json)

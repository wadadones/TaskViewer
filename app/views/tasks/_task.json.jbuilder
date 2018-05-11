json.extract! task, :id, :name, :done, :plan, :planTime, :results, :resultsTime, :created_at, :updated_at
json.url task_url(task, format: :json)

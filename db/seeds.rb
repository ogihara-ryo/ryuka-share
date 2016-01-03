AssignedSchedulesRelation.delete_all
AssignedSchedulesRelation.connection.execute(%|SELECT setval ('assigned_schedules_relations_id_seq', 1, false)|)
MessagesRelation.delete_all
MessagesRelation.connection.execute(%|SELECT setval ('messages_id_seq', 1, false)|)
AssignedTasksRelation.delete_all
AssignedTasksRelation.connection.execute(%|SELECT setval ('assigned_tasks_relations_id_seq', 1, false)|)
Schedule.delete_all
Schedule.connection.execute(%|SELECT setval ('schedules_id_seq', 1, false)|)
Message.delete_all
Message.connection.execute(%|SELECT setval ('messages_id_seq', 1, false)|)
Task.delete_all
Task.connection.execute(%|SELECT setval ('tasks_id_seq', 1, false)|)
TaskCategory.delete_all
TaskCategory.connection.execute(%|SELECT setval ('task_categories_id_seq', 1, false)|)
Topic.delete_all
Topic.connection.execute(%|SELECT setval ('topics_id_seq', 1, false)|)
TopicCategory.delete_all
TopicCategory.connection.execute(%|SELECT setval ('topic_categories_id_seq', 1, false)|)
Profile.delete_all
Profile.connection.execute(%|SELECT setval ('profiles_id_seq', 1, false)|)
Group.delete_all
Group.connection.execute(%|SELECT setval ('groups_id_seq', 1, false)|)
User.delete_all
User.connection.execute(%|SELECT setval ('users_id_seq', 1, false)|)

1.upto(10) do |i|
  User.create(signin_id: "ユーザー#{i}", password: 'password')
end
User.first.update(admin: true)

1.upto(4) do |i|
  Group.create(name: "グループ#{i}")
end

1.upto(10) do |i|
  Profile.create(
    last_name: "名前#{i}",
    first_name: "苗字#{i}",
    email: "email#{i}@example.com",
    telephone: "#{i}",
    user: User.find(i)
  )
end

1.upto(3) do |i|
  TopicCategory.create(name: "トピックカテゴリー#{i}")
end

1.upto(10) do |i|
  Topic.create(
    title: "タイトル#{i}",
    content: "コンテンツ#{i}",
    author: User.find(i),
    category: TopicCategory.find((i / 4) + 1)
  )
end

1.upto(3) do |i|
  TaskCategory.create(name: "タスクカテゴリー#{i}")
end

1.upto(5) do |i|
  Task.create(
    title: "タイトル#{i}",
    description: "内容#{i}",
    author: User.find(i),
    category: TaskCategory.find((i / 4) + 1),
    assigns: [User.find(i), User.find(i + 1)]
  )
end

1.upto(5) do |i|
  Message.create(
    title: "タイトル#{i}",
    from_user_id: User.find(i).id,
    to: [User.find(i), User.find(i + 1)]
  )
end

1.upto(5) do |i|
  Schedule.create(
    title: "タイトル#{i}",
    start: Time.zone.now,
    end: Time.zone.now + i,
    description: "内容#{i}",
    author: User.find(i),
    assigns: [User.find(i), User.find(i + 1)]
  )
end

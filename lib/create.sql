CREATE TABLE projects (id INTEGER PRIMARY KEY,
  title TEXT,
  category TEXT,
  funding_goal INTEGER,
  start_date DATETIME,
  end_date DATETIME);

CREATE TABLE users (id INTEGER PRIMARY KEY,
  name TEXT,
  age INT);

  CREATE TABLE pledges (id INTEGER PRIMARY KEY,
  amount INTEGER,
  user_id INTEGER,
  project_id INTEGER,
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(project_id) REFERENCES projects(id));

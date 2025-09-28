--create_relations.sql

--add primary key to each table



--add unique constraints to columns that will be used as foreign key targets

ALTER TABLE authors ADD CONSTRAINT unique_author_name  UNIQUE (name);
ALTER TABLE subreddits ADD CONSTRAINT unique_subreddit_name UNIQUE (name);
ALTER TABLE  submissions ADD CONSTRAINT unique_submission_name  UNIQUE (name);


--add foreign key relationship


-- It will change the author field to NULL If author is deleted
ALTER TABLE submissions ADD FOREIGN KEY (author) REFERENCES authors(name) ON DELETE  SET NULL;
ALTER TABLE  comments ADD FOREIGN KEY (author) REFERENCES authors(name) ON DELETE SET NULL;


--link submissions & comments to  subreddit

ALTER TABLE submissions  ADD FOREIGN KEY (subreddit_id) REFERENCES subreddits(name) ON DELETE CASCADE;
ALTER TABLE comments ADD FOREIGN KEY (subreddit_id) REFERENCES  subreddits(name) ON DELETE CASCADE;


--link a comment to its parent submission


CREATE INDEX idx_comments_author   ON comments (author);
CREATE INDEX idx_comments_subreddit_id ON  comments (subreddit_id);
CREATE INDEX idx_subreddits_type ON subreddits  (subreddit_type) ;
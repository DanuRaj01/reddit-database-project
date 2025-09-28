-- COPY.sql


BEGIN;

\echo 'Loading subreddits...'
\COPY subreddits(banner_background_image, created_utc, description, display_name, header_img, hide_ads, id, over_18, public_description, retrieved_utc, name, subreddit_type, subscribers, title, whitelist_status) FROM './subreddits.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8');

\echo 'Loading authors...'
\COPY authors(id, retrieved_on, name, created_utc, link_karma, comment_karma, profile_img, profile_color, profile_over_18) FROM './authors.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8');

\echo 'Loading submissions...'
\COPY submissions(downs, url, id, edited, num_reports, created_utc, name, title, author, permalink, num_comments, likes, subreddit_id, ups) FROM './submissions.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8');

\echo 'Loading comments...'
\COPY comments(distinguished, downs, created_utc, controversiality, edited, gilded, author_flair_css_class, id, author, retrieved_on, score_hidden, subreddit_id, score, name, author_flair_text, link_id, archived, ups, parent_id, subreddit, body) FROM './comments.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8');

COMMIT;

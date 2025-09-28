--create_tables.sql
--drop tables if they exist to avoid duplicate errors
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS submissions;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS subreddits;


--subreddits table


CREATE TABLE subreddits (
    id text PRIMARY KEY,
    banner_background_image text,
    created_utc integer,
    description text,
    display_name text,
    header_img text,
    hide_ads boolean,
    over_18 boolean,
    public_description text,
    retrieved_utc integer,
    name text,
    subreddit_type text,
    subscribers integer,
    title text,
    whitelist_status text
);


--authors table


CREATE TABLE authors (
    id text PRIMARY KEY,
    retrieved_on integer,
    name text UNIQUE,
    created_utc integer,
    link_karma integer,
    comment_karma integer,
    profile_img text,
    profile_color text,
    profile_over_18 boolean
);


--submissions table 


CREATE TABLE submissions (
    id text PRIMARY KEY,
    downs integer,
    url text,
    edited boolean,
    num_reports integer,
    created_utc integer,
    name text UNIQUE,
    title text,
    author text,
    permalink text,
    num_comments integer,
    likes boolean,
    subreddit_id text,
    ups integer
);


--comments table 


CREATE TABLE comments (
    id text PRIMARY KEY,
    distinguished text,
    downs integer,
    created_utc integer,
    controversiality integer,
    edited boolean,
    gilded integer,
    author_flair_css_class text,
    author text,
    retrieved_on integer,
    score_hidden boolean,
    subreddit_id text,
    score integer,
    name text UNIQUE,
    author_flair_text text,
    link_id text,
    archived boolean,
    ups integer,
    parent_id text,
    subreddit text,
    body text
);
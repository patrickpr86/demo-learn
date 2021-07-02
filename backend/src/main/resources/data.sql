INSERT INTO user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO course (name, img_uri, img_gray_uri) VALUES ('Bootcamp GO', 'https://storage.ning.com/topology/rest/1.0/file/get/8170567668?profile=RESIZE_710x', 'https://www.programmersought.com/images/892/768c04585a653ddef26cb15758166bac.png');

INSERT INTO offer (edition, start_moment, end_moment, course_id) VALUES('1.0', TIMESTAMP WITH TIME ZONE '2020-01-01T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-01-01T03:00:00Z', 1);
INSERT INTO offer (edition, start_moment, end_moment, course_id) VALUES('2.0', TIMESTAMP WITH TIME ZONE '2021-01-01T03:00:00Z', TIMESTAMP WITH TIME ZONE '2022-01-01T03:00:00Z', 1);

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

INSERT INTO offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-01-01T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-01-01T03:00:00Z', 1);
INSERT INTO offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-01-01T03:00:00Z', TIMESTAMP WITH TIME ZONE '2022-01-01T03:00:00Z', 1);

INSERT INTO resource (title, description, position, img_uri, type, offer_id) VALUES('Trilha GO', 'Trilha principal do curso', 1, 'https://storage.ning.com/topology/rest/1.0/file/get/8170567668?profile=RESIZE_710x', 1, 1);
INSERT INTO resource (title, description, position, img_uri, type, offer_id) VALUES('Forum', 'Forum da comunidade', 2, 'https://storage.ning.com/topology/rest/1.0/file/get/8170567668?profile=RESIZE_710x', 2, 1);
INSERT INTO resource (title, description, position, img_uri, type, offer_id) VALUES('Trilha GO', 'Trilha principal do curso', 3, 'https://storage.ning.com/topology/rest/1.0/file/get/8170567668?profile=RESIZE_710x', 0, 1);

INSERT INTO section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 1', 'Introdu????o ao cap??tulo 1', 1, 'https://storage.ning.com/topology/rest/1.0/file/get/8170567668?profile=RESIZE_710x', 1, null );
INSERT INTO section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 2', 'Introdu????o ao cap??tulo 2', 1, 'https://storage.ning.com/topology/rest/1.0/file/get/8170567668?profile=RESIZE_710x', 1, 1 );
INSERT INTO section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 3', 'Introdu????o ao cap??tulo 3', 1, 'https://storage.ning.com/topology/rest/1.0/file/get/8170567668?profile=RESIZE_710x', 1, 2 );

INSERT INTO enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-01-01T10:00:00Z', null, true, false);
INSERT INTO enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-01-01T11:00:00Z', null, true, false);


INSERT INTO lesson (title, position, section_id) VALUES ('Aula 1 do cap??tulo 1', 1, 1);
INSERT INTO content (id, text_content, video_uri) VALUES (1, 'Material de apoio: material go', 'https://www.youtube.com/watch?v=c6h5eR0TvfU');

INSERT INTO lesson (title, position, section_id) VALUES ('Aula 2 do cap??tulo 1', 2, 1);
INSERT INTO content (id, text_content, video_uri) VALUES (2, 'Material de apoio: material go', 'https://www.youtube.com/watch?v=c6h5eR0TvfU');

INSERT INTO lesson (title, position, section_id) VALUES ('Aula 3 do cap??tulo 1', 3, 1);
INSERT INTO content (id, text_content, video_uri) VALUES (3, 'Material de apoio: material go', 'https://www.youtube.com/watch?v=c6h5eR0TvfU');

INSERT INTO lesson (title, position, section_id) VALUES ('Tarefa do cap??tulo 1', 4, 1);
INSERT INTO task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Entregar CRUD completo', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-01-10T10:00:00Z' );

INSERT INTO lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
INSERT INTO lessons_done (lesson_id, user_id, offer_id) VALUES (3, 1, 3);



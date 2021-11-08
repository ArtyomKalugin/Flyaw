INSERT INTO source(name) VALUES ('Natural magazine');
INSERT INTO source(name) VALUES ('Medicine');
INSERT INTO source(name) VALUES ('Nuclear reactions');

INSERT INTO topic(source_id, topic) VALUES (9, 'Nuclear reactions');
INSERT INTO topic(source_id, topic) VALUES (10, 'Wild animals');
INSERT INTO topic(source_id, topic) VALUES (11, 'Drugs');

INSERT INTO author(nickname, first_name, second_name) VALUES ('Mad.Max', 'Artem', 'Kalugin');
INSERT INTO author(nickname, first_name, second_name) VALUES ('Gackpot', 'Gosha', 'Ruzavin');
INSERT INTO author(nickname, first_name, second_name) VALUES ('SpaceX', 'Ilon', 'Mask');
INSERT INTO author(nickname, first_name, second_name) VALUES ('Star', 'Paul', 'Stanly');

INSERT INTO source_author(source_id, author_id) VALUES (9, 9);
INSERT INTO source_author(source_id, author_id) VALUES (9, 10);
INSERT INTO source_author(source_id, author_id) VALUES (10, 11);
INSERT INTO source_author(source_id, author_id) VALUES (11, 12);

INSERT INTO article(topic_id, author_id, text) VALUES (11, 11, '".... Поручили очередной проект. На этот раз он был связан с финансовыми операциями клиентов и биллингом. Тема новая для меня, но это не первый "новый" проект, и скажу прямо - у меня новизна вызывала раздвоенные чувства: страх и мотивацию. Страх был связан с тем, что боялась накосячить. Ну а мотивация была от того, что я узнаю и научусь новому.

Итак, проект был начат. Цель я понимала, составила Гаант диаграмму, и побежала выполнять. Частенько приходилось обращаться к начальнику за помощью, местами было сложно, иногда ошибалась, но в целом вроде справлялась.

Спустя 2 месяца ко мне пришел начальник и сказал, чтобы я передала проект Ларисе (проектному менеджеру с соседнего отдела). На мой вопрос: "А что случилось?", он сказал, что я не справилась и что не хочет рисковать проектом, так как он очень важен. Вместо него он мне дал другой проект, наподобие тех, которые я делала раньше... ."');
INSERT INTO article(topic_id, author_id, text) VALUES (10, 10, 'Иногда в сети можно встретить комментарии о том, что в наших магазинах на консультантов в торговых залах приходится охотиться. Якобы, в нужный момент их не оказывается рядом и покупатель остается с незнакомым ему товаром один на один.

Мы решили бросить вызов этому недугу и сделали мобильное приложение М.Видео еще полезнее - через него совсем скоро можно будет вызывать продавца в то место в магазине, где вы стоите.');
INSERT INTO article(topic_id, author_id, text) VALUES (12, 12, 'Вас ждет множество новых фич: новые модели в ModelHub (включая модели для обнаружения объектов и распознавания лиц), возможность дообучать модели распознавания изображений, экспортированные из Keras и PyTorch в ONNX, экспериментальный высокоуровневый API для распознавания изображений и множество новых слоев, добавленных контрибьюторами. Также KotlinDL теперь доступен в Maven Central.');

INSERT INTO article_author(article_id, author_id) VALUES (4, 10);
INSERT INTO article_author(article_id, author_id) VALUES (5, 11);
INSERT INTO article_author(article_id, author_id) VALUES (6, 12);

INSERT INTO users(nickname, admin) VALUES ('ARTEM', true);
INSERT INTO users(nickname, admin) VALUES ('korona', false);
INSERT INTO users(nickname, admin) VALUES ('tjk', false);
INSERT INTO users(nickname, admin) VALUES ('alina', false);
--
INSERT INTO comment(article_id, user_id, text) VALUES (4, 1, 'KRUTO');
INSERT INTO comment(article_id, user_id, text) VALUES (4, 3, 'very interesting');
INSERT INTO comment(article_id, user_id, text) VALUES (5, 2, 'good');
INSERT INTO comment(article_id, user_id, text) VALUES (6, 4, 'amazing');

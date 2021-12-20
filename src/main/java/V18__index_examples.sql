-- для быстрого доступа к статьям по их тексту
CREATE INDEX trg_idx_article_texts ON article USING hash(text);

-- для отсортированного вывода статей по id их тем
CREATE INDEX article_topic ON article USING btree(topic_id);

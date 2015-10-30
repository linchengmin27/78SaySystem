ALTER TABLE `Comment` ADD articleId BIGINT COMMENT '文章Id';

--2015-10-30 10:09:57
UPDATE `Category` SET url='wonder/news/index.action' WHERE id=30;
UPDATE `Category` SET url='wonder/picture/index.action' WHERE id=31;

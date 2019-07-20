SELECT *
FROM flipkart;

SELECT *
FROM amazon;

SELECT *
FROM goodreads;

alter table goodreads alter column isbn10 type varchar USING isbn10::varchar;
alter table flipkart alter column isbn10 type varchar USING isbn10::varchar;
alter table amazon alter column isbn10 type varchar USING isbn10::varchar;

SELECT flipkart.isbn10, flipkart.flipkart_rating, amazon.amazon_rating
FROM flipkart
JOIN amazon ON
flipkart.isbn10 = amazon.isbn10;

SELECT *
FROM goodreads
WHERE goodreads.goodreads_rating > 3;

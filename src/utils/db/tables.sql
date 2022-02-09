-- DROP TABLE IF EXISTS product;
-- DROP TABLE IF EXISTS review;


CREATE TABLE IF NOT EXISTS
 products(
    product_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    product_name VARCHAR(100) NOT NULL,
    product_description VARCHAR(400)  ,
    product_brand VARCHAR(30) NOT NULL, 
    image_url TEXT NOT NULL DEFAULT 'https://picsum.photos/id/237/200/300',
    price TEXT NOT NULL,
    category TEXT NOT NULL,
    crated_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
    );

CREATE TABLE IF NOT EXISTS
reviews(
    review_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    review_comment VARCHAR(250),
    product_rate INTEGER NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
    );
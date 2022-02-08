CREATE TABLE IF NOT EXISTS
    product(
    product_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    product_name VARCHAR(100) NOT NULL,
    product_description VARCHAR(400) DEFAULT('https://picsum.photos/id/237/200/300'),
    product_brand VARCHAR(30) NOT NULL, 
    image_url NOT NULL 
    price NOT NULL
    category NOT NULL
    crated_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    )
    -- review(
    --     review_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY
    --     review_comment VARCHAR(250)
    --     rate: INTEGER NOT NULL
    --     product_id: 5d318e1a8541744830bef139, // NOT NUL
    --     createdAt: 2019-08-01T12:46:45.895Z // SERVER GENERATED
    -- )
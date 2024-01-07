-- migrate:up
CREATE TABLE real_estate_vectors (
    property_id uuid PRIMARY KEY,
    embedding vector(9),
    FOREIGN KEY (property_id) REFERENCES real_estate_properties (id)
);

-- migrate:down

DROP TABLE IF EXISTS real_estate_vectors;

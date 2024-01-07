-- migrate:up

CREATE TABLE real_estate_properties (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    created_at timestamptz DEFAULT NOW(),
    updated_at timestamptz DEFAULT NOW(),
    name VARCHAR(255),
    url VARCHAR(255),
    floor_size_value NUMERIC(10, 2),
    address_locality VARCHAR(255),
    address_region VARCHAR(255),
    address_postal_code VARCHAR(20),
    geo_latitude NUMERIC(10, 6),
    geo_longitude NUMERIC(10, 6),
    rooms INTEGER,
    bead_rooms INTEGER,
    bathroom INTEGER,
    shower_room INTEGER,
    price NUMERIC(10, 2),
    price_m2 NUMERIC(10, 2),
    dpe VARCHAR(1),
    ges VARCHAR(1)
);
-- migrate:down

DROP TABLE IF EXISTS real_estate_properties;
CREATE TABLE users (
    id          BIGSERIAL PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    email       VARCHAR(255) UNIQUE NOT NULL,
    role        VARCHAR(50) DEFAULT 'user',
    active      BOOLEAN DEFAULT TRUE,
    created_at  TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at  TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_users_email ON users (email);
CREATE INDEX idx_users_active ON users (active) WHERE active = TRUE;

INSERT INTO users (name, email, role)
VALUES
    ('Alice Johnson', 'alice@example.com', 'admin'),
    ('Bob Smith', 'bob@example.com', 'user'),
    ('Charlie Brown', 'charlie@example.com', 'viewer');

-- Active users with their most recent login
SELECT
    u.id,
    u.name,
    u.email,
    u.role,
    MAX(s.logged_in_at) AS last_login
FROM users u
LEFT JOIN sessions s ON s.user_id = u.id
WHERE u.active = TRUE
  AND u.created_at >= NOW() - INTERVAL '90 days'
GROUP BY u.id, u.name, u.email, u.role
HAVING COUNT(s.id) > 0
ORDER BY last_login DESC
LIMIT 50;

-- Update inactive users
UPDATE users
SET active = FALSE,
    updated_at = NOW()
WHERE id IN (
    SELECT u.id
    FROM users u
    LEFT JOIN sessions s ON s.user_id = u.id
    WHERE s.logged_in_at < NOW() - INTERVAL '180 days'
       OR s.id IS NULL
);

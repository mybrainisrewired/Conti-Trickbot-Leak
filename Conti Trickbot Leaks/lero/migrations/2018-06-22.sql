ALTER TABLE links
   ADD COLUMN client_ver integer NOT NULL DEFAULT 0;

-- Column: ip

-- ALTER TABLE links DROP COLUMN ip;

ALTER TABLE links ADD COLUMN ip inet;
ALTER TABLE links ALTER COLUMN ip SET NOT NULL;
ALTER TABLE links ALTER COLUMN ip SET DEFAULT '0.0.0.0/0'::inet;

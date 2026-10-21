-- Migration 002: B-Tree and GiST Indexes for Sub-Millisecond Scans
CREATE INDEX IF NOT EXISTS idx_smartpark_status ON smartpark_entities (status);
CREATE INDEX IF NOT EXISTS idx_smartpark_cat_status ON smartpark_entities (category, status);
CREATE INDEX IF NOT EXISTS idx_smartpark_lease_expires ON smartpark_leases (entity_id, expires_at) WHERE released = FALSE;

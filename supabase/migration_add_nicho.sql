-- =============================================
-- Migração: adiciona nicho e bairro à tabela leads_ibge
-- Execute no SQL Editor: https://app.supabase.com
-- =============================================

ALTER TABLE leads_ibge ADD COLUMN IF NOT EXISTS nicho TEXT;
ALTER TABLE leads_ibge ADD COLUMN IF NOT EXISTS bairro TEXT;

-- Índices para filtros
CREATE INDEX IF NOT EXISTS idx_leads_ibge_nicho  ON leads_ibge(nicho);
CREATE INDEX IF NOT EXISTS idx_leads_ibge_bairro ON leads_ibge(bairro);

SELECT 'Migração concluída: colunas nicho e bairro adicionadas.' AS resultado;

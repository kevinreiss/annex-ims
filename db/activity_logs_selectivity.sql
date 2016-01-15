select
  count(*) records,
  count(distinct id) id,
  count(distinct action) actions,
  count(distinct action_timestamp) action_timestamp,
  count(distinct username) username,
  count(distinct user_id) user_id,
  count(distinct created_at) created_at,
  count(distinct updated_at) updated_at,
  count(data->'item') items,
  count(distinct data->'item'->>'id') item_id,
  count(distinct data->'item'->>'chron') item_chron,
  count(distinct data->'item'->>'title') item_title,
  count(distinct data->'item'->>'author') item_author,
  count(distinct data->'item'->>'bin_id') item_bin_id,
  count(distinct data->'item'->>'status') item_status,
  count(distinct data->'item'->>'barcode') item_barcode,
  count(distinct data->'item'->>'tray_id') item_tray_id,
  count(distinct data->'item'->>'isbn_issn') item_isbn_issn,
  count(distinct data->'item'->>'thickness') item_thickness,
  count(distinct data->'item'->>'bib_number') item_bib_number,
  count(distinct data->'item'->>'conditions') item_conditions,
  count(distinct data->'item'->>'created_at') item_created_at,
  count(distinct data->'item'->>'updated_at') item_updated_at,
  count(distinct data->'item'->>'call_number') item_call_number,
  count(distinct data->'item'->>'last_ingest') item_last_ingest,
  count(distinct data->'item'->>'initial_ingest') item_initial_ingest,
  count(distinct data->'item'->>'metadata_status') item_metadata_status,
  count(distinct data->'item'->>'metadata_updated_at') item_metadata_updated_at,
  count(data->'tray') trays,
  count(distinct data->'tray'->>'id') tray_id,
  count(distinct data->'tray'->>'barcode') tray_barcode,
  count(distinct data->'tray'->>'shelved') tray_shelved,
  count(distinct data->'tray'->>'shelf_id') tray_shelf_id,
  count(distinct data->'tray'->>'created_at') tray_created_at,
  count(distinct data->'tray'->>'updated_at') tray_updated_at,
  count(data->'shelf') shelves,
  count(distinct data->'shelf'->>'id') shelf_id,
  count(distinct data->'shelf'->>'size') shelf_size,
  count(distinct data->'shelf'->>'barcode') shelf_barcode,
  count(distinct data->'shelf'->>'created_at') shelf_created_at,
  count(distinct data->'shelf'->>'updated_at') shelf_updated_at,
  count(data->'api_response') api_responses,
  count(distinct data->'api_response'->>'body') api_response_body,
  count(distinct data->'api_response'->>'status_code') api_response_status_code,
  count(data->'requests') requests
from activity_logs;
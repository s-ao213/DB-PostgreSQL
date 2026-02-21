SELECT
    i.item_id AS i_id,
    i.name AS item_name,
    c1.qty AS Marvin,
    c2.qty AS Jack,
    c3.qty AS Alice,
    i.description
FROM
    x_items AS i
    -- 理解不能諦め
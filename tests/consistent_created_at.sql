SELECT * FROM 
{{ ref('fct_reviews')}} FCT

INNER JOIN {{ref('dim_listings_cleansed')}} DIM
ON FCT.LISTING_ID = DIM.LISTING_ID

WHERE FCT.REVIEW_DATE < DIM.CREATED_AT
LIMIT 1
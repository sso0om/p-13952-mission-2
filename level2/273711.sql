-- 업그레이드 된 아이템 구하기
SELECT CI.ITEM_ID,
       CI.ITEM_NAME,
       CI.RARITY
FROM ITEM_INFO PI
INNER JOIN ITEM_TREE IT
ON PI.ITEM_ID = IT.PARENT_ITEM_ID
INNER JOIN ITEM_INFO CI
ON IT.ITEM_ID = CI.ITEM_ID
WHERE PI.RARITY = 'RARE'
ORDER BY CI.ITEM_ID DESC;
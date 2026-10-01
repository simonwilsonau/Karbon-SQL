/* 
This query returns the user_id which can support WHERE statements in queries for timehseets, wip, and client staff.
The user profile and settings in Karbon can be located at https://app2.karbonhq.com/users/<user_id>
*/

SELECT DISTINCT
    USER_NAME,
    USER_ID,
    STATUS AS USER_STATUS,
    CONCAT('https://app2.karbonhq.com/users/', USER_ID) AS USER_PROFILE_URL
    
FROM
        DIMN_USER
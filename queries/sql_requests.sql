USE airport;

-- Таблиця кількості пілотів що можуть керувати різними моделями літаків
SELECT COUNT(*),model_can_fly  FROM  pilots
GROUP BY model_can_fly ;

-- обчислення кількості місць при оптимальному використанні пілотів
SELECT sum(seats_for_now) as final_answer from
(SELECT boing_count*seats as seats_for_now FROM
-- обчислення кількості екіпажів для кожного боінга
(SELECT DISTINCT FLOOR(COUNT(model)/2) as boing_count,seats FROM
-- поєднання таблиць по моделях літаків
             (SELECT DISTINCT pilots_id, model_can_fly, model, seats
               from pilots
               inner JOIN planes
               on pilots.model_can_fly like CONCAT('%', model, '%')) as two_tables
                                 group by model) as temp) as temp2;

DELETE FROM person WHERE id > (select cast(value as integer) from parameter where code = 'ROLLBACK_EXAMPLE_2');

DELETE FROM parameter WHERE code = 'ROLLBACK_EXAMPLE_2';

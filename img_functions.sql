CREATE FUNCTION insert_persona_image(pid INT, img TEXT)
RETURNS TEXT
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE persona
	SET image = img
	WHERE id = pid;

	return img;
END;
$$;


CREATE FUNCTION get_persona_image(pid INT)
RETURNS TEXT
LANGUAGE plpgsql
AS $$
DECLARE
    img TEXT;
BEGIN

	SELECT image INTO img
	FROM persona 
	WHERE id = pid;

    RETURN img;
END;
$$;

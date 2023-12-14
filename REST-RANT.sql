CREATE TABLE public.places
(
    place_id serial NOT NULL,
    place_name character varying(255) NOT NULL,
    pic character varying,
    cuisines character varying NOT NULL,
    state character varying,
    founded smallint,
    CONSTRAINT place_pkey PRIMARY KEY (place_id)
)

TABLESPACE pg_default;

	
CREATE TABLE public.comments
(
    comment_id serial NOT NULL,
    place_id smallint NOT NULL,
    content text,
    stars smallint NOT NULL,
    rant boolean,
    author character varying,
    CONSTRAINT comment_pkey PRIMARY KEY (comment_id),
    CONSTRAINT comment_place_id_fkey FOREIGN KEY (place_id)
        REFERENCES public.places (place_id)
        ON DELETE CASCADE
);




--generated with ai
INSERT INTO "places" ("place_name", "pic", "cuisines", "state", "founded") VALUES
('Restaurant A', 'pic1.jpg', 'Italian', 'California', 2005),
('Restaurant B', 'pic2.jpg', 'Mexican', 'Texas', 1998),
('Restaurant C', 'pic3.jpg', 'Chinese', 'New York', 2010);

--generated with ai
INSERT INTO "comments" ("place_id", "content", "stars", "rant", "author") VALUES
(1, 'Great food and service!', 5, false, 'John'),
(1, 'The pasta was overcooked.', 3, true, 'Jane'),
(2, 'Authentic Mexican cuisine.', 4, false, 'Mike'),
(3, 'Delicious dumplings!', 5, false, 'Sarah');


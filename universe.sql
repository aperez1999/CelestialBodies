--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_milky_way_ly numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: volcano; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.volcano (
    volcano_id integer NOT NULL,
    name character varying(25) NOT NULL,
    planet_id integer
);


ALTER TABLE public.volcano OWNER TO freecodecamp;

--
-- Name: type_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.type_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_type_id_seq OWNER TO freecodecamp;

--
-- Name: type_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.type_type_id_seq OWNED BY public.volcano.volcano_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: volcano volcano_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.volcano ALTER COLUMN volcano_id SET DEFAULT nextval('public.type_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy, the Milky Way is large and spiral', true, 13600, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 'A starburst galaxy, Cigar Galaxy has an extraordinarily high rate of star formation', NULL, 1300, 11.42);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest galaxy to the Milky Way, Andromeda is barred and spiral', NULL, 10000, 2.54);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel Galaxy', 'A striking face-on spiral galaxy, Pinwheel Galaxy is one of the largest images Hubble has ever captured of a spiral galaxy', NULL, NULL, 20.87);
INSERT INTO public.galaxy VALUES (5, 'IC 1101', 'A class S0 supergiant lenticular galaxy, IC 1101 hosts one of the largest black holes known', NULL, 12310, 1150);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'A peculiar galaxy of unclear classification, Sombrero Galaxy has a bright nucleus and an unusually large central bulge with a prominant dust lane', NULL, 13250, 29.35);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 'Earth''s only natural satellite', false, 4510, 0.0000000407, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'The inner-most and the larger of Mar''s two moons.', false, 4600, 0.0000163, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller of Mar''s two moons.', false, 4600, 0.0000163, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'The most volcanically active body in the solar system.', false, 4500, 0.00006636, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Smoothest surface of any known solid object in our solar system', false, 4500, 0.00006636, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest satellite in our solar system', false, 4500, 0.00006636, 5);
INSERT INTO public.moon VALUES (7, 'Titan', 'Saturn''s largest moon.', NULL, 4003, 0.0000171, 6);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Covered in fresh clean ice, Enceladus has most of the chemical ingredients needed for life.', NULL, 4003, 0.0000171, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Heavily cratered and composed mostly of ice', false, 4003, 0.0000171, 6);
INSERT INTO public.moon VALUES (10, 'Lapetus', 'Unique due to its two-toned appearance', false, 4003, 0.0000171, 6);
INSERT INTO public.moon VALUES (11, 'Mimas', 'Known for its large impact crater giving it a  Death Star appearance', false, 4003, 0.0000171, 6);
INSERT INTO public.moon VALUES (12, 'Titania', 'Uranus'' biggest moon, Titania has a network of valleys and fault lines.', false, NULL, 0.000031, 7);
INSERT INTO public.moon VALUES (13, 'Ariel', 'Brightest and possibly youngest surface of Uranus'' moons', false, NULL, 0.000031, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'Sports a mysterious bright ring on one side.', false, NULL, 0.000031, 7);
INSERT INTO public.moon VALUES (15, 'Triton', 'The only large moon in the solar system that orbits in a retrograde direction.', false, NULL, 0.000048, 8);
INSERT INTO public.moon VALUES (16, 'Nereid', 'One of the farthest moons in the solar system and has an eccentric orbit.', false, NULL, 0.000048, 8);
INSERT INTO public.moon VALUES (17, 'Proteus', 'Largest irregularly shaped moon in the solar system.', false, NULL, 0.000048, 8);
INSERT INTO public.moon VALUES (18, 'Naiad', 'Orbits within the rings of Neptune and helps to maintain them.', false, NULL, 0.000048, 8);
INSERT INTO public.moon VALUES (19, 'Thalassa', 'Orbits within the rings of Neptune and helps to maintain them.', false, NULL, 0.000048, 8);
INSERT INTO public.moon VALUES (20, 'Despina', 'Thought to be a captured asteroid or a fragment of a larger moon that was destroyed.', false, NULL, 0.000048, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The first planet from the sun, Mercury is also both the fastest and smallest planet in our solar system. It''s rough and rocky surface makes it a terrestrial planet', false, 4600, 77, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 'Revolves around Kepler-186, this exoplanet is similar to Earth''s radius and within a habitable zone', NULL, 4000, 580, 4);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet from the sun, Venus is the second largest terrestrial planet in our solar system.', false, 4500, 0.0000226, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only place in the known universe with intelligent life.', true, 4540, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The fourth planet from the Sun, Mars is the second smallest planet in our solar system.', false, 4600, 0.0000163, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The fifth planet from the Sun, Jupiter is a gas giant annd the largest planet in our solar system.', false, 4600, 0.0000892, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'The sixth planet from the Sun, Saturn is a gas giant with a notable ring system.', false, 4500, 0.0000171, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'The seventh planet from the sun, Uranus is an ice giant.', false, 4500, 0.000031, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The  eighth planet from the sun, Neptune is the farthest known planet in our solar system and an ice giant.', false, 4500, 0.000048, 1);
INSERT INTO public.planet VALUES (10, 'Lacaille-9352c', 'An exoplanet and Super-Earth, it was detected using radial velocity method.', false, 4570, 10.7, 6);
INSERT INTO public.planet VALUES (11, 'Lacaille-9352b', 'Another exoplanet and Super-Earth, this planet also orbits Lacaille-9352b.', false, 4570, 10.7, 6);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', 'An exoplanet orbiting within the habitable zone of Proxima Centauri.', NULL, 4850, 4.25, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Part of a 3 star system called Alpha Centauri, Proxima Centauri is the closest star to Earth', NULL, 4850, 4.25, 1);
INSERT INTO public.star VALUES (1, 'Sun', 'Star at the center of our solar system', NULL, 4600, 0.00001581, 1);
INSERT INTO public.star VALUES (3, 'Alpheratz', 'Brightest star in Andromeda', NULL, 60, 97, 2);
INSERT INTO public.star VALUES (4, 'Kepler-186', 'Red Dwarf', NULL, 4000, 580, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 'The brightest star in the northern hemisphere', NULL, 230, 8.61, 1);
INSERT INTO public.star VALUES (6, 'Lacaille-9352', 'Red dwarf star', NULL, 4780, 10.74, 1);


--
-- Data for Name: volcano; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.volcano VALUES (1, 'Yellowstone Caldera', 3);
INSERT INTO public.volcano VALUES (2, 'Olympus Mons', 4);
INSERT INTO public.volcano VALUES (3, 'Mauna Kea', 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: type_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.type_type_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: volcano type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.volcano
    ADD CONSTRAINT type_pkey PRIMARY KEY (volcano_id);


--
-- Name: volcano volcano_volcano_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.volcano
    ADD CONSTRAINT volcano_volcano_id_key UNIQUE (volcano_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: volcano type_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.volcano
    ADD CONSTRAINT type_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


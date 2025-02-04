--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: aliens; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aliens (
    alien_id integer NOT NULL,
    name character varying(30),
    origin text
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_alien_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_alien_id_seq OWNED BY public.aliens.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    latin_name text,
    diameter_in_light_years integer,
    thickness_in_light_years integer,
    age_in_years numeric,
    galaxy_type text,
    has_a_black_hole_in_the_center boolean,
    confirmed_existence_of_life boolean
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
    name character varying(40) NOT NULL,
    latin_name text,
    mass_in_kg numeric,
    radius_in_km integer,
    designation_planet text,
    avg_orbital_speed_mps integer,
    is_rotating boolean,
    was_explored_by_people boolean
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
    name character varying(40) NOT NULL,
    latin_name text,
    mass_in_kg numeric,
    radius_in_km integer,
    designation_star text,
    avg_orbital_speed_mps integer,
    orbital_period_in_days numeric,
    has_atmosphere boolean,
    has_natural_satellites boolean,
    is_flat boolean
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
    name character varying(40) NOT NULL,
    latin_name text,
    mass_in_kg numeric,
    radius_in_km integer,
    designation_galaxy text,
    avg_orbital_speed_mps integer,
    galactic_period_in_years numeric,
    distance_from_galaxy_core_in_light_years integer,
    star_type text,
    has_planets boolean,
    is_part_of_a_multiple_system boolean
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
-- Name: where_the_alien_was_seen; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.where_the_alien_was_seen (
    alien_id integer NOT NULL,
    planet_id integer NOT NULL,
    is_that_true boolean
);


ALTER TABLE public.where_the_alien_was_seen OWNER TO freecodecamp;

--
-- Name: aliens alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens ALTER COLUMN alien_id SET DEFAULT nextval('public.aliens_alien_id_seq'::regclass);


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
-- Data for Name: aliens; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aliens VALUES (1, 'Alf', 'Melmac');
INSERT INTO public.aliens VALUES (2, 'Superman', 'Krypton');
INSERT INTO public.aliens VALUES (3, 'Clover', NULL);
INSERT INTO public.aliens VALUES (4, 'Cooper', NULL);
INSERT INTO public.aliens VALUES (5, 'E.T.', NULL);
INSERT INTO public.aliens VALUES (6, 'Predator', NULL);
INSERT INTO public.aliens VALUES (7, 'just Alien', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Via Lactea', 100000, 1000, 13600000000, 'spiral', true, true);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool Galaxy / Messier 51', NULL, NULL, NULL, NULL, 'spiral', false, false);
INSERT INTO public.galaxy VALUES (3, 'NGC 3115', NULL, NULL, NULL, NULL, 'lenticular', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Luna', 73476730000000000000000000000, 1738, '3', 1000, true, true);
INSERT INTO public.moon VALUES (2, 'Deimos', NULL, 2244000000000000, NULL, '4', 1300, true, false);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Phobos', 10700000000000000, NULL, '4', 2100, true, false);
INSERT INTO public.moon VALUES (4, 'Io', 'Io', 89000000000000000000000, 1821, '5', 17300, true, false);
INSERT INTO public.moon VALUES (5, 'Europa', 'Europa', 48000000000000000000000, 1561, '5', 13700, true, false);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Ganymedes', 14819000000000000000000, 2631, '5', 10900, true, false);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Callisto', 107593800000000000000000, 2410, '5', 8200, true, false);
INSERT INTO public.moon VALUES (8, 'Titan', 'Titanides', 134500000000000000000000, 2575, '6', 5600, true, false);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Rhea', 2306518000000000000000, 764, '6', 8500, true, false);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Iapetus', 1805000000000000000000, 718, '6', 3600, true, false);
INSERT INTO public.moon VALUES (11, 'Dione', 'Dione', 1096000000000000000000, 559, '6', NULL, true, false);
INSERT INTO public.moon VALUES (12, 'Tethys', 'Tethys', 617600000000000000000, 530, '6', 11300, true, false);
INSERT INTO public.moon VALUES (13, 'Enceladus', 'Enceladus', 108000000000000000000, 250, '6', NULL, true, false);
INSERT INTO public.moon VALUES (14, 'Mimas', 'Mimas', 37493000000000000000, 199, '6', 14300, true, false);
INSERT INTO public.moon VALUES (15, 'Hyperion', 'Hyperion', 5619900000000000000, 133, '6', NULL, true, false);
INSERT INTO public.moon VALUES (16, 'Phoebe', 'Phoebe', 8292000000000000000, 120, '6', NULL, true, false);
INSERT INTO public.moon VALUES (17, 'Titania', NULL, 3530000000000000000000, 788, '7', 3600, true, false);
INSERT INTO public.moon VALUES (18, 'Oberon', NULL, 3010000000000000000000, 761, '7', 3200, true, false);
INSERT INTO public.moon VALUES (19, 'Umbriel', NULL, 1170000000000000000000, 585, '7', 4700, true, false);
INSERT INTO public.moon VALUES (20, 'Ariel', NULL, 1350000000000000000000, 579, '7', 5500, true, false);
INSERT INTO public.moon VALUES (21, 'Miranda', 'Miranda', 66000000000000000000, 236, '7', 6700, true, false);
INSERT INTO public.moon VALUES (22, 'Triton', 'Triton', 21400000000000000000000, 1353, '8', 4400, true, false);
INSERT INTO public.moon VALUES (23, 'Proteus', 'Proteus', 44000000000000000000, 210, '8', 7600, true, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercurius', 330110000000000000000000, NULL, '1', 47360, 88, false, false, false);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus', 4867000000000000000000000, NULL, '1', 35020, 225, false, false, false);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terra', 5972190000000000000000000, NULL, '1', 29780, 365, true, true, false);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars', 641710000000000000000000, NULL, '1', 24070, 686, true, true, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Iuppiter', 1898190000000000000000000000, NULL, '1', 13060, 4333, true, true, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturnus', 568340000000000000000000000, NULL, '1', 9680, 10759, true, true, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus', 86813000000000000000000000, NULL, '1', 6800, 30685, true, true, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptunus', 102413000000000000000000000, NULL, '1', 5430, 60189, true, true, false);
INSERT INTO public.planet VALUES (9, 'Kepler-11b', NULL, 4300000000000000000000000, NULL, '2', NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (10, 'Kepler-11c', NULL, 13500000000000000000000000, NULL, '2', NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (11, 'Kepler-11d', NULL, 6100000000000000000000000, NULL, '2', NULL, NULL, true, NULL, false);
INSERT INTO public.planet VALUES (12, 'Kepler-11e', NULL, 8400000000000000000000000, NULL, '2', NULL, NULL, true, NULL, false);
INSERT INTO public.planet VALUES (13, 'Kepler-11f', NULL, 2300000000000000000000000, NULL, '2', NULL, NULL, true, NULL, false);
INSERT INTO public.planet VALUES (14, 'Kepler-11g', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (15, 'TRAPPIST-1b', NULL, 850000000000000000000000, NULL, '3', NULL, 2, NULL, NULL, false);
INSERT INTO public.planet VALUES (16, 'TRAPPIST-1c', NULL, 1380000000000000000000000, NULL, '3', NULL, 3, NULL, NULL, false);
INSERT INTO public.planet VALUES (17, 'TRAPPIST-1d', NULL, 410000000000000000000000, NULL, '3', NULL, 4, NULL, NULL, false);
INSERT INTO public.planet VALUES (18, 'TRAPPIST-1e', NULL, 620000000000000000000000, NULL, '3', NULL, 6, NULL, NULL, false);
INSERT INTO public.planet VALUES (19, 'TRAPPIST-1f', NULL, 680000000000000000000000, NULL, '3', NULL, 9, NULL, NULL, false);
INSERT INTO public.planet VALUES (20, 'TRAPPIST-1g', NULL, 1340000000000000000000000, NULL, '3', NULL, 12, NULL, NULL, false);
INSERT INTO public.planet VALUES (22, 'M51-ULS-1b', NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (21, 'TRAPPIST-1h', NULL, NULL, NULL, '3', NULL, 19, NULL, NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Sol', 1988400000000000000000000000000, 695700000, '1', 22000, 240000000, 27000, 'yellow dwarf', true, false);
INSERT INTO public.star VALUES (2, 'Kepler-11', NULL, 1888980000000000000000000000000, 765270000, '1', NULL, NULL, NULL, 'yellow dwarf', true, false);
INSERT INTO public.star VALUES (3, 'TRAPPIST-1', NULL, 159469680000000000000000000000, 81396900, '1', NULL, NULL, NULL, 'red dwarf', true, false);
INSERT INTO public.star VALUES (4, 'M51-ULS-1', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, true, true);


--
-- Data for Name: where_the_alien_was_seen; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.where_the_alien_was_seen VALUES (1, 3, false);
INSERT INTO public.where_the_alien_was_seen VALUES (2, 3, false);
INSERT INTO public.where_the_alien_was_seen VALUES (3, 3, false);
INSERT INTO public.where_the_alien_was_seen VALUES (4, 3, false);
INSERT INTO public.where_the_alien_was_seen VALUES (5, 3, false);
INSERT INTO public.where_the_alien_was_seen VALUES (6, 3, false);
INSERT INTO public.where_the_alien_was_seen VALUES (7, 3, true);


--
-- Name: aliens_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_alien_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 4, true);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (alien_id);


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
-- Name: where_the_alien_was_seen where_the_alien_was_seen_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.where_the_alien_was_seen
    ADD CONSTRAINT where_the_alien_was_seen_pkey PRIMARY KEY (alien_id, planet_id);


--
-- Name: where_the_alien_was_seen where_the_alien_was_seen_alien_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.where_the_alien_was_seen
    ADD CONSTRAINT where_the_alien_was_seen_alien_id_fkey FOREIGN KEY (alien_id) REFERENCES public.aliens(alien_id);


--
-- Name: where_the_alien_was_seen where_the_alien_was_seen_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.where_the_alien_was_seen
    ADD CONSTRAINT where_the_alien_was_seen_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying,
    spectral_type character varying NOT NULL,
    discoverer character varying NOT NULL,
    orbital_inclination numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    description text,
    type character varying NOT NULL,
    ratio numeric NOT NULL,
    distance_million numeric,
    discovered_year integer
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
    name character varying,
    type character varying NOT NULL,
    discoverer character varying,
    discovered_on date NOT NULL,
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
    name character varying,
    type character varying NOT NULL,
    discoverer character varying,
    has_natural_satellites boolean,
    orbits character varying NOT NULL
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
    name character varying,
    clasification character varying NOT NULL,
    color character varying NOT NULL,
    temperature integer,
    in_solar_system boolean,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Eros', 'S type', 'Gustav Witt', 10.83);
INSERT INTO public.asteroid VALUES (2, 'Mathilde', 'C type', 'Johann Palisa', 6.738);
INSERT INTO public.asteroid VALUES (3, 'Kleopatra', 'M type', 'Johann Palisa', 13.1);
INSERT INTO public.asteroid VALUES (4, 'Palas', 'B type', 'Heinrich Olbers', 34.84);
INSERT INTO public.asteroid VALUES (5, 'Interamnia', 'F type', 'Vincenzo Cerulli', 17.31);
INSERT INTO public.asteroid VALUES (6, 'Pandora', 'E type', 'George Searle', 7.186);
INSERT INTO public.asteroid VALUES (7, 'Aletheia', 'P type', 'Heinrich Peters', 10.81);
INSERT INTO public.asteroid VALUES (8, 'Aeternitas', 'A type', 'Max Wolf', 10.63);
INSERT INTO public.asteroid VALUES (9, 'Aegle', 'T type', 'Jerome Eugene Coggia', 15.97);
INSERT INTO public.asteroid VALUES (10, 'Apolo', 'Q type', 'Karl Wilhelm Reinmuth', 6.353);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Messier 32', 'Compact dwarf elliptical galaxy', 'Elliptical', 3.250, 2.56, 1749);
INSERT INTO public.galaxy VALUES (2, 'Messier 81', 'Contains approximately 250 billion stars', 'Spiral', 36.00, 12, 1774);
INSERT INTO public.galaxy VALUES (3, 'NGC 27870', 'Barred lenticular galaxy', 'Lenticular', 4.32, 24, 1772);
INSERT INTO public.galaxy VALUES (4, 'Messier 82', 'Also known as The Cigar Galaxy', 'Irregular', 69.41, 12, 1822);
INSERT INTO public.galaxy VALUES (5, 'Messier 59', 'One of the largest galaxies in the Virgo Cluster', 'Elliptical', 45.0, 60, 1779);
INSERT INTO public.galaxy VALUES (6, 'Messier 110', 'It has several dust spots near its core', 'Elliptical', 3.450, 2.9, 1773);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Metis', 'Pastor', 'S. Synnott', '1979-03-04', NULL);
INSERT INTO public.moon VALUES (2, 'Adrastea', 'Pastor', 'David C. Jewitt', '1979-07-08', NULL);
INSERT INTO public.moon VALUES (4, 'Moon', 'Terrestrial', 'Unknown', '2001-01-01', 3);
INSERT INTO public.moon VALUES (5, 'Deimos', 'Trojan', 'Asaph Hall', '1877-08-12', 4);
INSERT INTO public.moon VALUES (6, 'Betis', 'Trojan', 'Giovanni Cassini', '1684-03-21', 8);
INSERT INTO public.moon VALUES (7, 'Telesto', 'Trojan', 'Bradford A. Smith', '1980-05-08', 8);
INSERT INTO public.moon VALUES (9, 'Calypso', 'Trojan', 'Dan Pascu', '1980-03-13', 8);
INSERT INTO public.moon VALUES (10, 'Dione', 'Trojan', 'Giovanni Cassini', '1684-03-21', 8);
INSERT INTO public.moon VALUES (11, 'Helena', 'Trojan', 'Pierre Laques', '1980-03-01', 8);
INSERT INTO public.moon VALUES (12, 'Pollux', 'Trojan', 'Cassini Imaging Science Team', '2004-10-24', 8);
INSERT INTO public.moon VALUES (13, 'Caronte', 'Asteroidal', 'James W. Christy', '1978-06-22', 11);
INSERT INTO public.moon VALUES (14, 'HiIaka', 'Asteroidal', 'Michael E. Brown', '2005-01-26', NULL);
INSERT INTO public.moon VALUES (15, 'Hydra', 'Asteroidal', 'Unknown', '2005-06-01', 11);
INSERT INTO public.moon VALUES (16, 'Nix', 'Asteroidal', 'Unknown', '2005-06-01', 11);
INSERT INTO public.moon VALUES (17, 'Namaka', 'Asteroidal', 'Michael E. Brown', '2005-06-30', NULL);
INSERT INTO public.moon VALUES (18, 'Cerbero', 'Asteroidal', 'Mark R. Showalter', '2011-06-28', 11);
INSERT INTO public.moon VALUES (19, 'Estigia', 'Asteroidal', 'Mark R. Showalter', '2012-06-26', 11);
INSERT INTO public.moon VALUES (20, 'Epimeteo', 'Coorbital', 'Audouin Dollfus', '1966-12-15', 8);
INSERT INTO public.moon VALUES (21, 'Ariel', 'Asteroidal', 'William Lassell', '1851-10-24', NULL);
INSERT INTO public.moon VALUES (22, 'Titan', 'Asteroidal', 'Christiaan Huygens', '1655-03-25', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 'Terrestrial', 'Unknown', false, 'Sun');
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 'Unknown', false, 'Sun');
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 'Unknown', true, 'Sun');
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 'Unknown', true, 'Sun');
INSERT INTO public.planet VALUES (5, 'Ceres', 'Terrestrial', 'Giuseppe Piazzi', false, 'Sun');
INSERT INTO public.planet VALUES (6, '51 Pegasi B', 'Terrestrial', 'Michel Mayor1', false, '51 Pegasi');
INSERT INTO public.planet VALUES (7, 'Jupiter', 'Jovian', 'Unknown', true, 'Sun');
INSERT INTO public.planet VALUES (8, 'Saturn', 'Jovian', 'Unknown', true, 'Sun');
INSERT INTO public.planet VALUES (9, 'Uranus', 'Frost Giant', 'Unknown', true, 'Sun');
INSERT INTO public.planet VALUES (10, 'Neptune', 'Frost Giant', 'Unknown', true, 'Sun');
INSERT INTO public.planet VALUES (11, 'Pluto', 'Dwarf Planet', 'Clyde Tombaugh', true, 'Sun');
INSERT INTO public.planet VALUES (12, 'Tadmor', 'Extrasolar Planet', 'Campbell Walker', false, 'Errai');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Wolf Rayet', 'W-O', 'Blue', 100000, false, 1);
INSERT INTO public.star VALUES (2, 'Spica', 'B', 'Bluish White', 25000, false, 4);
INSERT INTO public.star VALUES (3, 'Sirio', 'A', 'White', 11500, true, 3);
INSERT INTO public.star VALUES (4, 'Canopus', 'F', 'Yellowish White', 7500, true, 3);
INSERT INTO public.star VALUES (5, 'Sun', 'G', 'Yellow', 6000, true, 6);
INSERT INTO public.star VALUES (6, 'Arturo', 'K', 'Yellowish Orange', 4700, false, 2);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


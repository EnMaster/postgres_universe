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
    name character varying(30) NOT NULL,
    age integer,
    description text,
    shape character varying(45)
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
    name character varying(30) NOT NULL,
    planet_id integer,
    type text,
    discovery_year integer
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
    name character varying(30) NOT NULL,
    star_id integer,
    discovered boolean,
    description text
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    crew numeric,
    operative boolean
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    temp_million_k integer,
    description text
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milk way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Kalian', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Ambarance', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Hexi', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Triangle', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Io', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Himalia', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Europa', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Dia', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Arche', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Titan', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Rhea', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Dione', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'SP87', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Oberon', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Puck', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Luck', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Portia', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Sycorax', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Geodude', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Ariel', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Prospero', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Caliban', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Onix', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Kalips', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Uranus', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Agena', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Segin', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'LFP-78', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Eve', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Duna', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Kerbin', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Jool', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Eloo', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Dres', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'Tylo', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'Pol', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'Giove', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'Hirashyn', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'Flyn', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'Tersicore', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'Gavischium', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'FP56LUPAS', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'DAC', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'Gilly', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'Sab', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (25, 'Appoledo', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (26, 'Icysun', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (27, 'Venusia', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (28, 'Galaga', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (29, 'Lupinus', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (30, 'Huuil', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (31, 'KB-45', NULL, NULL, NULL);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Graviton', NULL, NULL);
INSERT INTO public.satellite VALUES (2, 'Mare2000', NULL, NULL);
INSERT INTO public.satellite VALUES (3, 'FistNorthStar', NULL, NULL);
INSERT INTO public.satellite VALUES (4, 'Penguin8', NULL, NULL);
INSERT INTO public.satellite VALUES (5, 'Apollo', NULL, NULL);
INSERT INTO public.satellite VALUES (6, 'Apelle', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Altare', NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'MD55', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Cassiopea', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Avior', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Sadr', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Diadema', NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 31, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
-- PostgreSQL database dump complete
--


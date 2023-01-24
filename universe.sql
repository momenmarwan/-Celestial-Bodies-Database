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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    comets_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_year integer,
    distance_from_earth integer,
    is_spherical boolean,
    has_life boolean,
    description text NOT NULL,
    area numeric(8,4)
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    description text NOT NULL,
    area numeric(8,4)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_year integer,
    distance_from_earth integer,
    is_spherical boolean,
    has_life boolean,
    description text NOT NULL,
    area numeric(8,4),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_year integer,
    distance_from_earth integer,
    is_spherical boolean,
    has_life boolean,
    description text NOT NULL,
    area numeric(8,4),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth integer,
    is_spherical boolean,
    has_life boolean,
    description text NOT NULL,
    area numeric(8,4),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    id integer
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES (1, 'comet1', 11, 22, true, false, 'comts1...', 20.0000);
INSERT INTO public.comets VALUES (2, 'comet2', 11, 22, true, false, 'comts2...', 20.0000);
INSERT INTO public.comets VALUES (3, 'comet3', 11, 22, true, false, 'comts3...', 20.0000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 14, 20, true, false, 'a hazy band of light seen in night sky', 300.0000);
INSERT INTO public.galaxy VALUES (2, 'Republic', 7, 10, true, false, 'a hazy band of light seen in dark  sky', 300.0000);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 17, 10, true, true, 'a hazy band of light seen in dark', 300.0000);
INSERT INTO public.galaxy VALUES (4, 'GARBOK', 717, 10, false, true, 'a hazy band of light seen  dark', 300.0000);
INSERT INTO public.galaxy VALUES (5, 'Vibros', 2, 10, false, true, 'a new one', 200.0000);
INSERT INTO public.galaxy VALUES (6, 'Misk', 132, 3, false, true, 'anther new one', 200.0000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 2, 3, true, false, 'Rocks and dust', 200.0000, 1);
INSERT INTO public.moon VALUES (2, 'Luna', 2, 3, true, false, 'Fear', 200.0000, 1);
INSERT INTO public.moon VALUES (3, 'Phobos', 2, 3, true, false, 'Panic', 200.0000, 2);
INSERT INTO public.moon VALUES (4, 'Deimos', 2, 3, true, false, 'Colonized', 200.0000, 2);
INSERT INTO public.moon VALUES (6, 'Hesperidium', 2, 3, true, false, 'Colonized-4', 200.0000, 6);
INSERT INTO public.moon VALUES (7, 'LHS', 2, 3, true, false, 'Colonized-5', 200.0000, 7);
INSERT INTO public.moon VALUES (8, 'LHS-1', 2, 3, true, false, 'Colonized-6', 200.0000, 7);
INSERT INTO public.moon VALUES (9, 'LHS-2', 2, 3, true, false, 'Colonized-7', 200.0000, 7);
INSERT INTO public.moon VALUES (10, 'LHS-3', 2, 3, true, false, 'Rocky satellite', 200.0000, 8);
INSERT INTO public.moon VALUES (11, 'LHS-4', 2, 3, true, false, 'Rocky satellite-1', 200.0000, 8);
INSERT INTO public.moon VALUES (12, 'LHS-5', 2, 3, true, false, 'Rocky satellite-2', 200.0000, 9);
INSERT INTO public.moon VALUES (13, 'LHS-6', 2, 3, true, false, 'Rocky satellite-3', 200.0000, 9);
INSERT INTO public.moon VALUES (14, 'LHS-7', 2, 3, true, false, 'Rocky satellite-4', 200.0000, 10);
INSERT INTO public.moon VALUES (15, 'LHS-8', 2, 3, true, false, 'Rocky satellite-5', 200.0000, 10);
INSERT INTO public.moon VALUES (16, 'LHS-9', 2, 3, true, false, 'Rocky satellite-6', 200.0000, 10);
INSERT INTO public.moon VALUES (17, 'LHS-10', 2, 3, true, false, 'Rocky satellite-7', 200.0000, 11);
INSERT INTO public.moon VALUES (18, 'LHS-11', 2, 3, true, false, 'Rocky satellite-8', 200.0000, 11);
INSERT INTO public.moon VALUES (19, 'LHS-12', 2, 3, true, false, 'Rocky satellite-18', 200.0000, 11);
INSERT INTO public.moon VALUES (20, 'LHS-52', 2, 3, true, false, 'Rocky satellite-78', 200.0000, 5);
INSERT INTO public.moon VALUES (21, 'LHS-52', 2, 3, true, false, 'Rocky satellite-77', 200.0000, 5);
INSERT INTO public.moon VALUES (22, 'LHS-52', 2, 3, true, false, 'Rocky satellite-74', 200.0000, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, NULL, true, true, 'Only habitable sol planet', 499.0000, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 2, false, false, 'Only habitable sol planet2', 499.0000, 2);
INSERT INTO public.planet VALUES (3, 'cORUSCANT', 1, 2, false, false, 'Only habitable sol planet3', 499.0000, 2);
INSERT INTO public.planet VALUES (4, 'lhS a1', 1, 2, false, false, 'Only habitable sol planet4', 499.0000, 3);
INSERT INTO public.planet VALUES (5, 'lhS A2', 1, 2, false, false, 'Only habitable sol planet5', 499.0000, 3);
INSERT INTO public.planet VALUES (6, 'lhS A3', 1, 2, false, false, 'Only habitable sol planet6', 499.0000, 4);
INSERT INTO public.planet VALUES (7, 'lhS A4', 1, 2, false, false, 'Only habitable sol planet7', 499.0000, 5);
INSERT INTO public.planet VALUES (8, 'Franklins keep', 1, 2, false, false, 'Only habitable sol planet8', 499.0000, 6);
INSERT INTO public.planet VALUES (9, 'Sigint', 1, 2, false, false, 'Only habitable sol planet9', 499.0000, 6);
INSERT INTO public.planet VALUES (10, 'Sigint', 1, 2, false, false, 'Only habitable sol planet10', 499.0000, 6);
INSERT INTO public.planet VALUES (11, 'Sigint', 1, 2, false, false, 'Only habitable sol planet11', 499.0000, 5);
INSERT INTO public.planet VALUES (21, 'Sigint', 1, 2, false, false, 'Only habitable sol planet12', 499.0000, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 2, true, true, 'any thaing', 150.0000, 1);
INSERT INTO public.star VALUES (2, 'Coruscant', 1, 2, true, true, 'any thaing2', 150.0000, 2);
INSERT INTO public.star VALUES (3, 'LHS', 1, 2, true, true, 'any thaing3', 150.0000, 3);
INSERT INTO public.star VALUES (4, 'Franklins Rest', 1, 2, true, true, 'any thaing4', 150.0000, 4);
INSERT INTO public.star VALUES (5, 'Oberson', 1, 2, true, true, 'any thaing5', 150.0000, 5);
INSERT INTO public.star VALUES (6, 'Bisk', 1, 2, true, true, 'any thaing6', 150.0000, 6);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: comets comets_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_description_key UNIQUE (description);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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


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
-- Name: astronomical_phenomenon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomical_phenomenon (
    astronomical_phenomenon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    is_visible boolean,
    observed_on date
);


ALTER TABLE public.astronomical_phenomenon OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type text,
    is_spiral boolean,
    is_elliptical boolean,
    estimated_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer,
    is_colonized boolean,
    diameter integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    star_id integer,
    is_habitable boolean,
    radius integer,
    orbital_period numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    type text,
    is_visible_from_earth boolean,
    mass numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: astronomical_phenomenon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomical_phenomenon VALUES (1, 'Phenomenon_1', 'Description of Phenomenon 1', true, '2024-01-01');
INSERT INTO public.astronomical_phenomenon VALUES (2, 'Phenomenon_2', 'Description of Phenomenon 2', false, '2024-02-01');
INSERT INTO public.astronomical_phenomenon VALUES (3, 'Phenomenon_3', 'Description of Phenomenon 3', true, '2024-03-01');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy_1', 'Type_1', false, true, 1000);
INSERT INTO public.galaxy VALUES (2, 'Galaxy_2', 'Type_2', true, false, 2000);
INSERT INTO public.galaxy VALUES (3, 'Galaxy_3', 'Type_3', false, true, 3000);
INSERT INTO public.galaxy VALUES (4, 'Galaxy_4', 'Type_4', true, false, 4000);
INSERT INTO public.galaxy VALUES (5, 'Galaxy_5', 'Type_5', false, true, 5000);
INSERT INTO public.galaxy VALUES (6, 'Galaxy_6', 'Type_6', true, false, 6000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon_1', 1, false, 50);
INSERT INTO public.moon VALUES (2, 'Moon_2', 2, true, 100);
INSERT INTO public.moon VALUES (3, 'Moon_3', 3, false, 150);
INSERT INTO public.moon VALUES (4, 'Moon_4', 4, true, 200);
INSERT INTO public.moon VALUES (5, 'Moon_5', 5, false, 250);
INSERT INTO public.moon VALUES (6, 'Moon_6', 6, true, 300);
INSERT INTO public.moon VALUES (7, 'Moon_7', 7, false, 350);
INSERT INTO public.moon VALUES (8, 'Moon_8', 8, true, 400);
INSERT INTO public.moon VALUES (9, 'Moon_9', 9, false, 450);
INSERT INTO public.moon VALUES (10, 'Moon_10', 10, true, 500);
INSERT INTO public.moon VALUES (11, 'Moon_11', 11, false, 550);
INSERT INTO public.moon VALUES (12, 'Moon_12', 12, true, 600);
INSERT INTO public.moon VALUES (13, 'Moon_13', 13, false, 650);
INSERT INTO public.moon VALUES (14, 'Moon_14', 14, true, 700);
INSERT INTO public.moon VALUES (15, 'Moon_15', 15, false, 750);
INSERT INTO public.moon VALUES (16, 'Moon_16', 16, true, 800);
INSERT INTO public.moon VALUES (17, 'Moon_17', 17, false, 850);
INSERT INTO public.moon VALUES (18, 'Moon_18', 18, true, 900);
INSERT INTO public.moon VALUES (19, 'Moon_19', 19, false, 950);
INSERT INTO public.moon VALUES (20, 'Moon_20', 20, true, 1000);
INSERT INTO public.moon VALUES (21, 'Moon_21', 21, false, 1050);
INSERT INTO public.moon VALUES (22, 'Moon_22', 21, true, 1100);
INSERT INTO public.moon VALUES (23, 'Moon_23', 22, false, 1150);
INSERT INTO public.moon VALUES (24, 'Moon_24', 22, true, 1200);
INSERT INTO public.moon VALUES (25, 'Moon_25', 23, false, 1250);
INSERT INTO public.moon VALUES (26, 'Moon_26', 23, true, 1300);
INSERT INTO public.moon VALUES (27, 'Moon_27', 24, false, 1350);
INSERT INTO public.moon VALUES (28, 'Moon_28', 24, true, 1400);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet_1', 1, false, 1000, 2);
INSERT INTO public.planet VALUES (2, 'Planet_2', 1, true, 2000, 4);
INSERT INTO public.planet VALUES (3, 'Planet_3', 2, false, 3000, 6);
INSERT INTO public.planet VALUES (4, 'Planet_4', 2, true, 4000, 8);
INSERT INTO public.planet VALUES (5, 'Planet_5', 3, false, 5000, 10);
INSERT INTO public.planet VALUES (6, 'Planet_6', 3, true, 6000, 12);
INSERT INTO public.planet VALUES (7, 'Planet_7', 4, false, 7000, 14);
INSERT INTO public.planet VALUES (8, 'Planet_8', 4, true, 8000, 16);
INSERT INTO public.planet VALUES (9, 'Planet_9', 5, false, 9000, 18);
INSERT INTO public.planet VALUES (10, 'Planet_10', 5, true, 10000, 20);
INSERT INTO public.planet VALUES (11, 'Planet_11', 6, false, 11000, 22);
INSERT INTO public.planet VALUES (12, 'Planet_12', 6, true, 12000, 24);
INSERT INTO public.planet VALUES (13, 'Planet_13', 7, false, 13000, 26);
INSERT INTO public.planet VALUES (14, 'Planet_14', 7, true, 14000, 28);
INSERT INTO public.planet VALUES (15, 'Planet_15', 8, false, 15000, 30);
INSERT INTO public.planet VALUES (16, 'Planet_16', 8, true, 16000, 32);
INSERT INTO public.planet VALUES (17, 'Planet_17', 9, false, 17000, 34);
INSERT INTO public.planet VALUES (18, 'Planet_18', 9, true, 18000, 36);
INSERT INTO public.planet VALUES (19, 'Planet_19', 10, false, 19000, 38);
INSERT INTO public.planet VALUES (20, 'Planet_20', 10, true, 20000, 40);
INSERT INTO public.planet VALUES (21, 'Planet_21', 11, false, 21000, 42);
INSERT INTO public.planet VALUES (22, 'Planet_22', 11, true, 22000, 44);
INSERT INTO public.planet VALUES (23, 'Planet_23', 12, false, 23000, 46);
INSERT INTO public.planet VALUES (24, 'Planet_24', 12, true, 24000, 48);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star_1', 1, 'Type_1', false, 10);
INSERT INTO public.star VALUES (2, 'Star_2', 1, 'Type_2', true, 20);
INSERT INTO public.star VALUES (3, 'Star_3', 2, 'Type_3', false, 30);
INSERT INTO public.star VALUES (4, 'Star_4', 2, 'Type_4', true, 40);
INSERT INTO public.star VALUES (5, 'Star_5', 3, 'Type_5', false, 50);
INSERT INTO public.star VALUES (6, 'Star_6', 3, 'Type_6', true, 60);
INSERT INTO public.star VALUES (7, 'Star_7', 4, 'Type_7', false, 70);
INSERT INTO public.star VALUES (8, 'Star_8', 4, 'Type_8', true, 80);
INSERT INTO public.star VALUES (9, 'Star_9', 5, 'Type_9', false, 90);
INSERT INTO public.star VALUES (10, 'Star_10', 5, 'Type_10', true, 100);
INSERT INTO public.star VALUES (11, 'Star_11', 6, 'Type_11', false, 110);
INSERT INTO public.star VALUES (12, 'Star_12', 6, 'Type_12', true, 120);


--
-- Name: astronomical_phenomenon astronomical_phenomenon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_phenomenon
    ADD CONSTRAINT astronomical_phenomenon_name_key UNIQUE (name);


--
-- Name: astronomical_phenomenon astronomical_phenomenon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_phenomenon
    ADD CONSTRAINT astronomical_phenomenon_pkey PRIMARY KEY (astronomical_phenomenon_id);


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


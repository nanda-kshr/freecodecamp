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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    size integer,
    number integer,
    age text NOT NULL,
    "exists" boolean,
    found boolean,
    name character varying,
    numbwers numeric(5,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    size integer,
    number integer,
    age text,
    "exists" boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    size integer,
    number integer,
    age text,
    "exists" boolean,
    sizeofplanet character varying NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar (
    solar_id integer NOT NULL,
    name character varying NOT NULL,
    size integer,
    number integer,
    age text,
    "exists" boolean
);


ALTER TABLE public.solar OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    size integer,
    number integer,
    age text NOT NULL,
    "exists" boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, size, number, age, "exists", found, name, numbwers) FROM stdin;
1	1	4	1	t	t	name	\N
2	1	4	11	t	t	namee	\N
3	1	4	111	t	t	nameee	\N
5	1	4	6	t	\N	namine	\N
4	4	4	4	t	\N	oiur	\N
6	6	67	56	t	\N	mine	\N
33	33	33	33	t	\N	your	\N
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, size, number, age, "exists") FROM stdin;
29	mhhfdi	1	1	11	t
20	yogssgff	2	2	11	t
13	ffdndad	3	3	11	t
4	mhhfdi	333	1	11	t
323	yogssgff	23	2	11	t
33	ffdndad	33	3	11	t
44	mhhfdi	3433	1	11	t
3423	yogssgff	423	2	11	t
433	ffdndad	433	3	11	t
445	mhhfdi	34335	1	11	t
34253	yogssgff	5423	2	11	t
4353	ffdndad	4533	3	11	t
44665	mhhfdi	34635	1	11	t
34653	yogssgff	54623	2	11	t
46353	ffdndad	45363	3	11	t
446965	mhhfdi	349635	1	11	t
346953	yogssgff	594623	2	11	t
469353	ffdndad	459363	3	11	t
4846965	mhhfdi	3489635	1	11	t
3468953	yogssgff	5984623	2	11	t
4693853	ffdndad	4859363	3	11	t
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, size, number, age, "exists", sizeofplanet) FROM stdin;
75	mine	858	57	586	t	5
358	your	53	53	53	t	5
485	name	54	845	485	t	5
1	mi	1	1	11	t	5
2	yo	2	2	11	t	5
3	na	3	3	11	t	1
5	mfi	1	1	11	t	5
6	yof	2	2	11	t	5
7	fna	3	3	11	t	1
9	mfdi	1	1	11	t	5
10	yosgff	2	2	11	t	5
11	ffdna	3	3	11	t	1
29	mhhfdi	1	1	11	t	5
20	yogssgff	2	2	11	t	5
13	ffdndad	3	3	11	t	1
\.


--
-- Data for Name: solar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.solar (solar_id, name, size, number, age, "exists") FROM stdin;
4846965	mhhfdi	3489635	1	11	t
3468953	yogssgff	5984623	2	11	t
4693853	ffdndad	4859363	3	11	t
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, size, number, age, "exists") FROM stdin;
3	nameee	1	4	111	t
1	nameee	1	4	11	t
2	name	1	4	1	t
6	mine	6	67	56	t
33	your	33	33	33	t
5	name	5	5	5	t
7	mine	88	7	86	t
38	your	3	3	3	t
85	name	5	85	85	t
75	mine	858	57	586	t
358	your	53	53	53	t
485	name	54	845	485	t
\.


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


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
-- Name: solar solar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_pkey PRIMARY KEY (solar_id);


--
-- Name: solar solar_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_size_key UNIQUE (size);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: planet planet_age_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_fkey FOREIGN KEY (age) REFERENCES public.star(age);


--
-- Name: solar solar_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: star star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_fkey FOREIGN KEY (name) REFERENCES public.galaxy(name);


--
-- PostgreSQL database dump complete
--


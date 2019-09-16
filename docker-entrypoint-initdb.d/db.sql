--
-- PostgreSQL database dump
--
 -- Dumped from database version 9.4.4
-- Dumped by pg_dump version 11.3

SET statement_timeout = 0;


SET lock_timeout = 0;


SET idle_in_transaction_session_timeout = 0;


SET client_encoding = 'UTF8';


SET standard_conforming_strings = off;


SELECT pg_catalog.set_config('search_path', '', false);


SET check_function_bodies = false;


SET xmloption = content;


SET client_min_messages = warning;


SET escape_string_warning = off;


SET row_security = off;


SET default_tablespace = '';


SET default_with_oids = false;

--
-- Name: DhlReport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DhlReport" ( "SourceId" integer NOT NULL,
                                                     "AccountNumber" text, "CustomerName" text, "InvoiceNo" text, "AWB" text, "Amount" text, "Center" text, "ScanDate" date NOT NULL,
                                                                                                                                                                            "Uuid" text);


ALTER TABLE public."DhlReport" OWNER TO postgres;

--
-- Name: DhlReport_SourceId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DhlReport_SourceId_seq"
START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


ALTER TABLE public."DhlReport_SourceId_seq" OWNER TO postgres;

--
-- Name: DhlReport_SourceId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DhlReport_SourceId_seq" OWNED BY public."DhlReport"."SourceId";

--
-- Name: ReportInflexDutyConsolidation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ReportInflexDutyConsolidation" ( "Id" integer NOT NULL,
                                                                   "SourceId" integer NOT NULL,
                                                                                      "AccountNo" text, "InvoiceNo" text, "Waybills" text, "InvoiceDate" timestamp without time zone NOT NULL,
                                                                                                                                                                                     "ServiceAmount" text, "Remark" text, "ScanDate" date NOT NULL,
                                                                                                                                                                                                                                          "UploadDate" timestamp without time zone NOT NULL,
                                                                                                                                                                                                                                                                                   "Uuid" text);


ALTER TABLE public."ReportInflexDutyConsolidation" OWNER TO postgres;

--
-- Name: ReportInflexDutyConsolidation_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ReportInflexDutyConsolidation_Id_seq"
START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


ALTER TABLE public."ReportInflexDutyConsolidation_Id_seq" OWNER TO postgres;

--
-- Name: ReportInflexDutyConsolidation_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ReportInflexDutyConsolidation_Id_seq" OWNED BY public."ReportInflexDutyConsolidation"."Id";

--
-- Name: ReportInflexFreight; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ReportInflexFreight" ( "Id" integer NOT NULL,
                                                         "SourceId" integer NOT NULL,
                                                                            "AccountNo" text, "InvoiceNo" text, "InvoiceDate" date NOT NULL,
                                                                                                                                   "ServiceAmount" text, "Vat" text, "Total" text, "ScanDate" date NOT NULL,
                                                                                                                                                                                                   "OrderNo" text, "UploadDate" timestamp without time zone NOT NULL,
                                                                                                                                                                                                                                                            "Uuid" text);


ALTER TABLE public."ReportInflexFreight" OWNER TO postgres;

--
-- Name: ReportInflexFreight_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ReportInflexFreight_Id_seq"
START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


ALTER TABLE public."ReportInflexFreight_Id_seq" OWNER TO postgres;

--
-- Name: ReportInflexFreight_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ReportInflexFreight_Id_seq" OWNED BY public."ReportInflexFreight"."Id";

--
-- Name: DhlReport SourceId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DhlReport"
ALTER COLUMN "SourceId"
SET DEFAULT nextval('public."DhlReport_SourceId_seq"'::regclass);

--
-- Name: ReportInflexDutyConsolidation Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ReportInflexDutyConsolidation"
ALTER COLUMN "Id"
SET DEFAULT nextval('public."ReportInflexDutyConsolidation_Id_seq"'::regclass);

--
-- Name: ReportInflexFreight Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ReportInflexFreight"
ALTER COLUMN "Id"
SET DEFAULT nextval('public."ReportInflexFreight_Id_seq"'::regclass);

--
-- Name: DhlReport PK_DhlReport; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DhlReport" ADD CONSTRAINT "PK_DhlReport" PRIMARY KEY ("SourceId");

--
-- Name: ReportInflexDutyConsolidation PK_ReportInflexDutyConsolidation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ReportInflexDutyConsolidation" ADD CONSTRAINT "PK_ReportInflexDutyConsolidation" PRIMARY KEY ("Id");

--
-- Name: ReportInflexFreight PK_ReportInflexFreight; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ReportInflexFreight" ADD CONSTRAINT "PK_ReportInflexFreight" PRIMARY KEY ("Id");

--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--
 REVOKE ALL ON SCHEMA public
FROM PUBLIC;

REVOKE ALL ON SCHEMA public
FROM postgres;

GRANT ALL ON SCHEMA public TO postgres;

GRANT ALL ON SCHEMA public TO PUBLIC;

--
-- PostgreSQL database dump complete
--

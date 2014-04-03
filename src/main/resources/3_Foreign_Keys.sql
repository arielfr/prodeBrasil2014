
--
-- TOC entry 1882 (class 2606 OID 172198)
-- Name: fk_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_city FOREIGN KEY (id_city) REFERENCES cities(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1880 (class 2606 OID 172203)
-- Name: fk_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT fk_group FOREIGN KEY (id_group) REFERENCES groups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1883 (class 2606 OID 172208)
-- Name: fk_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_group FOREIGN KEY (id_group) REFERENCES groups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1881 (class 2606 OID 172213)
-- Name: fk_team; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1884 (class 2606 OID 172218)
-- Name: fk_team_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_team_a FOREIGN KEY (id_team_a) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1885 (class 2606 OID 172223)
-- Name: fk_team_b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_team_b FOREIGN KEY (id_team_b) REFERENCES teams(id) ON UPDATE CASCADE ON DELETE CASCADE;
package com.lunatic.batis_model;

import javax.persistence.*;
import java.util.Date;

@Table(name = "game_log")
public class GameLog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "user_id")
    private String userId;

    private String ip;

    @Column(name = "game_id")
    private Integer gameId;

    private Date time;

    @Column(name = "from_page")
    private Integer fromPage;

    /**
     * @return id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return user_id
     */
    public String getUserId() {
        return userId;
    }

    /**
     * @param userId
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * @return ip
     */
    public String getIp() {
        return ip;
    }

    /**
     * @param ip
     */
    public void setIp(String ip) {
        this.ip = ip;
    }

    /**
     * @return game_id
     */
    public Integer getGameId() {
        return gameId;
    }

    /**
     * @param gameId
     */
    public void setGameId(Integer gameId) {
        this.gameId = gameId;
    }

    /**
     * @return time
     */
    public Date getTime() {
        return time;
    }

    /**
     * @param time
     */
    public void setTime(Date time) {
        this.time = time;
    }

    /**
     * @return from_page
     */
    public Integer getFromPage() {
        return fromPage;
    }

    /**
     * @param fromPage
     */
    public void setFromPage(Integer fromPage) {
        this.fromPage = fromPage;
    }
}
package com.example.contagion_android;

/**
 * @author Lokianer
 * @version X
 */
public class GameState{
    Population population;
    long time;
    int money;
    float mood;

    public GameState(Population nPoppulation, long nTime, int nMoney, float nMood ){
        this.population = nPoppulation;
        this.time = nTime;
        this.money = nMoney;
        this.mood = nMood;
    }

}
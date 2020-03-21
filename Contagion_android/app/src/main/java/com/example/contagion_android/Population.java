package com.example.contagion_android;

public class Population {
    int healthy;
    int infected;
    int healed;
    int dead;

    public Population(int nHealthy, int nInfect, int nHealed, int nDead){
    this.healthy = nHealthy;
    this.infected = nInfect;
    this.healed = nHealed;
    this.dead = nDead;
    }
    public void decreaseHealthyPeople(int minus){
        this.healthy -= minus;
    }
}

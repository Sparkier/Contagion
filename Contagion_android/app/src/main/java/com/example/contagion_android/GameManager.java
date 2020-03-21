package com.example.contagion_android;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Lokianer
 * @verion X
 */
public class GameManager {
    GameState curentGameState;
    List<GameState> gameStateList = new ArrayList<>();

    /**
     * Initialisiert einen den Start GameState
     */
    public GameManager(){
        Population initPoppulation = new Population(82000000, 0, 0, 0);
        this.curentGameState = new GameState(initPoppulation, System.currentTimeMillis(),50000000,80);
        gameStateList.add(curentGameState);
    }
}

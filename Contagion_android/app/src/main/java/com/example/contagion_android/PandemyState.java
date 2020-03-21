package com.example.contagion_android;


import java.util.Arrays;
import java.util.List;

/**
 * @author Lokianer
 * @version X
 */
public class PandemyState {
    String text;
    List<Object> stateActions = Arrays.asList(new PandemyAction(), new ActionResult());
}

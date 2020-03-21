package com.example.contagion_android;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Game extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_game);

        configureBextButon();
    }

    private void configureBextButon(){
            Button nButton = (Button) findViewById(R.id.backB);
            nButton.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View v) {
                   finish();
                }
            });
        }
    }

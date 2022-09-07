package com.example.my_project.President;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.example.my_project.R;

public class HW_Popup3 extends AppCompatActivity {
    float pressedTime;
    EditText popup3origintel, popup3chtel, popup3chtelchk;
    TextView popup3origintelchk, popup3chkblank, popup3chtelchktext;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_hw_popup3);
        Intent intent = getIntent();
        String origintel = intent.getStringExtra("tel");


        //취소 버튼 눌렷을떄
        findViewById(R.id.popup3cancle).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (pressedTime == 0) {
                    Toast.makeText(HW_Popup3.this, "한번 더 누를 시 창이 닫힙니다.", Toast.LENGTH_SHORT).show();
                    pressedTime = System.currentTimeMillis();
                }
                else {
                    int seconds = (int) (System.currentTimeMillis() - pressedTime);
                    /*2초*/
                    if (seconds > 2000) {
                        Toast.makeText(HW_Popup3.this, "한번 더 누를시 창이 닫힙니다.", Toast.LENGTH_SHORT).show();
                        pressedTime = 0;
                    } else {
                        finish();
                    }
                }
            }
        });
    }


    //백버튼 막기
    @Override
    public void onBackPressed() {
        if (pressedTime == 0) {
            Toast.makeText(HW_Popup3.this, "한번 더 누를 시 창이 닫힙니다.", Toast.LENGTH_SHORT).show();
            pressedTime = System.currentTimeMillis();
        } else {
            int seconds = (int) (System.currentTimeMillis() - pressedTime);
            /*2초*/
            if (seconds > 2000) {
                Toast.makeText(HW_Popup3.this, "한번 더 누를시 창이 닫힙니다.", Toast.LENGTH_SHORT).show();
                pressedTime = 0;
            } else {
                super.onBackPressed();
            }
        }

    }
}




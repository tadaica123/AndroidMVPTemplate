package com.mvp.framework;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;

import com.mvp.framework.ui.base.BaseActivity;

public class IntroActivity extends BaseActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(com.mvp.framework.R.layout.activity_intro);
    }

    @Override
    protected void initView() {

    }

    @Override
    protected void initData() {

    }
}

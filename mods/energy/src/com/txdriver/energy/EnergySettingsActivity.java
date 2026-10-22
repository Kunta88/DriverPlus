package com.txdriver.energy;

import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;

/** Uses the same preference theme and storage as the existing Settings screen. */
public final class EnergySettingsActivity extends PreferenceActivity implements View.OnClickListener {
    @Override public void onCreate(Bundle state) {
        setTheme(0x7f1101ec);
        super.onCreate(state);
        setTitle("Энергоэффективность");
        getWindow().setBackgroundDrawableResource(android.R.color.black);
        if (getActionBar() != null) getActionBar().setDisplayHomeAsUpEnabled(true);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Color.BLACK);
        float density = getResources().getDisplayMetrics().density;
        TextView header = new TextView(this);
        header.setText("‹  Энергоэффективность");
        header.setTextColor(Color.WHITE);
        header.setTextSize(21);
        header.setGravity(android.view.Gravity.CENTER_VERTICAL);
        header.setPadding((int)(16 * density), 0, (int)(8 * density), 0);
        header.setOnClickListener(this);
        header.setContentDescription("Назад. Энергоэффективность");
        root.addView(header, new LinearLayout.LayoutParams(-1, (int)(64 * density)));
        ListView list = new ListView(this);
        list.setId(android.R.id.list);
        list.setBackgroundColor(Color.BLACK);
        list.setDivider(new ColorDrawable(Color.WHITE));
        list.setDividerHeight(1);
        root.addView(list, new LinearLayout.LayoutParams(-1, 0, 1));
        setContentView(root);
        PreferenceScreen screen = getPreferenceManager().createPreferenceScreen(this);
        setPreferenceScreen(screen);
        add(screen, Energy.UI, "Экономное обновление экрана",
            "Обновлять показания не чаще одного раза в секунду", true);
        add(screen, Energy.HIDDEN, "Не обновлять скрытый экран",
            "При выключенном или скрытом экране приостанавливать обновление показаний", true);
        add(screen, Energy.GPS, "Экономный GPS в ожидании",
            "Без активного заказа запрашивать координаты раз в 5 секунд. При заказе — обычная точность", false);
        add(screen, Energy.PICKUP, "Автоприбытие по событию",
            "Проверять по изменению заказа и координат. Во время ожидания клиента — каждую секунду", true);
        add(screen, Energy.SCREEN, "Экономный режим экрана",
            "Разрешать экрану выключаться в ожидании. При активном заказе — обычный режим", false);
        Preference note = new Preference(this);
        note.setSummary("Заказы, сообщения и автопринятие обрабатываются сразу. Расчёт стоимости и индикатор связи продолжают работать.");
        note.setSelectable(false);
        screen.addPreference(note);
    }

    private void add(PreferenceScreen screen, String key, String title, String summary, boolean value) {
        CheckBoxPreference preference = new CheckBoxPreference(this);
        preference.setKey(key);
        preference.setTitle(title);
        preference.setSummary(summary);
        preference.setDefaultValue(Boolean.valueOf(value));
        screen.addPreference(preference);
    }

    @Override public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) { finish(); return true; }
        return super.onOptionsItemSelected(item);
    }

    @Override public void onClick(View view) { finish(); }
}

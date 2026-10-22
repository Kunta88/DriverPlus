package com.txdriver.energy;
public class Energy {
 public static boolean enabled=true,visible=true;
 public static boolean pickupEnabled() { return enabled; }
 public static void update(com.txdriver.db.Order order) {}
 public static boolean mayRender(android.view.View view) { return visible; }
}

package com.txdriver.db;
public class Order {
 public enum Status { PERFORMING,ARRIVED,ON_ROUTE,CANCELED,DONE }
 public enum Source { NONE,YANDEX,UBER,GETT }
 public static Order current;
 public int orderId=1; public long row=1;
 public Status status=Status.PERFORMING; public Source source=Source.NONE;
 public Address address=new Address();
 public Long getId() { return row; }
 public Address getAddress() { return address; }
 public static Order getCurrentOrder() { return current; }
}

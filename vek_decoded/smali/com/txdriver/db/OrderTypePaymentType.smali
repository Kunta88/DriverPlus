.class public Lcom/txdriver/db/OrderTypePaymentType;
.super Lcom/activeandroid/Model;
.source "OrderTypePaymentType.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "OrderTypesPaymentTypes"
.end annotation


# instance fields
.field public orderType:Lcom/txdriver/db/OrderType;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OrderType"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public paymentType:Lcom/txdriver/db/PaymentType;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "PaymentType"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/db/OrderType;Lcom/txdriver/db/PaymentType;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/txdriver/db/OrderTypePaymentType;->orderType:Lcom/txdriver/db/OrderType;

    .line 19
    iput-object p2, p0, Lcom/txdriver/db/OrderTypePaymentType;->paymentType:Lcom/txdriver/db/PaymentType;

    return-void
.end method

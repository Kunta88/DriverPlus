.class public Lcom/txdriver/ui/activity/NotificationActivity$FinishEvent;
.super Ljava/lang/Object;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/NotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FinishEvent"
.end annotation


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/txdriver/ui/activity/NotificationActivity$FinishEvent;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/txdriver/ui/activity/NotificationActivity$FinishEvent;->message:Ljava/lang/String;

    return-object v0
.end method

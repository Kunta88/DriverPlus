.class public Lcom/txdriver/news/NewsEvents$PCTasksEventCounter;
.super Ljava/lang/Object;
.source "NewsEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/news/NewsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCTasksEventCounter"
.end annotation


# instance fields
.field public pcTasksCounter:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/txdriver/news/NewsEvents$PCTasksEventCounter;->pcTasksCounter:I

    return-void
.end method

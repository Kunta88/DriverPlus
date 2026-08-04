.class public abstract Lcom/txdriver/ui/view/ViewOnClickListener;
.super Ljava/lang/Object;
.source "ViewOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MIN_INTERVAL:I = 0x7d0


# instance fields
.field private lastClickMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final minimumInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/txdriver/ui/view/ViewOnClickListener;->minimumInterval:J

    .line 30
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/txdriver/ui/view/ViewOnClickListener;->lastClickMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/txdriver/ui/view/ViewOnClickListener;->lastClickMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 38
    iget-object v3, p0, Lcom/txdriver/ui/view/ViewOnClickListener;->lastClickMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/txdriver/ui/view/ViewOnClickListener;->minimumInterval:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/ViewOnClickListener;->onViewClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public abstract onViewClick(Landroid/view/View;)V
.end method

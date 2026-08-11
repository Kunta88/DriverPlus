.class public abstract Lcom/txdriver/ui/view/DialogOnClickListener;
.super Ljava/lang/Object;
.source "DialogOnClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final MIN_INTERVAL:I = 0x3e8


# instance fields
.field private lastClickMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/DialogInterface;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final minimumInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 24
    invoke-direct {p0, v0, v1}, Lcom/txdriver/ui/view/DialogOnClickListener;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/txdriver/ui/view/DialogOnClickListener;->minimumInterval:J

    .line 33
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/txdriver/ui/view/DialogOnClickListener;->lastClickMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/txdriver/ui/view/DialogOnClickListener;->lastClickMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 40
    iget-object v3, p0, Lcom/txdriver/ui/view/DialogOnClickListener;->lastClickMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/txdriver/ui/view/DialogOnClickListener;->minimumInterval:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/view/DialogOnClickListener;->onDebouncedClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void
.end method

.method public abstract onDebouncedClick(Landroid/content/DialogInterface;I)V
.end method

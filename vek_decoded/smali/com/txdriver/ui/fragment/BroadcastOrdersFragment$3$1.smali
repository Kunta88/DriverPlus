.class Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3$1;
.super Ljava/lang/Object;
.source "BroadcastOrdersFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/txdriver/db/Order;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;

.field final synthetic val$lat:D

.field final synthetic val$lng:D


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;DD)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3$1;->this$1:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;

    iput-wide p2, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3$1;->val$lat:D

    iput-wide p4, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3$1;->val$lng:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/txdriver/db/Order;Lcom/txdriver/db/Order;)I
    .locals 10

    .line 134
    iget-wide v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3$1;->val$lat:D

    iget-wide v2, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3$1;->val$lng:D

    iget-wide v4, p1, Lcom/txdriver/db/Order;->lat:D

    iget-wide v6, p1, Lcom/txdriver/db/Order;->lng:D

    invoke-static/range {v0 .. v7}, Lcom/txdriver/location/LocationUtils;->distanceBetween(DDDD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3$1;->val$lat:D

    iget-wide v4, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3$1;->val$lng:D

    iget-wide v6, p2, Lcom/txdriver/db/Order;->lat:D

    iget-wide v8, p2, Lcom/txdriver/db/Order;->lng:D

    invoke-static/range {v2 .. v9}, Lcom/txdriver/location/LocationUtils;->distanceBetween(DDDD)D

    move-result-wide p1

    sub-double/2addr v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 131
    check-cast p1, Lcom/txdriver/db/Order;

    check-cast p2, Lcom/txdriver/db/Order;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3$1;->compare(Lcom/txdriver/db/Order;Lcom/txdriver/db/Order;)I

    move-result p1

    return p1
.end method

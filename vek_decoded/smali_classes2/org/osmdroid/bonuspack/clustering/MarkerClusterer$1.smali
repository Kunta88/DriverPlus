.class Lorg/osmdroid/bonuspack/clustering/MarkerClusterer$1;
.super Ljava/lang/Object;
.source "MarkerClusterer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->reversedClusters()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/osmdroid/bonuspack/clustering/StaticCluster;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;


# direct methods
.method constructor <init>(Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer$1;->this$0:Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/osmdroid/bonuspack/clustering/StaticCluster;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer$1;->this$0:Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;

    iget-object v0, v0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mClusters:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer$1;->this$0:Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;

    iget-object v1, v1, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 116
    new-instance v1, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer$1$1;

    invoke-direct {v1, p0, v0}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer$1$1;-><init>(Lorg/osmdroid/bonuspack/clustering/MarkerClusterer$1;Ljava/util/ListIterator;)V

    return-object v1
.end method

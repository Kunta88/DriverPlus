.class public Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "FolderZOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;
    }
.end annotation


# instance fields
.field protected mDescription:Ljava/lang/String;

.field protected mList:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;",
            ">;"
        }
    .end annotation
.end field

.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 86
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mList:Ljava/util/TreeSet;

    const-string v0, ""

    .line 87
    iput-object v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mName:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Lorg/osmdroid/views/overlay/Overlay;)Z
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;F)Z

    move-result p1

    return p1
.end method

.method public add(Lorg/osmdroid/views/overlay/Overlay;F)Z
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mList:Ljava/util/TreeSet;

    new-instance v1, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;

    invoke-direct {v1, p0, p1, p2}, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;-><init>(Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;Lorg/osmdroid/views/overlay/Overlay;F)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 4

    if-eqz p3, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object p3, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mList:Ljava/util/TreeSet;

    invoke-virtual {p3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 179
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;

    .line 181
    iget-object v1, v0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mOverlay:Lorg/osmdroid/views/overlay/Overlay;

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/Overlay;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v2

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->shouldBeDrawn(Lorg/osmdroid/util/BoundingBox;F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 184
    invoke-virtual {v1, p1, p2, v0}, Lorg/osmdroid/views/overlay/Overlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected get(Lorg/osmdroid/views/overlay/Overlay;)Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mList:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;

    .line 119
    iget-object v2, v1, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mOverlay:Lorg/osmdroid/views/overlay/Overlay;

    if-ne v2, p1, :cond_0

    .line 120
    iget-object p1, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mList:Ljava/util/TreeSet;

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Lorg/osmdroid/views/overlay/Overlay;)Z
    .locals 1

    .line 128
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->get(Lorg/osmdroid/views/overlay/Overlay;)Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mList:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBoundingBox(Lorg/osmdroid/views/overlay/Overlay;Lorg/osmdroid/util/BoundingBox;)V
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->get(Lorg/osmdroid/views/overlay/Overlay;)Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mName:Ljava/lang/String;

    return-void
.end method

.method public setZIndex(Lorg/osmdroid/views/overlay/Overlay;F)V
    .locals 1

    .line 143
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->get(Lorg/osmdroid/views/overlay/Overlay;)Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mList:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 147
    iput p2, p1, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mZIndex:F

    .line 148
    iget-object p2, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->mList:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unsetBoundingBox(Lorg/osmdroid/views/overlay/Overlay;)V
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;->get(Lorg/osmdroid/views/overlay/Overlay;)Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->unsetBoundingBox()V

    return-void
.end method

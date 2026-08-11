.class public abstract Lcom/txdriver/ui/fragment/MapFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "MapFragment.java"


# static fields
.field private static final DEFAULT_ZOOM_LEVEL:I = 0x10

.field private static final MAP_CENTER_STATE:Ljava/lang/String; = "map_center_state"

.field private static final ZOOM_LEVEL_STATE:Ljava/lang/String; = "zoom_level_state"


# instance fields
.field private mMap:Lcom/txdriver/ui/fragment/map/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/MapFragment;)Lcom/txdriver/ui/fragment/map/Map;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/txdriver/ui/fragment/MapFragment;->mMap:Lcom/txdriver/ui/fragment/map/Map;

    return-object p0
.end method

.method private createMap(Landroid/content/Context;)Lcom/txdriver/ui/fragment/map/Map;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/txdriver/ui/fragment/MapFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getMap()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Yandex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/txdriver/ui/fragment/map/YandexMap;

    invoke-direct {v0, p1}, Lcom/txdriver/ui/fragment/map/YandexMap;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lcom/txdriver/ui/fragment/map/OsmMap;

    invoke-direct {v0, p1}, Lcom/txdriver/ui/fragment/map/OsmMap;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getMap()Lcom/txdriver/ui/fragment/map/Map;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/txdriver/ui/fragment/MapFragment;->mMap:Lcom/txdriver/ui/fragment/map/Map;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/txdriver/ui/fragment/MapFragment;->mMap:Lcom/txdriver/ui/fragment/map/Map;

    const/16 v1, 0x10

    const-string v2, "zoom_level_state"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/map/Map;->setZoomLevel(I)V

    const-string v0, "map_center_state"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/ui/fragment/map/Point;

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/txdriver/ui/fragment/MapFragment;->mMap:Lcom/txdriver/ui/fragment/map/Map;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/fragment/map/Map;->setCenter(Lcom/txdriver/ui/fragment/map/Point;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/MapFragment;->mMap:Lcom/txdriver/ui/fragment/map/Map;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Map;->addOverlays()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c005a

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090167

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const p3, 0x7f090169

    .line 35
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/txdriver/ui/fragment/MapFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/MapFragment$1;-><init>(Lcom/txdriver/ui/fragment/MapFragment;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f09016a

    .line 41
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/txdriver/ui/fragment/MapFragment$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/MapFragment$2;-><init>(Lcom/txdriver/ui/fragment/MapFragment;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090168

    .line 47
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/txdriver/ui/fragment/MapFragment$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/MapFragment$3;-><init>(Lcom/txdriver/ui/fragment/MapFragment;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f09016b

    .line 53
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/txdriver/ui/fragment/MapFragment$4;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/MapFragment$4;-><init>(Lcom/txdriver/ui/fragment/MapFragment;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p3, p0, Lcom/txdriver/ui/fragment/MapFragment;->app:Lcom/txdriver/App;

    invoke-direct {p0, p3}, Lcom/txdriver/ui/fragment/MapFragment;->createMap(Landroid/content/Context;)Lcom/txdriver/ui/fragment/map/Map;

    move-result-object p3

    iput-object p3, p0, Lcom/txdriver/ui/fragment/MapFragment;->mMap:Lcom/txdriver/ui/fragment/map/Map;

    .line 60
    invoke-virtual {p3}, Lcom/txdriver/ui/fragment/map/Map;->createView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/txdriver/ui/fragment/MapFragment;->mMap:Lcom/txdriver/ui/fragment/map/Map;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/map/Map;->clearCache()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onPause()V

    .line 103
    iget-object v0, p0, Lcom/txdriver/ui/fragment/MapFragment;->mMap:Lcom/txdriver/ui/fragment/map/Map;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/map/Map;->setEnabledMyLocation(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/txdriver/ui/fragment/MapFragment;->mMap:Lcom/txdriver/ui/fragment/map/Map;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/map/Map;->setEnabledMyLocation(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/txdriver/ui/fragment/MapFragment;->mMap:Lcom/txdriver/ui/fragment/map/Map;

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/map/Map;->getZoomLevel()I

    move-result v0

    const-string v1, "zoom_level_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    iget-object v0, p0, Lcom/txdriver/ui/fragment/MapFragment;->mMap:Lcom/txdriver/ui/fragment/map/Map;

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/map/Map;->getCenter()Lcom/txdriver/ui/fragment/map/Point;

    move-result-object v0

    const-string v1, "map_center_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

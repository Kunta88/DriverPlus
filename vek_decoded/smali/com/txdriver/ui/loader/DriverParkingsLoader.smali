.class public Lcom/txdriver/ui/loader/DriverParkingsLoader;
.super Lcom/activeandroid/ModelLoader;
.source "DriverParkingsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/activeandroid/ModelLoader<",
        "Lcom/txdriver/db/Parking;",
        ">;"
    }
.end annotation


# instance fields
.field private final app:Lcom/txdriver/App;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/DriverParking;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    iput-object p1, p0, Lcom/txdriver/ui/loader/DriverParkingsLoader;->app:Lcom/txdriver/App;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/txdriver/ui/loader/DriverParkingsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Parking;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/txdriver/ui/loader/DriverParkingsLoader;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txdriver/db/Parking;->getDriverParkingsQuery(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

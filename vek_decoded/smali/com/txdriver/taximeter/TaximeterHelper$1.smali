.class final Lcom/txdriver/taximeter/TaximeterHelper$1;
.super Landroid/os/AsyncTask;
.source "TaximeterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/taximeter/TaximeterHelper;->saveTaximeterState(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$app:Lcom/txdriver/App;

.field final synthetic val$taximeter:Lcom/txdriver/taximeter/Taximeter;


# direct methods
.method constructor <init>(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/App;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/txdriver/taximeter/TaximeterHelper$1;->val$taximeter:Lcom/txdriver/taximeter/Taximeter;

    iput-object p2, p0, Lcom/txdriver/taximeter/TaximeterHelper$1;->val$app:Lcom/txdriver/App;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 195
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/txdriver/taximeter/TaximeterHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 198
    new-instance p1, Lcom/txdriver/taximeter/state/TaximeterState;

    iget-object v0, p0, Lcom/txdriver/taximeter/TaximeterHelper$1;->val$taximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-direct {p1, v0}, Lcom/txdriver/taximeter/state/TaximeterState;-><init>(Lcom/txdriver/taximeter/Taximeter;)V

    .line 199
    iget-object v0, p0, Lcom/txdriver/taximeter/TaximeterHelper$1;->val$app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txdriver/preferences/Preferences;->saveTaximeterState(Lcom/txdriver/taximeter/state/TaximeterState;)V

    .line 200
    invoke-static {}, Lcom/txdriver/db/Order;->getCurrentOrder()Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v1, Lcom/txdriver/db/Order$Status;->ON_ROUTE:Lcom/txdriver/db/Order$Status;

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/txdriver/taximeter/TaximeterHelper$1;->val$app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/packet/PushTaximeterStatePacket;

    iget-object v2, p0, Lcom/txdriver/taximeter/TaximeterHelper$1;->val$app:Lcom/txdriver/App;

    iget-object v3, p0, Lcom/txdriver/taximeter/TaximeterHelper$1;->val$taximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-direct {v1, v2, p1, v3}, Lcom/txdriver/socket/packet/PushTaximeterStatePacket;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/taximeter/Taximeter;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

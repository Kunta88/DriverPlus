.class final Lcom/txdriver/taximeter/TaximeterHelper$2;
.super Landroid/os/AsyncTask;
.source "TaximeterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/taximeter/TaximeterHelper;->restoreTaximeterState(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;)V
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
.method constructor <init>(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/txdriver/taximeter/TaximeterHelper$2;->val$app:Lcom/txdriver/App;

    iput-object p2, p0, Lcom/txdriver/taximeter/TaximeterHelper$2;->val$taximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 210
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/txdriver/taximeter/TaximeterHelper$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/txdriver/taximeter/TaximeterHelper$2;->val$app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getTaximeterState()Lcom/txdriver/taximeter/state/TaximeterState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/txdriver/taximeter/TaximeterHelper$2;->val$taximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {p1, v0}, Lcom/txdriver/taximeter/state/TaximeterState;->initTaximeter(Lcom/txdriver/taximeter/Taximeter;)Lcom/txdriver/taximeter/Taximeter;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/txdriver/taximeter/TaximeterHelper$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 222
    iget-object p1, p0, Lcom/txdriver/taximeter/TaximeterHelper$2;->val$taximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/txdriver/taximeter/TaximeterHelper$2;->val$taximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 223
    iget-object p1, p0, Lcom/txdriver/taximeter/TaximeterHelper$2;->val$taximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->startUpdates()V

    .line 224
    iget-object p1, p0, Lcom/txdriver/taximeter/TaximeterHelper$2;->val$taximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->startTimer()V

    :cond_0
    return-void
.end method

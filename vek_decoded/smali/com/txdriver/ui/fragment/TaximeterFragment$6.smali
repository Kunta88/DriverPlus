.class Lcom/txdriver/ui/fragment/TaximeterFragment$6;
.super Lcom/activeandroid/ModelLoader;
.source "TaximeterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/TaximeterFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/activeandroid/ModelLoader<",
        "Lcom/txdriver/db/Tariff;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/TaximeterFragment;Landroid/content/Context;Lcom/activeandroid/query/From;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$6;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-direct {p0, p2, p3}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment$6;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Tariff;",
            ">;"
        }
    .end annotation

    .line 329
    invoke-super {p0}, Lcom/activeandroid/ModelLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$6;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$100(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/taximeter/Taximeter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 331
    iget-object v2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$6;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-static {v2}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$100(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/taximeter/Taximeter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.class Lcom/txdriver/taximeter/Taximeter$4;
.super Ljava/lang/Object;
.source "Taximeter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/taximeter/Taximeter;->onTariffZoneChanged(Lcom/txdriver/db/TariffZone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/taximeter/Taximeter;

.field final synthetic val$tariffZone:Lcom/txdriver/db/TariffZone;


# direct methods
.method constructor <init>(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/TariffZone;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/txdriver/taximeter/Taximeter$4;->this$0:Lcom/txdriver/taximeter/Taximeter;

    iput-object p2, p0, Lcom/txdriver/taximeter/Taximeter$4;->val$tariffZone:Lcom/txdriver/db/TariffZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter$4;->this$0:Lcom/txdriver/taximeter/Taximeter;

    invoke-static {v0}, Lcom/txdriver/taximeter/Taximeter;->access$300(Lcom/txdriver/taximeter/Taximeter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/taximeter/TaximeterUpdateListener;

    .line 217
    iget-object v2, p0, Lcom/txdriver/taximeter/Taximeter$4;->val$tariffZone:Lcom/txdriver/db/TariffZone;

    invoke-interface {v1, v2}, Lcom/txdriver/taximeter/TaximeterUpdateListener;->onTariffZoneChanged(Lcom/txdriver/db/TariffZone;)V

    goto :goto_0

    :cond_0
    return-void
.end method

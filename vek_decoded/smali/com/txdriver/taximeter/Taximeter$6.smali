.class Lcom/txdriver/taximeter/Taximeter$6;
.super Ljava/lang/Object;
.source "Taximeter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/taximeter/Taximeter;->onTaximeterIdleChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/taximeter/Taximeter;

.field final synthetic val$idle:Z


# direct methods
.method constructor <init>(Lcom/txdriver/taximeter/Taximeter;Z)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/txdriver/taximeter/Taximeter$6;->this$0:Lcom/txdriver/taximeter/Taximeter;

    iput-boolean p2, p0, Lcom/txdriver/taximeter/Taximeter$6;->val$idle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/txdriver/taximeter/Taximeter$6;->this$0:Lcom/txdriver/taximeter/Taximeter;

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

    .line 356
    iget-boolean v2, p0, Lcom/txdriver/taximeter/Taximeter$6;->val$idle:Z

    invoke-interface {v1, v2}, Lcom/txdriver/taximeter/TaximeterUpdateListener;->onIdleChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

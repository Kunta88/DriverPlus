.class Lcom/txdriver/ui/loader/DriversLoader$1;
.super Landroid/database/DataSetObserver;
.source "DriversLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/loader/DriversLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/loader/DriversLoader;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/loader/DriversLoader;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/txdriver/ui/loader/DriversLoader$1;->this$0:Lcom/txdriver/ui/loader/DriversLoader;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/txdriver/ui/loader/DriversLoader$1;->this$0:Lcom/txdriver/ui/loader/DriversLoader;

    invoke-virtual {v1}, Lcom/txdriver/ui/loader/DriversLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    new-instance v1, Lcom/txdriver/ui/loader/DriversLoader$1$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/loader/DriversLoader$1$1;-><init>(Lcom/txdriver/ui/loader/DriversLoader$1;)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

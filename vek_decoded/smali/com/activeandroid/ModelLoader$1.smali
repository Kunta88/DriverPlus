.class Lcom/activeandroid/ModelLoader$1;
.super Landroid/database/DataSetObserver;
.source "ModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/activeandroid/ModelLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/activeandroid/ModelLoader;


# direct methods
.method constructor <init>(Lcom/activeandroid/ModelLoader;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/activeandroid/ModelLoader$1;->this$0:Lcom/activeandroid/ModelLoader;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 152
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 161
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/activeandroid/ModelLoader$1;->this$0:Lcom/activeandroid/ModelLoader;

    invoke-virtual {v1}, Lcom/activeandroid/ModelLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    new-instance v1, Lcom/activeandroid/ModelLoader$1$1;

    invoke-direct {v1, p0}, Lcom/activeandroid/ModelLoader$1$1;-><init>(Lcom/activeandroid/ModelLoader$1;)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

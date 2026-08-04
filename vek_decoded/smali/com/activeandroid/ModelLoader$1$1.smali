.class Lcom/activeandroid/ModelLoader$1$1;
.super Ljava/lang/Object;
.source "ModelLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/activeandroid/ModelLoader$1;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/activeandroid/ModelLoader$1;


# direct methods
.method constructor <init>(Lcom/activeandroid/ModelLoader$1;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/activeandroid/ModelLoader$1$1;->this$1:Lcom/activeandroid/ModelLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/activeandroid/ModelLoader$1$1;->this$1:Lcom/activeandroid/ModelLoader$1;

    iget-object v0, v0, Lcom/activeandroid/ModelLoader$1;->this$0:Lcom/activeandroid/ModelLoader;

    invoke-virtual {v0}, Lcom/activeandroid/ModelLoader;->onContentChanged()V

    return-void
.end method

.class Lcom/txdriver/ui/loader/DriversLoader$1$1;
.super Ljava/lang/Object;
.source "DriversLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/loader/DriversLoader$1;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/loader/DriversLoader$1;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/loader/DriversLoader$1;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/txdriver/ui/loader/DriversLoader$1$1;->this$1:Lcom/txdriver/ui/loader/DriversLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/txdriver/ui/loader/DriversLoader$1$1;->this$1:Lcom/txdriver/ui/loader/DriversLoader$1;

    iget-object v0, v0, Lcom/txdriver/ui/loader/DriversLoader$1;->this$0:Lcom/txdriver/ui/loader/DriversLoader;

    invoke-virtual {v0}, Lcom/txdriver/ui/loader/DriversLoader;->onContentChanged()V

    return-void
.end method

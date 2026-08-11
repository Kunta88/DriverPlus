.class Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog$1;
.super Ljava/lang/Object;
.source "IndeterminateProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog$1;->this$0:Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog$1;->this$0:Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->access$000(Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;)V

    return-void
.end method

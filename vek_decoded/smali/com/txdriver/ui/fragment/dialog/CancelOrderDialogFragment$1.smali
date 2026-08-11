.class Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment$1;
.super Ljava/lang/Object;
.source "CancelOrderDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 35
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;)Lcom/activeandroid/widget/ModelAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/activeandroid/widget/ModelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/RejectReason;

    if-eqz p1, :cond_0

    .line 37
    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;

    iget-object p2, p2, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p2}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p2

    new-instance v0, Lcom/txdriver/socket/packet/CancelOrderPacket;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->access$100(Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;)I

    move-result v1

    iget p1, p1, Lcom/txdriver/db/RejectReason;->reasonId:I

    int-to-byte p1, p1

    invoke-direct {v0, v1, p1}, Lcom/txdriver/socket/packet/CancelOrderPacket;-><init>(IB)V

    invoke-virtual {p2, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    :cond_0
    return-void
.end method

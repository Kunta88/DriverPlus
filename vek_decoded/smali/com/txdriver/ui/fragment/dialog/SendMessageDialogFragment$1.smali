.class Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$1;
.super Ljava/lang/Object;
.source "SendMessageDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 35
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;

    .line 36
    invoke-static {v0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;)Lcom/activeandroid/widget/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/activeandroid/widget/ModelAdapter;->getItemId(I)J

    move-result-wide v0

    .line 35
    invoke-static {p1, v0, v1}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;J)V

    return-void
.end method

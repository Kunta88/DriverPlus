.class Lcom/txdriver/ui/activity/AcceptOrderActivity$3$2;
.super Ljava/lang/Object;
.source "AcceptOrderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->onViewClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/activity/AcceptOrderActivity$3;

.field final synthetic val$fragment:Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/AcceptOrderActivity$3;Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$2;->this$1:Lcom/txdriver/ui/activity/AcceptOrderActivity$3;

    iput-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$2;->val$fragment:Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$2;->val$fragment:Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->dismiss()V

    return-void
.end method

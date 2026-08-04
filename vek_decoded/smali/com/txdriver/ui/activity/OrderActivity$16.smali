.class Lcom/txdriver/ui/activity/OrderActivity$16;
.super Ljava/lang/Object;
.source "OrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/OrderActivity;->showBottomSheetMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/OrderActivity;

.field final synthetic val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$16;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$16;->val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 529
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$16;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/OrderActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$16;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v0

    iget v0, v0, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {p1, v0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->show(Landroidx/fragment/app/FragmentManager;I)Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;

    .line 530
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$16;->val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

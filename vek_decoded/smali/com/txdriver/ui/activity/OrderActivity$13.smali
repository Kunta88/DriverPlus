.class Lcom/txdriver/ui/activity/OrderActivity$13;
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

    .line 502
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$13;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$13;->val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 505
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$13;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    .line 506
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$13;->val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

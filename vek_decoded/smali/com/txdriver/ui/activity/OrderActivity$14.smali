.class Lcom/txdriver/ui/activity/OrderActivity$14;
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

    .line 510
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$14;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$14;->val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 513
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$14;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity$14;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    const-class v2, Lcom/txdriver/ui/activity/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 514
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$14;->val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

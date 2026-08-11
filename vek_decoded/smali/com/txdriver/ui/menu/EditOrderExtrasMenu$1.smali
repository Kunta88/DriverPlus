.class Lcom/txdriver/ui/menu/EditOrderExtrasMenu$1;
.super Ljava/lang/Object;
.source "EditOrderExtrasMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/menu/EditOrderExtrasMenu;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$1;->this$0:Lcom/txdriver/ui/menu/EditOrderExtrasMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$1;->this$0:Lcom/txdriver/ui/menu/EditOrderExtrasMenu;

    invoke-static {p1}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->access$000(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

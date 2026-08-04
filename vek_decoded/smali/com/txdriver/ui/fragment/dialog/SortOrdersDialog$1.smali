.class Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog$1;
.super Ljava/lang/Object;
.source "SortOrdersDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;->onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AppCompatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;

.field final synthetic val$filter:Lcom/txdriver/filter/FilterPreferences;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;Lcom/txdriver/filter/FilterPreferences;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog$1;->this$0:Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog$1;->val$filter:Lcom/txdriver/filter/FilterPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 49
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    .line 51
    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog$1;->val$filter:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {p2, p1}, Lcom/txdriver/filter/FilterPreferences;->setSort(I)V

    .line 52
    const-class p1, Lcom/txdriver/db/Order;

    invoke-static {p1}, Lcom/txdriver/db/Order;->notifyChanged(Ljava/lang/Class;)V

    return-void
.end method

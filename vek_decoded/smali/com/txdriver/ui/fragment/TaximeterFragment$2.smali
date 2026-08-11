.class Lcom/txdriver/ui/fragment/TaximeterFragment$2;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "TaximeterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/TaximeterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/TaximeterFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$2;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 76
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$2;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100253

    .line 77
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$2;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    .line 78
    invoke-static {v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$000(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/activeandroid/widget/ModelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$2;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$300(Lcom/txdriver/ui/fragment/TaximeterFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

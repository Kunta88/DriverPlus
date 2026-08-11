.class Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$1;
.super Ljava/lang/Object;
.source "PhotoControlTaskPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

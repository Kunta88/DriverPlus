.class Lcom/txdriver/ui/fragment/RatingFragment$2;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "RatingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/RatingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/RatingFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/RatingFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/txdriver/ui/fragment/RatingFragment$2;->this$0:Lcom/txdriver/ui/fragment/RatingFragment;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/txdriver/ui/fragment/RatingFragment$2;->this$0:Lcom/txdriver/ui/fragment/RatingFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/RatingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/txdriver/ui/activity/DriversRatingsActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.class Lcom/txdriver/ui/fragment/NewslettersFragment$1;
.super Ljava/lang/Object;
.source "NewslettersFragment.java"

# interfaces
.implements Lcom/txdriver/ui/adapter/NewslettersAdapter$OnNewsLetterClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/NewslettersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/NewslettersFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$1;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewsLetterClick(Lcom/txdriver/json/Newsletter;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$1;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/NewslettersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/txdriver/ui/activity/NewslettersActivity;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/activity/NewslettersActivity;->openNewsletter(Lcom/txdriver/json/Newsletter;)V

    return-void
.end method

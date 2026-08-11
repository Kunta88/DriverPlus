.class Lcom/txdriver/ui/fragment/NewslettersFragment$2$1;
.super Ljava/lang/Object;
.source "NewslettersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/NewslettersFragment$2;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/fragment/NewslettersFragment$2;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/NewslettersFragment$2;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/NewslettersFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/NewslettersFragment$2;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/NewslettersFragment$2;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/NewslettersFragment$2;

    iget-object v1, v1, Lcom/txdriver/ui/fragment/NewslettersFragment$2;->this$0:Lcom/txdriver/ui/fragment/NewslettersFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$400(Lcom/txdriver/ui/fragment/NewslettersFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->access$700(Lcom/txdriver/ui/fragment/NewslettersFragment;I)V

    return-void
.end method

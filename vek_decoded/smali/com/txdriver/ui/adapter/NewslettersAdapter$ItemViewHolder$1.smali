.class Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder$1;
.super Ljava/lang/Object;
.source "NewslettersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;-><init>(Lcom/txdriver/ui/adapter/NewslettersAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;

.field final synthetic val$this$0:Lcom/txdriver/ui/adapter/NewslettersAdapter;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;Lcom/txdriver/ui/adapter/NewslettersAdapter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder$1;->val$this$0:Lcom/txdriver/ui/adapter/NewslettersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 97
    iget-object p1, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;->this$0:Lcom/txdriver/ui/adapter/NewslettersAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/NewslettersAdapter;->access$000(Lcom/txdriver/ui/adapter/NewslettersAdapter;)Lcom/txdriver/ui/adapter/NewslettersAdapter$OnNewsLetterClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;->this$0:Lcom/txdriver/ui/adapter/NewslettersAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/NewslettersAdapter;->access$000(Lcom/txdriver/ui/adapter/NewslettersAdapter;)Lcom/txdriver/ui/adapter/NewslettersAdapter$OnNewsLetterClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;

    iget-object v0, v0, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;->this$0:Lcom/txdriver/ui/adapter/NewslettersAdapter;

    invoke-static {v0}, Lcom/txdriver/ui/adapter/NewslettersAdapter;->access$100(Lcom/txdriver/ui/adapter/NewslettersAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;

    invoke-virtual {v1}, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/Newsletter;

    invoke-interface {p1, v0}, Lcom/txdriver/ui/adapter/NewslettersAdapter$OnNewsLetterClickListener;->onNewsLetterClick(Lcom/txdriver/json/Newsletter;)V

    :cond_0
    return-void
.end method

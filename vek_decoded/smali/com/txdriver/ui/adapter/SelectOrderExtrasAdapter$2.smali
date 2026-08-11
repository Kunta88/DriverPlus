.class Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$2;
.super Ljava/lang/Object;
.source "SelectOrderExtrasAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;->onBindViewHolder(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;

.field final synthetic val$extra:Lcom/txdriver/socket/data/GlobalOrderExtra;

.field final synthetic val$holder:Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;Lcom/txdriver/socket/data/GlobalOrderExtra;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$2;->this$0:Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$2;->val$holder:Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;

    iput-object p3, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$2;->val$extra:Lcom/txdriver/socket/data/GlobalOrderExtra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$2;->val$holder:Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->access$000(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$2;->val$holder:Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->access$000(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 58
    iget-object p1, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$2;->val$extra:Lcom/txdriver/socket/data/GlobalOrderExtra;

    iput-boolean v0, p1, Lcom/txdriver/socket/data/GlobalOrderExtra;->isSelected:Z

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$2;->val$holder:Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->access$000(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 61
    iget-object p1, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$2;->val$extra:Lcom/txdriver/socket/data/GlobalOrderExtra;

    iput-boolean v0, p1, Lcom/txdriver/socket/data/GlobalOrderExtra;->isSelected:Z

    :goto_0
    return-void
.end method

.class Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$1;
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

.field final synthetic val$holder:Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$1;->this$0:Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$1;->val$holder:Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$1;->val$holder:Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->access$000(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

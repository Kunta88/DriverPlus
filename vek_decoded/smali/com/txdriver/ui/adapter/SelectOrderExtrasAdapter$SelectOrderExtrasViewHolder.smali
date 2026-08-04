.class public Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelectOrderExtrasAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectOrderExtrasViewHolder"
.end annotation


# instance fields
.field private extraCheckedTextView:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901de

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->extraCheckedTextView:Landroid/widget/CheckedTextView;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->extraCheckedTextView:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.class public Lcom/txdriver/ui/adapter/ChatMessageAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChatMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/ChatMessageAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/txdriver/db/ChatMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final dateTimeFormat:Ljava/text/DateFormat;

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/ChatMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 27
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateTimeFormat()Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->dateTimeFormat:Ljava/text/DateFormat;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->objects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/txdriver/db/ChatMessage;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/ChatMessage;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->getItem(I)Lcom/txdriver/db/ChatMessage;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/ChatMessage;

    invoke-virtual {p1}, Lcom/txdriver/db/ChatMessage;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition(Lcom/txdriver/db/ChatMessage;)I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPosition(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/txdriver/db/ChatMessage;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->getPosition(Lcom/txdriver/db/ChatMessage;)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0069

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance p3, Lcom/txdriver/ui/adapter/ChatMessageAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/txdriver/ui/adapter/ChatMessageAdapter$ViewHolder;-><init>(Lcom/txdriver/ui/adapter/ChatMessageAdapter$1;)V

    const v0, 0x7f09008f

    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/adapter/ChatMessageAdapter$ViewHolder;->textTextView:Landroid/widget/TextView;

    const v0, 0x7f090090

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/adapter/ChatMessageAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    const v0, 0x7f09008e

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/txdriver/ui/adapter/ChatMessageAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/txdriver/ui/adapter/ChatMessageAdapter$ViewHolder;

    .line 75
    :goto_0
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->getItem(I)Lcom/txdriver/db/ChatMessage;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 77
    iget-object v0, p3, Lcom/txdriver/ui/adapter/ChatMessageAdapter$ViewHolder;->textTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/txdriver/db/ChatMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p3, Lcom/txdriver/ui/adapter/ChatMessageAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->dateTimeFormat:Ljava/text/DateFormat;

    iget-object v2, p1, Lcom/txdriver/db/ChatMessage;->time:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    iget-object v1, p1, Lcom/txdriver/db/ChatMessage;->type:Lcom/txdriver/db/ChatMessage$Type;

    sget-object v2, Lcom/txdriver/db/ChatMessage$Type;->INBOUND:Lcom/txdriver/db/ChatMessage$Type;

    if-ne v1, v2, :cond_1

    const v1, 0x800003

    goto :goto_1

    :cond_1
    const v1, 0x800005

    :goto_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 81
    iget-object v1, p3, Lcom/txdriver/ui/adapter/ChatMessageAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object p3, p3, Lcom/txdriver/ui/adapter/ChatMessageAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    iget-object p1, p1, Lcom/txdriver/db/ChatMessage;->type:Lcom/txdriver/db/ChatMessage$Type;

    sget-object v0, Lcom/txdriver/db/ChatMessage$Type;->INBOUND:Lcom/txdriver/db/ChatMessage$Type;

    if-ne p1, v0, :cond_2

    const p1, 0x7f0800e8

    goto :goto_2

    :cond_2
    const p1, 0x7f0800e9

    :goto_2
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_3
    return-object p2
.end method

.method public setObjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/db/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->objects:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    return-void
.end method

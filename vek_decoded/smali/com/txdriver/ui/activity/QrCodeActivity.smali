.class public Lcom/txdriver/ui/activity/QrCodeActivity;
.super Lcom/txdriver/ui/activity/BaseDialogActivity;
.source "QrCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/activity/QrCodeActivity$QrCodeActivityRunner;,
        Lcom/txdriver/ui/activity/QrCodeActivity$generateQrCode;
    }
.end annotation


# static fields
.field public static final QR_CODE_EXTRA:Ljava/lang/String; = "qr_code_extra"


# instance fields
.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/QrCodeData;",
            ">;"
        }
    .end annotation
.end field

.field nextQrCodeButton:Landroid/widget/Button;

.field private nextQrCodeButtonClickListener:Landroid/view/View$OnClickListener;

.field qrCodeImageView:Landroid/widget/ImageView;

.field qrCodeTextView:Landroid/widget/TextView;

.field selected_idx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->selected_idx:I

    .line 34
    new-instance v0, Lcom/txdriver/ui/activity/QrCodeActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/QrCodeActivity$1;-><init>(Lcom/txdriver/ui/activity/QrCodeActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->nextQrCodeButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    .line 89
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/QrCodeActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/QrCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "qr_code_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 93
    new-instance v1, Lcom/txdriver/ui/activity/QrCodeActivity$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/QrCodeActivity$2;-><init>(Lcom/txdriver/ui/activity/QrCodeActivity;)V

    invoke-virtual {v1}, Lcom/txdriver/ui/activity/QrCodeActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 94
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->data:Ljava/util/List;

    const p1, 0x7f09023c

    .line 96
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/QrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->qrCodeTextView:Landroid/widget/TextView;

    const p1, 0x7f09023b

    .line 97
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/QrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    const p1, 0x7f0901b0

    .line 98
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/QrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->nextQrCodeButton:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->nextQrCodeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/QrCodeActivity;->showQrCode()V

    return-void
.end method

.method public showQrCode()V
    .locals 5

    .line 42
    iget v0, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->selected_idx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 44
    iget-object v2, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/QrCodeActivity;->finish()V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/socket/data/QrCodeData;

    .line 48
    iget-object v3, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->qrCodeTextView:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/txdriver/socket/data/QrCodeData;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v3, Lcom/txdriver/ui/activity/QrCodeActivity$generateQrCode;

    iget-object v4, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Lcom/txdriver/ui/activity/QrCodeActivity$generateQrCode;-><init>(Lcom/txdriver/ui/activity/QrCodeActivity;Landroid/widget/ImageView;)V

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v2, v2, Lcom/txdriver/socket/data/QrCodeData;->content:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v3, v1}, Lcom/txdriver/ui/activity/QrCodeActivity$generateQrCode;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    iput v0, p0, Lcom/txdriver/ui/activity/QrCodeActivity;->selected_idx:I

    :goto_0
    return-void
.end method

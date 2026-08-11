.class Lcom/txdriver/ui/activity/QrCodeActivity$1;
.super Ljava/lang/Object;
.source "QrCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/QrCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/QrCodeActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/QrCodeActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/txdriver/ui/activity/QrCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/QrCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/txdriver/ui/activity/QrCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/QrCodeActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/QrCodeActivity;->showQrCode()V

    return-void
.end method

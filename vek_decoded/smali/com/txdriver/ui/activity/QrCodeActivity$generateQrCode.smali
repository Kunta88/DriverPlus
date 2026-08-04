.class Lcom/txdriver/ui/activity/QrCodeActivity$generateQrCode;
.super Landroid/os/AsyncTask;
.source "QrCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/QrCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "generateQrCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final WIDTH:I = 0x1f4


# instance fields
.field bmImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/txdriver/ui/activity/QrCodeActivity;


# direct methods
.method public constructor <init>(Lcom/txdriver/ui/activity/QrCodeActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/txdriver/ui/activity/QrCodeActivity$generateQrCode;->this$0:Lcom/txdriver/ui/activity/QrCodeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/txdriver/ui/activity/QrCodeActivity$generateQrCode;->bmImage:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    .line 63
    aget-object p1, p1, v0

    .line 64
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    const/4 v2, 0x0

    .line 68
    :try_start_0
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v4, 0x1f4

    invoke-interface {v1, p1, v3, v4, v4}, Lcom/google/zxing/Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 69
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    .line 72
    invoke-virtual {p1, v1, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v5, -0x1

    :goto_2
    invoke-virtual {v2, v1, v3, v5}, Landroid/graphics/Bitmap;->setPixel(III)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Lcom/google/zxing/WriterException;->printStackTrace()V

    :cond_2
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/QrCodeActivity$generateQrCode;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/txdriver/ui/activity/QrCodeActivity$generateQrCode;->bmImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/QrCodeActivity$generateQrCode;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

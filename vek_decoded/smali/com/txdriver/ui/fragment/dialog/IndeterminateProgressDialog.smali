.class public Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "IndeterminateProgressDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IndeterminateProgressDialog"


# instance fields
.field private mActivityReady:Z

.field private mAllowStateLoss:Z

.field private mCalledSuperDismiss:Z

.field private final mDismisser:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMinDisplayTime:J

.field private mOldDialog:Landroid/app/Dialog;

.field private mShowTime:J

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mShowTime:J

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    .line 31
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mCalledSuperDismiss:Z

    .line 33
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog$1;-><init>(Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mDismisser:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->superDismiss()V

    return-void
.end method

.method private dismissWhenReady()V
    .locals 5

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mShowTime:J

    sub-long/2addr v0, v2

    .line 195
    iget-wide v2, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mMinDisplayTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 197
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mDismisser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v0

    .line 201
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mDismisser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public static hide(Lcom/txdriver/ui/activity/BaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 206
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 207
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;

    if-eqz p1, :cond_0

    .line 210
    :try_start_0
    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->dismissAllowingStateLoss()V

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/lang/String;)Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;
    .locals 1

    .line 59
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;-><init>()V

    .line 60
    iput-object p1, v0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mTitle:Ljava/lang/CharSequence;

    .line 61
    iput-object p2, v0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 62
    iput-wide p3, v0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mMinDisplayTime:J

    .line 63
    invoke-virtual {v0, p0, p5}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mShowTime:J

    const/4 p0, 0x0

    .line 66
    invoke-virtual {v0, p0}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method public static show(Lcom/txdriver/ui/activity/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 46
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result p0

    int-to-long v4, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/lang/String;)Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private superDismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mCalledSuperDismiss:Z

    .line 168
    iget-boolean v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    if-eqz v0, :cond_1

    .line 171
    iget-boolean v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mAllowStateLoss:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-super {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mAllowStateLoss:Z

    .line 97
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->dismissWhenReady()V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mAllowStateLoss:Z

    .line 108
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->dismissWhenReady()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c004f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x102000b

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 124
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mTitle:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mOldDialog:Landroid/app/Dialog;

    .line 160
    invoke-super {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mOldDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onStart()V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    .line 140
    iget-boolean v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mCalledSuperDismiss:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->superDismiss()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onStop()V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMinDisplayTime(J)V
    .locals 0

    .line 227
    iput-wide p1, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mMinDisplayTime:J

    return-void
.end method

.method public setShowTime(J)V
    .locals 0

    .line 231
    iput-wide p1, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mShowTime:J

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/IndeterminateProgressDialog;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 0

    .line 83
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 74
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

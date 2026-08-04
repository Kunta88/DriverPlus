.class public Lcom/txdriver/ui/activity/InboundQuestionActivity$FinishEvent;
.super Ljava/lang/Object;
.source "InboundQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/InboundQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FinishEvent"
.end annotation


# instance fields
.field private questionId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$FinishEvent;->questionId:J

    return-void
.end method


# virtual methods
.method public getQuestionId()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$FinishEvent;->questionId:J

    return-wide v0
.end method

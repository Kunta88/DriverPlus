.class public abstract Lru/yandex/core/InternalSignalStrengthListener;
.super Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method abstract register(Landroid/content/Context;)V
.end method

.method abstract unregister(Landroid/content/Context;)V
.end method

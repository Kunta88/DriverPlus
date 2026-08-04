.class final Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;
    .locals 1

    .line 314
    new-instance v0, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;

    invoke-direct {v0, p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;
    .locals 0

    .line 318
    new-array p1, p1, [Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState$1;->newArray(I)[Lcom/h6ah4i/android/compat/preference/MultiSelectListPreferenceCompat$SavedState;

    move-result-object p1

    return-object p1
.end method

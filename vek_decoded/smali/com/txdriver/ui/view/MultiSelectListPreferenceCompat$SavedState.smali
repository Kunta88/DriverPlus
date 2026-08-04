.class Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "MultiSelectListPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public newValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preferenceChanged:Z

.field public values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 293
    new-instance v0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState$1;

    invoke-direct {v0}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState$1;-><init>()V

    sput-object v0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 307
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 308
    invoke-static {p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->readStringSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->values:Ljava/util/Set;

    .line 309
    invoke-static {p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->readStringSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->newValues:Ljava/util/Set;

    .line 310
    invoke-static {p1}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->readBoolean(Landroid/os/Parcel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->preferenceChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method private static readBoolean(Landroid/os/Parcel;)Z
    .locals 0

    .line 329
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static readStringSet(Landroid/os/Parcel;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 315
    new-array v1, v0, [Ljava/lang/String;

    .line 316
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 318
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    .line 322
    aget-object v3, v1, p0

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static writeBoolean(Landroid/os/Parcel;Z)V
    .locals 0

    .line 358
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private static writeStringSet(Landroid/os/Parcel;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 346
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    .line 347
    :goto_0
    new-array v1, v0, [Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 350
    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 353
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 338
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 340
    iget-object p2, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->values:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->writeStringSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 341
    iget-object p2, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->newValues:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->writeStringSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 342
    iget-boolean p2, p0, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->preferenceChanged:Z

    invoke-static {p1, p2}, Lcom/txdriver/ui/view/MultiSelectListPreferenceCompat$SavedState;->writeBoolean(Landroid/os/Parcel;Z)V

    return-void
.end method

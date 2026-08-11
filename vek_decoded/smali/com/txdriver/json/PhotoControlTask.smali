.class public Lcom/txdriver/json/PhotoControlTask;
.super Ljava/lang/Object;
.source "PhotoControlTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/json/PhotoControlTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public photoControlImages:[Lcom/txdriver/json/PhotoControlImage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "images"
    .end annotation
.end field

.field public photoControlTaskCreateDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_created"
    .end annotation
.end field

.field public photoControlTaskDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public photoControlTaskId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public photoControlTaskName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public photoControlTaskTimeToComplete:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_block"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/txdriver/json/PhotoControlTask$1;

    invoke-direct {v0}, Lcom/txdriver/json/PhotoControlTask$1;-><init>()V

    sput-object v0, Lcom/txdriver/json/PhotoControlTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskCreateDate:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskDescription:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskId:I

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/txdriver/json/PhotoControlImage;

    .line 31
    iput-object v0, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlImages:[Lcom/txdriver/json/PhotoControlImage;

    .line 32
    sget-object v0, Lcom/txdriver/json/PhotoControlImage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txdriver/json/PhotoControlImage;

    iput-object v0, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlImages:[Lcom/txdriver/json/PhotoControlImage;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskTimeToComplete:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTaskDateToLeft(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    move-object p1, v3

    :goto_0
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    add-long/2addr v4, p1

    goto :goto_1

    :cond_0
    move-wide v4, v0

    :goto_1
    cmp-long p1, v4, v0

    if-eqz p1, :cond_1

    .line 106
    new-instance v3, Ljava/sql/Timestamp;

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    :cond_1
    if-eqz v3, :cond_2

    .line 109
    invoke-virtual {v3}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    const/16 v0, 0xa

    .line 110
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    const/4 v1, 0x7

    .line 111
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v3, 0x2

    .line 112
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    aput-object p1, v1, v3

    const-string p1, "%s.%s.%s"

    .line 113
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "dd:mm:yy"

    return-object p1
.end method

.method public getTaskTimeToLeft(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    const/16 v2, 0x13

    const/4 v3, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    move-object p1, v3

    :goto_0
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    add-long/2addr v4, p1

    goto :goto_1

    :cond_0
    move-wide v4, v0

    :goto_1
    cmp-long p1, v4, v0

    if-eqz p1, :cond_1

    .line 80
    new-instance v3, Ljava/sql/Timestamp;

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    :cond_1
    if-eqz v3, :cond_2

    .line 83
    invoke-virtual {v3}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    const/16 v0, 0x10

    .line 84
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "hh:mm"

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskCreateDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlImages:[Lcom/txdriver/json/PhotoControlImage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 60
    iget-object p2, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget p2, p0, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskTimeToComplete:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

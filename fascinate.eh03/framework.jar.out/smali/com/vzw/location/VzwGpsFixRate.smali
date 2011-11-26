.class public Lcom/vzw/location/VzwGpsFixRate;
.super Ljava/lang/Object;
.source "VzwGpsFixRate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsFixRate;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFINITE_NUM_FIXES:I = -0x1


# instance fields
.field private NumFixes:J

.field private TimeBetweenFixes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsFixRate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->NumFixes:J

    .line 45
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->TimeBetweenFixes:J

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsFixRate;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/vzw/location/VzwGpsFixRate;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-wide v0, p1, Lcom/vzw/location/VzwGpsFixRate;->NumFixes:J

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->NumFixes:J

    .line 54
    iget-wide v0, p1, Lcom/vzw/location/VzwGpsFixRate;->TimeBetweenFixes:J

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->TimeBetweenFixes:J

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 120
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/vzw/location/VzwGpsFixRate;

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 122
    :goto_0
    return v0

    .line 121
    :cond_1
    check-cast p1, Lcom/vzw/location/VzwGpsFixRate;

    .line 122
    iget-wide v0, p1, Lcom/vzw/location/VzwGpsFixRate;->NumFixes:J

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsFixRate;->NumFixes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p1, Lcom/vzw/location/VzwGpsFixRate;->TimeBetweenFixes:J

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsFixRate;->TimeBetweenFixes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public getNumFixes()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->NumFixes:J

    return-wide v0
.end method

.method public getTimeBetweenFixes()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->TimeBetweenFixes:J

    return-wide v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->NumFixes:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->TimeBetweenFixes:J

    .line 117
    return-void
.end method

.method public setGpsFixRate(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsFixRate;->NumFixes:J

    .line 71
    iput-wide p3, p0, Lcom/vzw/location/VzwGpsFixRate;->TimeBetweenFixes:J

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VzwGpsFixRate, mNumFixes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsFixRate;->NumFixes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeBetweenFixes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsFixRate;->TimeBetweenFixes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->NumFixes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->TimeBetweenFixes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    return-void
.end method

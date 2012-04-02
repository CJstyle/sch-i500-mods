.class public Lcom/vzw/location/VzwGpsPerformance;
.super Ljava/lang/Object;
.source "VzwGpsPerformance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsPerformance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private HorizontalAccuracy:J

.field private PreferredResponseTime:J

.field private VerticalAccuracy:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsPerformance$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsPerformance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x32

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->HorizontalAccuracy:J

    .line 44
    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->VerticalAccuracy:J

    .line 45
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->PreferredResponseTime:J

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsPerformance;->readFromParcel(Landroid/os/Parcel;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/vzw/location/VzwGpsPerformance;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-wide v0, p1, Lcom/vzw/location/VzwGpsPerformance;->HorizontalAccuracy:J

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->HorizontalAccuracy:J

    .line 54
    iget-wide v0, p1, Lcom/vzw/location/VzwGpsPerformance;->VerticalAccuracy:J

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->VerticalAccuracy:J

    .line 55
    iget-wide v0, p1, Lcom/vzw/location/VzwGpsPerformance;->PreferredResponseTime:J

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->PreferredResponseTime:J

    .line 56
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->HorizontalAccuracy:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->VerticalAccuracy:J

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->PreferredResponseTime:J

    .line 126
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 129
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/vzw/location/VzwGpsPerformance;

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 131
    :goto_0
    return v0

    .line 130
    :cond_1
    check-cast p1, Lcom/vzw/location/VzwGpsPerformance;

    .line 131
    iget-wide v0, p1, Lcom/vzw/location/VzwGpsPerformance;->HorizontalAccuracy:J

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsPerformance;->HorizontalAccuracy:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p1, Lcom/vzw/location/VzwGpsPerformance;->VerticalAccuracy:J

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsPerformance;->VerticalAccuracy:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p1, Lcom/vzw/location/VzwGpsPerformance;->PreferredResponseTime:J

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsPerformance;->PreferredResponseTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public getHorizontalAccuracy()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->HorizontalAccuracy:J

    return-wide v0
.end method

.method public getPreferredResponseTime()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->PreferredResponseTime:J

    return-wide v0
.end method

.method public getVerticalAccuracy()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->VerticalAccuracy:J

    return-wide v0
.end method

.method public setPerformance(JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsPerformance;->HorizontalAccuracy:J

    .line 71
    iput-wide p3, p0, Lcom/vzw/location/VzwGpsPerformance;->VerticalAccuracy:J

    .line 72
    iput-wide p5, p0, Lcom/vzw/location/VzwGpsPerformance;->PreferredResponseTime:J

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VzwGpsPerformance , mHorizontalAccuracy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsPerformance;->HorizontalAccuracy:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVerticalAccuracy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsPerformance;->VerticalAccuracy:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreferredResponseTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsPerformance;->PreferredResponseTime:J

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
    .line 117
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->HorizontalAccuracy:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->VerticalAccuracy:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->PreferredResponseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    return-void
.end method

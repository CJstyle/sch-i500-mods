.class public Lcom/vzw/location/VzwCriteria;
.super Landroid/location/Criteria;
.source "VzwCriteria.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCURACY_OPTIMAL:I = 0x6

.field public static final AFLT:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwCriteria;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_OPTIMAL:I = 0x7

.field public static final MS_ASSISTED:I = 0x1

.field public static final MS_BASED:I = 0x2

.field public static final SPEED_OPTIMAL:I = 0x5

.field public static final STANDALONE:I = 0x3

.field public static final UNKNOWN:I


# instance fields
.field private fixMode:I

.field private fixRate:Lcom/vzw/location/VzwGpsFixRate;

.field private gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/vzw/location/VzwCriteria$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwCriteria$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->fixMode:I

    .line 57
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->fixRate:Lcom/vzw/location/VzwGpsFixRate;

    .line 58
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;

    .line 71
    invoke-direct {p0}, Lcom/vzw/location/VzwCriteria;->setDefaultParentCriteriaRequirements()V

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/location/Criteria;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->fixMode:I

    .line 57
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->fixRate:Lcom/vzw/location/VzwGpsFixRate;

    .line 58
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;

    .line 80
    invoke-direct {p0}, Lcom/vzw/location/VzwCriteria;->setDefaultParentCriteriaRequirements()V

    .line 81
    instance-of v0, p1, Lcom/vzw/location/VzwCriteria;

    if-eqz v0, :cond_0

    .line 82
    check-cast p1, Lcom/vzw/location/VzwCriteria;

    .line 83
    iget v0, p1, Lcom/vzw/location/VzwCriteria;->fixMode:I

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->fixMode:I

    .line 84
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    iget-object v1, p1, Lcom/vzw/location/VzwCriteria;->fixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwGpsFixRate;-><init>(Lcom/vzw/location/VzwGpsFixRate;)V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->fixRate:Lcom/vzw/location/VzwGpsFixRate;

    .line 85
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance;

    iget-object v1, p1, Lcom/vzw/location/VzwCriteria;->gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwGpsPerformance;-><init>(Lcom/vzw/location/VzwGpsPerformance;)V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;

    .line 87
    :cond_0
    return-void
.end method

.method private setDefaultParentCriteriaRequirements()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwCriteria;->setPowerRequirement(I)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwCriteria;->setSpeedRequired(Z)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwCriteria;->setCostAllowed(Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 204
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/vzw/location/VzwCriteria;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 206
    :goto_0
    return v0

    .line 205
    :cond_1
    check-cast p1, Lcom/vzw/location/VzwCriteria;

    .line 206
    iget v0, p1, Lcom/vzw/location/VzwCriteria;->fixMode:I

    iget v1, p0, Lcom/vzw/location/VzwCriteria;->fixMode:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/vzw/location/VzwCriteria;->fixRate:Lcom/vzw/location/VzwGpsFixRate;

    iget-object v1, p0, Lcom/vzw/location/VzwCriteria;->fixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGpsFixRate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/vzw/location/VzwCriteria;->gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;

    iget-object v1, p0, Lcom/vzw/location/VzwCriteria;->gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGpsPerformance;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/vzw/location/VzwCriteria;->fixMode:I

    return v0
.end method

.method public getFixRate()Lcom/vzw/location/VzwGpsFixRate;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->fixRate:Lcom/vzw/location/VzwGpsFixRate;

    return-object v0
.end method

.method public getPerformance()Lcom/vzw/location/VzwGpsPerformance;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->fixMode:I

    .line 196
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-direct {v0, p1}, Lcom/vzw/location/VzwGpsFixRate;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->fixRate:Lcom/vzw/location/VzwGpsFixRate;

    .line 197
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v0, p1}, Lcom/vzw/location/VzwGpsPerformance;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;

    .line 198
    return-void
.end method

.method public setFixMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 106
    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown fix mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iput p1, p0, Lcom/vzw/location/VzwCriteria;->fixMode:I

    .line 109
    return-void
.end method

.method public setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->fixRate:Lcom/vzw/location/VzwGpsFixRate;

    .line 136
    return-void
.end method

.method public setPerformance(Lcom/vzw/location/VzwGpsPerformance;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ", "

    .line 165
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VzwCriteria fixMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwCriteria;->fixMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwCriteria;->fixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwCriteria;->gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-super {p0, p1, p2}, Landroid/location/Criteria;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    iget v0, p0, Lcom/vzw/location/VzwCriteria;->fixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->fixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {v0, p1, v1}, Lcom/vzw/location/VzwGpsFixRate;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->gpsPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {v0, p1, v1}, Lcom/vzw/location/VzwGpsPerformance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    return-void
.end method

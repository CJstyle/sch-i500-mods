.class public Lcom/vzw/location/VzwGpsConfigInit;
.super Ljava/lang/Object;
.source "VzwGpsConfigInit.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsConfigInit;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VzwGpsConfigInit"


# instance fields
.field private id:J

.field private mpcAddress:Ljava/net/InetAddress;

.field private mpcHostname:Ljava/lang/String;

.field private mpcPort:I

.field private password:Ljava/lang/String;

.field private smsFullyQualifiedAppName:Ljava/lang/String;

.field private smsPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/vzw/location/VzwGpsConfigInit$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsConfigInit$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsConfigInit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsConfigInit;->resetInternals()V

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vzw/location/VzwGpsConfigInit$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private resetInternals()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/vzw/location/VzwGpsConfigInit;->setCredentials(JLjava/lang/String;)V

    .line 57
    invoke-virtual {p0, v2, v2}, Lcom/vzw/location/VzwGpsConfigInit;->setSmsPrefixInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsConfigInit;->resetMpc()V

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x3a

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    iget-wide v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsFullyQualifiedAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 308
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/vzw/location/VzwGpsConfigInit;

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 321
    :goto_0
    return v0

    .line 309
    :cond_1
    check-cast p1, Lcom/vzw/location/VzwGpsConfigInit;

    .line 311
    iget-wide v0, p1, Lcom/vzw/location/VzwGpsConfigInit;->id:J

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    move v0, v4

    .line 312
    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p1, Lcom/vzw/location/VzwGpsConfigInit;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    .line 314
    goto :goto_0

    .line 315
    :cond_3
    iget-object v0, p1, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    .line 316
    goto :goto_0

    .line 317
    :cond_4
    iget v0, p1, Lcom/vzw/location/VzwGpsConfigInit;->mpcPort:I

    iget v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcPort:I

    if-eq v0, v1, :cond_5

    move v0, v4

    .line 318
    goto :goto_0

    .line 319
    :cond_5
    iget-object v0, p1, Lcom/vzw/location/VzwGpsConfigInit;->smsPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/vzw/location/VzwGpsConfigInit;->smsFullyQualifiedAppName:Ljava/lang/String;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsFullyQualifiedAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 321
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getApplicationId()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->id:J

    return-wide v0
.end method

.method public getApplicationPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getFullyQualifiedAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsFullyQualifiedAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getMpcHost()Ljava/net/InetAddress;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcHostname:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v3

    .line 156
    :goto_0
    return-object v0

    .line 150
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcHostname:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v1, "VzwGpsConfigInit"

    const-string v2, "IOException in getMpcHost"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 153
    goto :goto_0
.end method

.method public getMpcPort()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcPort:I

    return v0
.end method

.method public getSmsPrefixInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->id:J

    long-to-int v0, v0

    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->id:J

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->password:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsPrefix:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsFullyQualifiedAppName:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcHostname:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcPort:I

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    .line 283
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcHostname:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcHostname:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetMpc()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcHostname:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcPort:I

    .line 166
    return-void
.end method

.method public setCredentials(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 207
    if-nez p3, :cond_0

    .line 208
    const-string v0, ""

    .line 209
    :goto_0
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->id:J

    .line 210
    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->password:Ljava/lang/String;

    .line 211
    return-void

    :cond_0
    move-object v0, p3

    goto :goto_0
.end method

.method public setMpc(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcPort(I)V

    .line 107
    return-void
.end method

.method public setMpc(Ljava/net/InetAddress;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/net/InetAddress;)V

    .line 92
    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcPort(I)V

    .line 93
    return-void
.end method

.method public setMpcHost(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcHostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcHostname:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcHostname:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    .line 120
    :cond_1
    return-void
.end method

.method public setMpcHost(Ljava/net/InetAddress;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    .line 129
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcHostname:Ljava/lang/String;

    .line 130
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setMpcPort(I)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcPort:I

    .line 137
    return-void
.end method

.method public setSmsPrefixInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-string v2, ""

    .line 223
    if-nez p1, :cond_1

    .line 224
    const-string v0, ""

    move-object v0, v2

    .line 225
    :goto_0
    if-nez p2, :cond_0

    .line 226
    const-string v1, ""

    move-object v1, v2

    .line 227
    :goto_1
    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsPrefix:Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsFullyQualifiedAppName:Ljava/lang/String;

    .line 229
    return-void

    :cond_0
    move-object v1, p2

    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/String;

    const-string v1, "VzwGpsConfigInit"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 250
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->smsFullyQualifiedAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcHostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 261
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    if-ne v0, v2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mpcAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 264
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 267
    :cond_0
    return-void

    .line 259
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

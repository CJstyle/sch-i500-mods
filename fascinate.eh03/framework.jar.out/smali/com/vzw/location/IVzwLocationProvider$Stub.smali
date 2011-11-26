.class public abstract Lcom/vzw/location/IVzwLocationProvider$Stub;
.super Landroid/os/Binder;
.source "IVzwLocationProvider.java"

# interfaces
.implements Lcom/vzw/location/IVzwLocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/IVzwLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/IVzwLocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vzw.location.IVzwLocationProvider"

.field static final TRANSACTION_addListener:I = 0x13

.field static final TRANSACTION_disable:I = 0xb

.field static final TRANSACTION_enable:I = 0xa

.field static final TRANSACTION_enableLocationTracking:I = 0x10

.field static final TRANSACTION_getAccuracy:I = 0x9

.field static final TRANSACTION_getHwStatus:I = 0xe

.field static final TRANSACTION_getPowerRequirement:I = 0x8

.field static final TRANSACTION_getStatus:I = 0xd

.field static final TRANSACTION_getStatusUpdateTime:I = 0xf

.field static final TRANSACTION_hasMonetaryCost:I = 0x4

.field static final TRANSACTION_isEnabled:I = 0xc

.field static final TRANSACTION_removeListener:I = 0x14

.field static final TRANSACTION_requiresCell:I = 0x3

.field static final TRANSACTION_requiresNetwork:I = 0x1

.field static final TRANSACTION_requiresSatellite:I = 0x2

.field static final TRANSACTION_sendExtraCommand:I = 0x12

.field static final TRANSACTION_setMaxCriteria:I = 0x11

.field static final TRANSACTION_supportsAltitude:I = 0x5

.field static final TRANSACTION_supportsBearing:I = 0x7

.field static final TRANSACTION_supportsSpeed:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p0, p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationProvider;
    .locals 3
    .parameter

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v1, "com.vzw.location.IVzwLocationProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/vzw/location/IVzwLocationProvider;

    if-eqz v2, :cond_1

    .line 33
    move-object v0, v1

    check-cast v0, Lcom/vzw/location/IVzwLocationProvider;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 35
    :cond_1
    new-instance v1, Lcom/vzw/location/IVzwLocationProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/vzw/location/IVzwLocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "com.vzw.location.IVzwLocationProvider"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->requiresNetwork()Z

    move-result v0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 56
    goto :goto_0

    :cond_0
    move v0, v3

    .line 55
    goto :goto_1

    .line 60
    :sswitch_2
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->requiresSatellite()Z

    move-result v0

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 64
    goto :goto_0

    :cond_1
    move v0, v3

    .line 63
    goto :goto_2

    .line 68
    :sswitch_3
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->requiresCell()Z

    move-result v0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v0, :cond_2

    move v0, v2

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 72
    goto :goto_0

    :cond_2
    move v0, v3

    .line 71
    goto :goto_3

    .line 76
    :sswitch_4
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->hasMonetaryCost()Z

    move-result v0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v0, :cond_3

    move v0, v2

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 80
    goto :goto_0

    :cond_3
    move v0, v3

    .line 79
    goto :goto_4

    .line 84
    :sswitch_5
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->supportsAltitude()Z

    move-result v0

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v0, :cond_4

    move v0, v2

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 88
    goto :goto_0

    :cond_4
    move v0, v3

    .line 87
    goto :goto_5

    .line 92
    :sswitch_6
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->supportsSpeed()Z

    move-result v0

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v0, :cond_5

    move v0, v2

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 96
    goto/16 :goto_0

    :cond_5
    move v0, v3

    .line 95
    goto :goto_6

    .line 100
    :sswitch_7
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->supportsBearing()Z

    move-result v0

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v0, :cond_6

    move v0, v2

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 104
    goto/16 :goto_0

    :cond_6
    move v0, v3

    .line 103
    goto :goto_7

    .line 108
    :sswitch_8
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getPowerRequirement()I

    move-result v0

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 112
    goto/16 :goto_0

    .line 116
    :sswitch_9
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getAccuracy()I

    move-result v0

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 120
    goto/16 :goto_0

    .line 124
    :sswitch_a
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->enable()V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 127
    goto/16 :goto_0

    .line 131
    :sswitch_b
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->disable()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 134
    goto/16 :goto_0

    .line 138
    :sswitch_c
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->isEnabled()Z

    move-result v0

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v0, :cond_7

    move v0, v2

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 142
    goto/16 :goto_0

    :cond_7
    move v0, v3

    .line 141
    goto :goto_8

    .line 146
    :sswitch_d
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getStatus(Landroid/os/Bundle;)I

    move-result v1

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    if-eqz v0, :cond_8

    .line 153
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    move v0, v2

    .line 159
    goto/16 :goto_0

    .line 157
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 163
    :sswitch_e
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getHwStatus()I

    move-result v0

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 167
    goto/16 :goto_0

    .line 171
    :sswitch_f
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getStatusUpdateTime()J

    move-result-wide v0

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v2

    .line 175
    goto/16 :goto_0

    .line 179
    :sswitch_10
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 182
    :goto_a
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->enableLocationTracking(Z)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 184
    goto/16 :goto_0

    :cond_9
    move v0, v3

    .line 181
    goto :goto_a

    .line 188
    :sswitch_11
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    sget-object v0, Lcom/vzw/location/VzwCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwCriteria;

    .line 196
    :goto_b
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->setMaxCriteria(Lcom/vzw/location/VzwCriteria;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 198
    goto/16 :goto_0

    :cond_a
    move-object v0, v4

    .line 194
    goto :goto_b

    .line 202
    :sswitch_12
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 207
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 212
    :goto_c
    invoke-virtual {p0, v1, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v1, :cond_c

    move v1, v2

    :goto_d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    if-eqz v0, :cond_d

    .line 216
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    move v0, v2

    .line 222
    goto/16 :goto_0

    :cond_b
    move-object v0, v4

    .line 210
    goto :goto_c

    :cond_c
    move v1, v3

    .line 214
    goto :goto_d

    .line 220
    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 226
    :sswitch_13
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->addListener(I)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 231
    goto/16 :goto_0

    .line 235
    :sswitch_14
    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->removeListener(I)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 240
    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

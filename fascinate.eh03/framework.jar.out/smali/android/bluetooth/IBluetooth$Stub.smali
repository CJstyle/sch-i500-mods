.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_addRfcommServiceRecord:I = 0x28

.field static final TRANSACTION_authorizeService:I = 0x23

.field static final TRANSACTION_cancelBondProcess:I = 0x13

.field static final TRANSACTION_cancelDiscovery:I = 0xe

.field static final TRANSACTION_cancelPairingUserInput:I = 0x22

.field static final TRANSACTION_connectHeadset:I = 0x2a

.field static final TRANSACTION_createBond:I = 0x11

.field static final TRANSACTION_createBondOutOfBand:I = 0x12

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_disconnectHeadset:I = 0x2b

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_fetchRemoteDiInfo:I = 0x2e

.field static final TRANSACTION_fetchRemoteUuids:I = 0x1c

.field static final TRANSACTION_getAddress:I = 0x5

.field static final TRANSACTION_getBluetoothState:I = 0x2

.field static final TRANSACTION_getBondState:I = 0x16

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xb

.field static final TRANSACTION_getName:I = 0x6

.field static final TRANSACTION_getRemoteClass:I = 0x1a

.field static final TRANSACTION_getRemoteName:I = 0x18

.field static final TRANSACTION_getRemoteServiceChannel:I = 0x1d

.field static final TRANSACTION_getRemoteServices:I = 0x2d

.field static final TRANSACTION_getRemoteUuids:I = 0x1b

.field static final TRANSACTION_getScanMode:I = 0x8

.field static final TRANSACTION_getTrustState:I = 0x26

.field static final TRANSACTION_isBluetoothDock:I = 0x27

.field static final TRANSACTION_isDiscovering:I = 0xf

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_listBonds:I = 0x15

.field static final TRANSACTION_notifyIncomingConnection:I = 0x2c

.field static final TRANSACTION_readOutOfBandData:I = 0x10

.field static final TRANSACTION_removeBond:I = 0x14

.field static final TRANSACTION_removeServiceRecord:I = 0x29

.field static final TRANSACTION_setDeviceOutOfBandData:I = 0x17

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_setName:I = 0x7

.field static final TRANSACTION_setPairingConfirmation:I = 0x20

.field static final TRANSACTION_setPasskey:I = 0x1f

.field static final TRANSACTION_setPin:I = 0x1e

.field static final TRANSACTION_setRemoteOutOfBandData:I = 0x21

.field static final TRANSACTION_setScanMode:I = 0x9

.field static final TRANSACTION_setSecurityMode:I = 0xa

.field static final TRANSACTION_setServiceTrust:I = 0x25

.field static final TRANSACTION_setTrust:I = 0x24

.field static final TRANSACTION_startDiscovery:I = 0xd

.field static final TRANSACTION_updateRemoteName:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .parameter "obj"

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
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "android.bluetooth.IBluetooth"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 537
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 47
    :sswitch_0
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v4

    .line 54
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 56
    goto :goto_0

    :cond_0
    move v5, v8

    .line 55
    goto :goto_1

    .line 60
    .end local v4           #_result:Z
    :sswitch_2
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothState()I

    move-result v4

    .line 62
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 64
    goto :goto_0

    .line 68
    .end local v4           #_result:I
    :sswitch_3
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v4

    .line 70
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 72
    goto :goto_0

    :cond_1
    move v5, v8

    .line 71
    goto :goto_2

    .line 76
    .end local v4           #_result:Z
    :sswitch_4
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v6

    .line 79
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->disable(Z)Z

    move-result v4

    .line 80
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v4, :cond_3

    move v5, v6

    :goto_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 82
    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_2
    move v0, v8

    .line 78
    goto :goto_3

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_3
    move v5, v8

    .line 81
    goto :goto_4

    .line 86
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_5
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 90
    goto :goto_0

    .line 94
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v4

    .line 96
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 98
    goto/16 :goto_0

    .line 102
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v4

    .line 106
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v4, :cond_4

    move v5, v6

    :goto_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 108
    goto/16 :goto_0

    :cond_4
    move v5, v8

    .line 107
    goto :goto_5

    .line 112
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_8
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v4

    .line 114
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 116
    goto/16 :goto_0

    .line 120
    .end local v4           #_result:I
    :sswitch_9
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v4

    .line 126
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v4, :cond_5

    move v5, v6

    :goto_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 128
    goto/16 :goto_0

    :cond_5
    move v5, v8

    .line 127
    goto :goto_6

    .line 132
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_a
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setSecurityMode(I)Z

    move-result v4

    .line 136
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v4, :cond_6

    move v5, v6

    :goto_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 138
    goto/16 :goto_0

    :cond_6
    move v5, v8

    .line 137
    goto :goto_7

    .line 142
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_b
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v4

    .line 144
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 146
    goto/16 :goto_0

    .line 150
    .end local v4           #_result:I
    :sswitch_c
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v4

    .line 154
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v4, :cond_7

    move v5, v6

    :goto_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 156
    goto/16 :goto_0

    :cond_7
    move v5, v8

    .line 155
    goto :goto_8

    .line 160
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_d
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v4

    .line 162
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_8

    move v5, v6

    :goto_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 164
    goto/16 :goto_0

    :cond_8
    move v5, v8

    .line 163
    goto :goto_9

    .line 168
    .end local v4           #_result:Z
    :sswitch_e
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v4

    .line 170
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v4, :cond_9

    move v5, v6

    :goto_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 172
    goto/16 :goto_0

    :cond_9
    move v5, v8

    .line 171
    goto :goto_a

    .line 176
    .end local v4           #_result:Z
    :sswitch_f
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v4

    .line 178
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v4, :cond_a

    move v5, v6

    :goto_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 180
    goto/16 :goto_0

    :cond_a
    move v5, v8

    .line 179
    goto :goto_b

    .line 184
    .end local v4           #_result:Z
    :sswitch_10
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->readOutOfBandData()[B

    move-result-object v4

    .line 186
    .local v4, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, v6

    .line 188
    goto/16 :goto_0

    .line 192
    .end local v4           #_result:[B
    :sswitch_11
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Ljava/lang/String;)Z

    move-result v4

    .line 196
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v4, :cond_b

    move v5, v6

    :goto_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 198
    goto/16 :goto_0

    :cond_b
    move v5, v8

    .line 197
    goto :goto_c

    .line 202
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_12
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 208
    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 209
    .local v2, _arg2:[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Ljava/lang/String;[B[B)Z

    move-result v4

    .line 210
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v4, :cond_c

    move v5, v6

    :goto_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 212
    goto/16 :goto_0

    :cond_c
    move v5, v8

    .line 211
    goto :goto_d

    .line 216
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:[B
    .end local v4           #_result:Z
    :sswitch_13
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Ljava/lang/String;)Z

    move-result v4

    .line 220
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v4, :cond_d

    move v5, v6

    :goto_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 222
    goto/16 :goto_0

    :cond_d
    move v5, v8

    .line 221
    goto :goto_e

    .line 226
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_14
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Ljava/lang/String;)Z

    move-result v4

    .line 230
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v4, :cond_e

    move v5, v6

    :goto_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 232
    goto/16 :goto_0

    :cond_e
    move v5, v8

    .line 231
    goto :goto_f

    .line 236
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_15
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->listBonds()[Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    .line 240
    goto/16 :goto_0

    .line 244
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_16
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Ljava/lang/String;)I

    move-result v4

    .line 248
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 250
    goto/16 :goto_0

    .line 254
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_17
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 260
    .restart local v1       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 261
    .restart local v2       #_arg2:[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    move-result v4

    .line 262
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v4, :cond_f

    move v5, v6

    :goto_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 264
    goto/16 :goto_0

    :cond_f
    move v5, v8

    .line 263
    goto :goto_10

    .line 268
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:[B
    .end local v4           #_result:Z
    :sswitch_18
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 274
    goto/16 :goto_0

    .line 278
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_19
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->updateRemoteName(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 283
    goto/16 :goto_0

    .line 287
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1a
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Ljava/lang/String;)I

    move-result v4

    .line 291
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 293
    goto/16 :goto_0

    .line 297
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_1b
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 301
    .local v4, _result:[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v5, v6

    .line 303
    goto/16 :goto_0

    .line 307
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:[Landroid/os/ParcelUuid;
    :sswitch_1c
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 312
    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 318
    .local v1, _arg1:Landroid/os/ParcelUuid;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v2

    .line 319
    .local v2, _arg2:Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z

    move-result v4

    .line 320
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v4, :cond_11

    move v5, v6

    :goto_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 322
    goto/16 :goto_0

    .line 315
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    .end local v2           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v4           #_result:Z
    :cond_10
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_11

    .restart local v2       #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .restart local v4       #_result:Z
    :cond_11
    move v5, v8

    .line 321
    goto :goto_12

    .line 326
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    .end local v2           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v4           #_result:Z
    :sswitch_1d
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 331
    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 336
    .restart local v1       #_arg1:Landroid/os/ParcelUuid;
    :goto_13
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v4

    .line 337
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 339
    goto/16 :goto_0

    .line 334
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    .end local v4           #_result:I
    :cond_12
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_13

    .line 343
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_1e
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 348
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Ljava/lang/String;[B)Z

    move-result v4

    .line 349
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v4, :cond_13

    move v5, v6

    :goto_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 351
    goto/16 :goto_0

    :cond_13
    move v5, v8

    .line 350
    goto :goto_14

    .line 355
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    .end local v4           #_result:Z
    :sswitch_1f
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Ljava/lang/String;I)Z

    move-result v4

    .line 361
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v4, :cond_14

    move v5, v6

    :goto_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 363
    goto/16 :goto_0

    :cond_14
    move v5, v8

    .line 362
    goto :goto_15

    .line 367
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_20
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    move v1, v6

    .line 372
    .local v1, _arg1:Z
    :goto_16
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Ljava/lang/String;Z)Z

    move-result v4

    .line 373
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v4, :cond_16

    move v5, v6

    :goto_17
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 375
    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_15
    move v1, v8

    .line 371
    goto :goto_16

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_16
    move v5, v8

    .line 374
    goto :goto_17

    .line 379
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_21
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteOutOfBandData(Ljava/lang/String;)Z

    move-result v4

    .line 383
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v4, :cond_17

    move v5, v6

    :goto_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 385
    goto/16 :goto_0

    :cond_17
    move v5, v8

    .line 384
    goto :goto_18

    .line 389
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_22
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-result v4

    .line 393
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v4, :cond_18

    move v5, v6

    :goto_19
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 395
    goto/16 :goto_0

    :cond_18
    move v5, v8

    .line 394
    goto :goto_19

    .line 399
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_23
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 403
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    move v1, v6

    .line 405
    .restart local v1       #_arg1:Z
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    move v2, v6

    .line 406
    .local v2, _arg2:Z
    :goto_1b
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->authorizeService(Ljava/lang/String;ZZ)Z

    move-result v4

    .line 407
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v4, :cond_1b

    move v5, v6

    :goto_1c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 409
    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Z
    .end local v4           #_result:Z
    :cond_19
    move v1, v8

    .line 403
    goto :goto_1a

    .restart local v1       #_arg1:Z
    :cond_1a
    move v2, v8

    .line 405
    goto :goto_1b

    .restart local v2       #_arg2:Z
    .restart local v4       #_result:Z
    :cond_1b
    move v5, v8

    .line 408
    goto :goto_1c

    .line 413
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Z
    .end local v4           #_result:Z
    :sswitch_24
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    move v1, v6

    .line 418
    .restart local v1       #_arg1:Z
    :goto_1d
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setTrust(Ljava/lang/String;Z)Z

    move-result v4

    .line 419
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    if-eqz v4, :cond_1d

    move v5, v6

    :goto_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 421
    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_1c
    move v1, v8

    .line 417
    goto :goto_1d

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_1d
    move v5, v8

    .line 420
    goto :goto_1e

    .line 425
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_25
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    move v2, v6

    .line 432
    .restart local v2       #_arg2:Z
    :goto_1f
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setServiceTrust(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 433
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v4, :cond_1f

    move v5, v6

    :goto_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 435
    goto/16 :goto_0

    .end local v2           #_arg2:Z
    .end local v4           #_result:Z
    :cond_1e
    move v2, v8

    .line 431
    goto :goto_1f

    .restart local v2       #_arg2:Z
    .restart local v4       #_result:Z
    :cond_1f
    move v5, v8

    .line 434
    goto :goto_20

    .line 439
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Z
    .end local v4           #_result:Z
    :sswitch_26
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getTrustState(Ljava/lang/String;)Z

    move-result v4

    .line 443
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v4, :cond_20

    move v5, v6

    :goto_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 445
    goto/16 :goto_0

    :cond_20
    move v5, v8

    .line 444
    goto :goto_21

    .line 449
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_27
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 452
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v4

    .line 453
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v4, :cond_21

    move v5, v6

    :goto_22
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 455
    goto/16 :goto_0

    :cond_21
    move v5, v8

    .line 454
    goto :goto_22

    .line 459
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_28
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    .line 464
    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 470
    .local v1, _arg1:Landroid/os/ParcelUuid;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 473
    .local v3, _arg3:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I

    move-result v4

    .line 474
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 476
    goto/16 :goto_0

    .line 467
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Landroid/os/IBinder;
    .end local v4           #_result:I
    :cond_22
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_23

    .line 480
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_29
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 483
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->removeServiceRecord(I)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 485
    goto/16 :goto_0

    .line 489
    .end local v0           #_arg0:I
    :sswitch_2a
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->connectHeadset(Ljava/lang/String;)Z

    move-result v4

    .line 493
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    if-eqz v4, :cond_23

    move v5, v6

    :goto_24
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 495
    goto/16 :goto_0

    :cond_23
    move v5, v8

    .line 494
    goto :goto_24

    .line 499
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2b
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectHeadset(Ljava/lang/String;)Z

    move-result v4

    .line 503
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v4, :cond_24

    move v5, v6

    :goto_25
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 505
    goto/16 :goto_0

    :cond_24
    move v5, v8

    .line 504
    goto :goto_25

    .line 509
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2c
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->notifyIncomingConnection(Ljava/lang/String;)Z

    move-result v4

    .line 513
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v4, :cond_25

    move v5, v6

    :goto_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 515
    goto/16 :goto_0

    :cond_25
    move v5, v8

    .line 514
    goto :goto_26

    .line 519
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2d
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 522
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServices(Ljava/lang/String;)Z

    move-result v4

    .line 523
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    if-eqz v4, :cond_26

    move v5, v6

    :goto_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 525
    goto/16 :goto_0

    :cond_26
    move v5, v8

    .line 524
    goto :goto_27

    .line 529
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2e
    const-string v5, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteDiInfo(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 534
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
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

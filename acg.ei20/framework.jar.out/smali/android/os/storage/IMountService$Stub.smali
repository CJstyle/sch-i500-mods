.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_createSecureContainerWithPath:I = 0x51

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_destroySecureContainerWithPath:I = 0x52

.field static final TRANSACTION_encryptBatchVolume:I = 0x68

.field static final TRANSACTION_encryptFormatVolume:I = 0x6a

.field static final TRANSACTION_encryptMountVolume:I = 0x69

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finalizeSecureContainerWithPath:I = 0x53

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getAsecVolumeState:I = 0x5c

.field static final TRANSACTION_getDeviceDriverPath:I = 0x5d

.field static final TRANSACTION_getEncryptedStatus:I = 0x6b

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPlayNotificationSounds:I = 0x60

.field static final TRANSACTION_getSecureContainerInstalledPath:I = 0x5b

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerListAll:I = 0x5a

.field static final TRANSACTION_getSecureContainerListWithPath:I = 0x59

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getSecureContainerPathWithPath:I = 0x58

.field static final TRANSACTION_getShowSafeUnmountNotification:I = 0x62

.field static final TRANSACTION_getStorageCidNumber:I = 0x65

.field static final TRANSACTION_getStorageSerialNumber:I = 0x64

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isEncryptionEnabled:I = 0x66

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isSecureContainerMountedWithPath:I = 0x56

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountSecureContainerWithPath:I = 0x54

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_registerCallBackListener:I = 0x5e

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_renameSecureContainerWithPath:I = 0x57

.field static final TRANSACTION_setEncryptionEnabled:I = 0x67

.field static final TRANSACTION_setPlayNotificationSounds:I = 0x61

.field static final TRANSACTION_setShowSafeUnmountNotification:I = 0x63

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountSecureContainerWithPath:I = 0x55

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterCallBackListener:I = 0x5f

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1206
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1207
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 1195
    if-nez p0, :cond_0

    .line 1196
    const/4 v1, 0x0

    .line 1202
    :goto_0
    return-object v1

    .line 1198
    :cond_0
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1199
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1200
    check-cast v0, Landroid/os/storage/IMountService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 1202
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IMountService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1211
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 41
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
    .line 1217
    sparse-switch p1, :sswitch_data_0

    .line 1782
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 1219
    :sswitch_0
    const-string v5, "IMountService"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1220
    const/4 v5, 0x1

    goto :goto_0

    .line 1223
    :sswitch_1
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v25

    .line 1226
    .local v25, listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    const/4 v5, 0x1

    goto :goto_0

    .line 1231
    .end local v25           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v25

    .line 1234
    .restart local v25       #listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    const/4 v5, 0x1

    goto :goto_0

    .line 1239
    .end local v25           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v34

    .line 1241
    .local v34, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    if-eqz v34, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    const/4 v5, 0x1

    goto :goto_0

    .line 1242
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1246
    .end local v34           #result:Z
    :sswitch_4
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 1249
    .local v20, enable:Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    const/4 v5, 0x1

    goto :goto_0

    .line 1248
    .end local v20           #enable:Z
    :cond_1
    const/4 v5, 0x0

    move/from16 v20, v5

    goto :goto_2

    .line 1254
    :sswitch_5
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v34

    .line 1256
    .restart local v34       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    if-eqz v34, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1257
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 1261
    .end local v34           #result:Z
    :sswitch_6
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1264
    .local v26, mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v35

    .line 1265
    .local v35, resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1267
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1270
    .end local v26           #mountPoint:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_7
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1274
    .restart local v26       #mountPoint:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1275
    .local v23, force:Z
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;Z)V

    .line 1276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1274
    .end local v23           #force:Z
    :cond_3
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_4

    .line 1280
    .end local v26           #mountPoint:Ljava/lang/String;
    :sswitch_8
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1283
    .restart local v26       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v34

    .line 1284
    .local v34, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1289
    .end local v26           #mountPoint:Ljava/lang/String;
    .end local v34           #result:I
    :sswitch_9
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1292
    .local v12, path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v33

    .line 1293
    .local v33, pids:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1295
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1298
    .end local v12           #path:Ljava/lang/String;
    .end local v33           #pids:[I
    :sswitch_a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1301
    .restart local v26       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1302
    .local v38, state:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1304
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1307
    .end local v26           #mountPoint:Ljava/lang/String;
    .end local v38           #state:Ljava/lang/String;
    :sswitch_b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1311
    .local v6, id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1313
    .local v7, sizeMb:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1315
    .local v8, fstype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1317
    .local v9, key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, ownerUid:I
    move-object/from16 v5, p0

    .line 1318
    invoke-virtual/range {v5 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1319
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1325
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #sizeMb:I
    .end local v8           #fstype:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v35           #resultCode:I
    :sswitch_c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1329
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1331
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1333
    .restart local v7       #sizeMb:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1335
    .restart local v8       #fstype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1337
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10       #ownerUid:I
    move-object/from16 v11, p0

    move-object v13, v6

    move v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    move/from16 v17, v10

    .line 1338
    invoke-virtual/range {v11 .. v17}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1339
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1345
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #sizeMb:I
    .end local v8           #fstype:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v12           #path:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1348
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v35

    .line 1349
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1355
    .end local v6           #id:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1359
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1360
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1361
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1366
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1370
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1371
    .restart local v23       #force:Z
    :goto_5
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v35

    .line 1372
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1370
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_4
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_5

    .line 1378
    .end local v6           #id:Ljava/lang/String;
    :sswitch_10
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1382
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1384
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1385
    .restart local v23       #force:Z
    :goto_6
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v35

    .line 1386
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1388
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1384
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_5
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_6

    .line 1391
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_11
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1395
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1397
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1398
    .restart local v10       #ownerUid:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v9

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1399
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1405
    .end local v6           #id:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v35           #resultCode:I
    :sswitch_12
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1409
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1411
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1413
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1414
    .restart local v10       #ownerUid:I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    move-object v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1415
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1417
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1420
    .end local v6           #id:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v12           #path:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_13
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1424
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1425
    .restart local v23       #force:Z
    :goto_7
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v35

    .line 1426
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1428
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1424
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_6
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_7

    .line 1431
    .end local v6           #id:Ljava/lang/String;
    :sswitch_14
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1435
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1437
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1438
    .restart local v23       #force:Z
    :goto_8
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v35

    .line 1439
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1437
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_7
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_8

    .line 1444
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_15
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1447
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v39

    .line 1448
    .local v39, status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    if-eqz v39, :cond_8

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1449
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 1454
    .end local v6           #id:Ljava/lang/String;
    .end local v39           #status:Z
    :sswitch_16
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1458
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1459
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    .line 1460
    .restart local v39       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    if-eqz v39, :cond_9

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1462
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1461
    :cond_9
    const/4 v5, 0x0

    goto :goto_a

    .line 1465
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v39           #status:Z
    :sswitch_17
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1469
    .local v31, oldId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1470
    .local v28, newId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1471
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1476
    .end local v28           #newId:Ljava/lang/String;
    .end local v31           #oldId:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_18
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1480
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1482
    .restart local v31       #oldId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1483
    .restart local v28       #newId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v31

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1484
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1485
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1486
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1489
    .end local v12           #path:Ljava/lang/String;
    .end local v28           #newId:Ljava/lang/String;
    .end local v31           #oldId:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_19
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1492
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1493
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1495
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1499
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_1a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1503
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1504
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1505
    .local v36, ret:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1507
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1510
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v36           #ret:Ljava/lang/String;
    :sswitch_1b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v24

    .line 1512
    .local v24, ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1514
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1517
    .end local v24           #ids:[Ljava/lang/String;
    :sswitch_1c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1520
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1521
    .restart local v24       #ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1523
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1527
    .end local v12           #path:Ljava/lang/String;
    .end local v24           #ids:[Ljava/lang/String;
    :sswitch_1d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerListAll()[Ljava/lang/String;

    move-result-object v24

    .line 1529
    .restart local v24       #ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1531
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1535
    .end local v24           #ids:[Ljava/lang/String;
    :sswitch_1e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1538
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getSecureContainerInstalledPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1539
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1540
    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1541
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1545
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_1f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1548
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getAsecVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1549
    .restart local v38       #state:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1551
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1555
    .end local v12           #path:Ljava/lang/String;
    .end local v38           #state:Ljava/lang/String;
    :sswitch_20
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v30

    .line 1559
    .local v30, observer:Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1564
    .end local v30           #observer:Landroid/os/storage/IMountShutdownObserver;
    :sswitch_21
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1565
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1570
    :sswitch_22
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1574
    .local v22, filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1576
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v30

    .line 1578
    .local v30, observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 1579
    .local v29, nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v9

    move-object/from16 v3, v30

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1584
    .end local v9           #key:Ljava/lang/String;
    .end local v22           #filename:Ljava/lang/String;
    .end local v29           #nonce:I
    .end local v30           #observer:Landroid/os/storage/IObbActionListener;
    :sswitch_23
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1588
    .restart local v22       #filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1590
    .restart local v23       #force:Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v30

    .line 1592
    .restart local v30       #observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 1593
    .restart local v29       #nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v30

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1595
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1588
    .end local v23           #force:Z
    .end local v29           #nonce:I
    .end local v30           #observer:Landroid/os/storage/IObbActionListener;
    :cond_a
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_b

    .line 1598
    .end local v22           #filename:Ljava/lang/String;
    :sswitch_24
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1601
    .restart local v22       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v39

    .line 1602
    .restart local v39       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    if-eqz v39, :cond_b

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1603
    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    .line 1607
    .end local v22           #filename:Ljava/lang/String;
    .end local v39           #status:Z
    :sswitch_25
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1610
    .restart local v22       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1611
    .local v27, mountedPath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1613
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1617
    .end local v22           #filename:Ljava/lang/String;
    .end local v27           #mountedPath:Ljava/lang/String;
    :sswitch_26
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1620
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1621
    .local v19, dpath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1623
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1627
    .end local v12           #path:Ljava/lang/String;
    .end local v19           #dpath:Ljava/lang/String;
    :sswitch_27
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountCallBackListener;

    move-result-object v25

    .line 1630
    .local v25, listener:Landroid/os/storage/IMountCallBackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerCallBackListener(Landroid/os/storage/IMountCallBackListener;)V

    .line 1631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1636
    .end local v25           #listener:Landroid/os/storage/IMountCallBackListener;
    :sswitch_28
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountCallBackListener;

    move-result-object v25

    .line 1639
    .restart local v25       #listener:Landroid/os/storage/IMountCallBackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterCallBackListener(Landroid/os/storage/IMountCallBackListener;)V

    .line 1640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1641
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1645
    .end local v25           #listener:Landroid/os/storage/IMountCallBackListener;
    :sswitch_29
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1646
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPlayNotificationSounds()Z

    move-result v39

    .line 1647
    .restart local v39       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    if-eqz v39, :cond_c

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1648
    :cond_c
    const/4 v5, 0x0

    goto :goto_d

    .line 1653
    .end local v39           #status:Z
    :sswitch_2a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    move/from16 v40, v5

    .line 1656
    .local v40, value:Z
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setPlayNotificationSounds(Z)V

    .line 1657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1658
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1655
    .end local v40           #value:Z
    :cond_d
    const/4 v5, 0x0

    move/from16 v40, v5

    goto :goto_e

    .line 1662
    :sswitch_2b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1665
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getShowSafeUnmountNotification(Ljava/lang/String;)Z

    move-result v36

    .line 1666
    .local v36, ret:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1667
    if-eqz v36, :cond_e

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1667
    :cond_e
    const/4 v5, 0x0

    goto :goto_f

    .line 1672
    .end local v12           #path:Ljava/lang/String;
    .end local v36           #ret:Z
    :sswitch_2c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1676
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1677
    .local v37, set:Z
    :goto_10
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setShowSafeUnmountNotification(Ljava/lang/String;Z)V

    .line 1678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1676
    .end local v37           #set:Z
    :cond_f
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_10

    .line 1683
    .end local v12           #path:Ljava/lang/String;
    :sswitch_2d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1686
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1687
    .restart local v19       #dpath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1688
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1689
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1693
    .end local v12           #path:Ljava/lang/String;
    .end local v19           #dpath:Ljava/lang/String;
    :sswitch_2e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1696
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageCidNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1697
    .restart local v19       #dpath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1699
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1703
    .end local v12           #path:Ljava/lang/String;
    .end local v19           #dpath:Ljava/lang/String;
    :sswitch_2f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1707
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1708
    .restart local v37       #set:Z
    :goto_11
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->isEncryptionEnabled(Ljava/lang/String;Z)Z

    move-result v36

    .line 1709
    .restart local v36       #ret:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    if-eqz v36, :cond_11

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1707
    .end local v36           #ret:Z
    .end local v37           #set:Z
    :cond_10
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_11

    .line 1710
    .restart local v36       #ret:Z
    .restart local v37       #set:Z
    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .line 1715
    .end local v12           #path:Ljava/lang/String;
    .end local v36           #ret:Z
    .end local v37           #set:Z
    :sswitch_30
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1719
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1720
    .restart local v37       #set:Z
    :goto_13
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setEncryptionEnabled(Ljava/lang/String;Z)I

    move-result v35

    .line 1721
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1719
    .end local v35           #resultCode:I
    .end local v37           #set:Z
    :cond_12
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_13

    .line 1727
    .end local v12           #path:Ljava/lang/String;
    :sswitch_31
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1731
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1733
    .local v32, password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1735
    .local v18, cid:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1736
    .local v21, encmode:I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v32

    move-object/from16 v3, v18

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->encryptBatchVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1737
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1743
    .end local v12           #path:Ljava/lang/String;
    .end local v18           #cid:Ljava/lang/String;
    .end local v21           #encmode:I
    .end local v32           #password:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_32
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1747
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1749
    .restart local v32       #password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1750
    .restart local v18       #cid:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v32

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->encryptMountVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1751
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1752
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1753
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1758
    .end local v12           #path:Ljava/lang/String;
    .end local v18           #cid:Ljava/lang/String;
    .end local v32           #password:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_33
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1762
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1764
    .restart local v32       #password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1765
    .restart local v18       #cid:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v32

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->encryptFormatVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1766
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1773
    .end local v12           #path:Ljava/lang/String;
    .end local v18           #cid:Ljava/lang/String;
    .end local v32           #password:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_34
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1776
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getEncryptedStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1777
    .local v36, ret:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1779
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1217
    nop

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
        0xc -> :sswitch_d
        0xd -> :sswitch_f
        0xe -> :sswitch_11
        0xf -> :sswitch_13
        0x10 -> :sswitch_15
        0x11 -> :sswitch_17
        0x12 -> :sswitch_19
        0x13 -> :sswitch_1b
        0x14 -> :sswitch_20
        0x15 -> :sswitch_21
        0x16 -> :sswitch_22
        0x17 -> :sswitch_23
        0x18 -> :sswitch_24
        0x19 -> :sswitch_25
        0x51 -> :sswitch_c
        0x52 -> :sswitch_10
        0x53 -> :sswitch_e
        0x54 -> :sswitch_12
        0x55 -> :sswitch_14
        0x56 -> :sswitch_16
        0x57 -> :sswitch_18
        0x58 -> :sswitch_1a
        0x59 -> :sswitch_1c
        0x5a -> :sswitch_1d
        0x5b -> :sswitch_1e
        0x5c -> :sswitch_1f
        0x5d -> :sswitch_26
        0x5e -> :sswitch_27
        0x5f -> :sswitch_28
        0x60 -> :sswitch_29
        0x61 -> :sswitch_2a
        0x62 -> :sswitch_2b
        0x63 -> :sswitch_2c
        0x64 -> :sswitch_2d
        0x65 -> :sswitch_2e
        0x66 -> :sswitch_2f
        0x67 -> :sswitch_30
        0x68 -> :sswitch_31
        0x69 -> :sswitch_32
        0x6a -> :sswitch_33
        0x6b -> :sswitch_34
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public Lcom/broadcom/bt/app/settings/BluetoothServicesMap;
.super Ljava/lang/Object;
.source "BluetoothServicesMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getServiceString(Landroid/content/Context;ILcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;)V
    .locals 1
    .parameter "ctx"
    .parameter "serviceMask"
    .parameter "listManager"

    .prologue
    .line 222
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    .line 223
    const v0, 0x7f090685

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 225
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    .line 226
    const v0, 0x7f090686

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 228
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_2

    .line 229
    const v0, 0x7f090687

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 231
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_3

    .line 232
    const v0, 0x7f090688

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 234
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_4

    .line 235
    const v0, 0x7f090689

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 237
    :cond_4
    and-int/lit8 v0, p1, 0x20

    if-lez v0, :cond_5

    .line 238
    const v0, 0x7f09068a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 240
    :cond_5
    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_6

    .line 241
    const v0, 0x7f09068b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 243
    :cond_6
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_7

    .line 244
    const v0, 0x7f09068c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 246
    :cond_7
    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_8

    .line 247
    const v0, 0x7f09068d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 249
    :cond_8
    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_9

    .line 250
    const v0, 0x7f09068e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 252
    :cond_9
    and-int/lit16 v0, p1, 0x400

    if-lez v0, :cond_a

    .line 253
    const v0, 0x7f09068f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 255
    :cond_a
    and-int/lit16 v0, p1, 0x800

    if-lez v0, :cond_b

    .line 256
    const v0, 0x7f090690

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 258
    :cond_b
    and-int/lit16 v0, p1, 0x1000

    if-lez v0, :cond_c

    .line 259
    const v0, 0x7f090691

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 261
    :cond_c
    and-int/lit16 v0, p1, 0x2000

    if-lez v0, :cond_d

    .line 262
    const v0, 0x7f090692

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 264
    :cond_d
    and-int/lit16 v0, p1, 0x4000

    if-lez v0, :cond_e

    .line 265
    const v0, 0x7f090693

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 267
    :cond_e
    const v0, 0x8000

    and-int/2addr v0, p1

    if-lez v0, :cond_f

    .line 268
    const v0, 0x7f090694

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 270
    :cond_f
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-lez v0, :cond_10

    .line 271
    const v0, 0x7f090695

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 273
    :cond_10
    const/high16 v0, 0x2

    and-int/2addr v0, p1

    if-lez v0, :cond_11

    .line 274
    const v0, 0x7f090696

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 276
    :cond_11
    const/high16 v0, 0x4

    and-int/2addr v0, p1

    if-lez v0, :cond_12

    .line 277
    const v0, 0x7f090697

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 279
    :cond_12
    const/high16 v0, 0x8

    and-int/2addr v0, p1

    if-lez v0, :cond_13

    .line 280
    const v0, 0x7f090698

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 282
    :cond_13
    const/high16 v0, 0x10

    and-int/2addr v0, p1

    if-lez v0, :cond_14

    .line 283
    const v0, 0x7f090699

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 285
    :cond_14
    const/high16 v0, 0x20

    and-int/2addr v0, p1

    if-lez v0, :cond_15

    .line 286
    const v0, 0x7f09069a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 288
    :cond_15
    const/high16 v0, 0x40

    and-int/2addr v0, p1

    if-lez v0, :cond_16

    .line 289
    const v0, 0x7f09069b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 291
    :cond_16
    const/high16 v0, 0x80

    and-int/2addr v0, p1

    if-lez v0, :cond_17

    .line 292
    const v0, 0x7f09069c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 294
    :cond_17
    const/high16 v0, 0x100

    and-int/2addr v0, p1

    if-lez v0, :cond_18

    .line 295
    const v0, 0x7f09069d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 297
    :cond_18
    const/high16 v0, 0x200

    and-int/2addr v0, p1

    if-lez v0, :cond_19

    .line 298
    const v0, 0x7f09069e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 300
    :cond_19
    const/high16 v0, 0x400

    and-int/2addr v0, p1

    if-lez v0, :cond_1a

    .line 301
    const v0, 0x7f09069f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 304
    :cond_1a
    return-void
.end method

.method public static getServiceStringByUUID(Landroid/content/Context;Landroid/os/ParcelUuid;Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;)V
    .locals 10
    .parameter "ctx"
    .parameter "uuid"
    .parameter "listManager"

    .prologue
    const v8, 0x7f0906be

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "BluetoothServicesMap"

    .line 70
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, uuidStr:Ljava/lang/String;
    const-string v4, "BluetoothServicesMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UUID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-nez v3, :cond_0

    .line 207
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v4, "0000-1000-8000-00805F9B34FB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    const-string v4, "BluetoothServicesMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown UUID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, uuidPrefixStr:Ljava/lang/String;
    const/4 v1, -0x1

    .line 84
    .local v1, uuidPrefix:I
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 206
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_0
    const v4, 0x7f0906a1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :sswitch_1
    const v4, 0x7f0906a2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :sswitch_2
    const v4, 0x7f0906a3

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :sswitch_3
    const v4, 0x7f0906a4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :sswitch_4
    const v4, 0x7f0906a5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :sswitch_5
    const v4, 0x7f0906a6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :sswitch_6
    const v4, 0x7f0906a7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :sswitch_7
    const v4, 0x7f0906a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :sswitch_8
    const v4, 0x7f0906a9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :sswitch_9
    const v4, 0x7f0906ab

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :sswitch_a
    const v4, 0x7f0906ac

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :sswitch_b
    const v4, 0x7f0906ad

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :sswitch_c
    const v4, 0x7f0906ae

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :sswitch_d
    const v4, 0x7f0906af

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :sswitch_e
    const v4, 0x7f0906b0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :sswitch_f
    const v4, 0x7f0906aa

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :sswitch_10
    const v4, 0x7f0906b1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :sswitch_11
    const v4, 0x7f0906b2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :sswitch_12
    const v4, 0x7f0906b3

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :sswitch_13
    const v4, 0x7f0906b4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :sswitch_14
    const v4, 0x7f0906b5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :sswitch_15
    const v4, 0x7f0906b6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :sswitch_16
    const v4, 0x7f0906b7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :sswitch_17
    const v4, 0x7f0906b8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :sswitch_18
    const v4, 0x7f0906b9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :sswitch_19
    const v4, 0x7f0906ba

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :sswitch_1a
    const v4, 0x7f0906bb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :sswitch_1b
    const v4, 0x7f0906bc

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :sswitch_1c
    const v4, 0x7f0906bd

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        0x1101 -> :sswitch_d
        0x1102 -> :sswitch_19
        0x1103 -> :sswitch_e
        0x1104 -> :sswitch_15
        0x1105 -> :sswitch_9
        0x1106 -> :sswitch_a
        0x1108 -> :sswitch_3
        0x1109 -> :sswitch_16
        0x110a -> :sswitch_0
        0x110b -> :sswitch_1
        0x110c -> :sswitch_8
        0x110d -> :sswitch_2
        0x110e -> :sswitch_7
        0x1110 -> :sswitch_17
        0x1111 -> :sswitch_18
        0x1112 -> :sswitch_4
        0x1115 -> :sswitch_12
        0x1116 -> :sswitch_13
        0x1117 -> :sswitch_14
        0x111a -> :sswitch_1a
        0x111e -> :sswitch_5
        0x111f -> :sswitch_6
        0x1122 -> :sswitch_c
        0x1124 -> :sswitch_11
        0x112d -> :sswitch_1c
        0x1130 -> :sswitch_b
        0x1200 -> :sswitch_f
        0x1203 -> :sswitch_10
        0x1305 -> :sswitch_1b
    .end sparse-switch
.end method

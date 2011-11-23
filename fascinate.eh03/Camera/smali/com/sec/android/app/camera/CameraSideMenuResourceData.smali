.class public Lcom/sec/android/app/camera/CameraSideMenuResourceData;
.super Ljava/lang/Object;
.source "CameraSideMenuResourceData.java"


# static fields
.field private static mSideMenuResource:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SideMenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0x28

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0x2e

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0x10

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0x1f

    new-array v3, v3, [I

    const v4, 0x7f0200d9

    aput v4, v3, v7

    const v4, 0x7f0200da

    aput v4, v3, v8

    const v4, 0x7f0200d8

    aput v4, v3, v9

    const-string v4, "2560x1920"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v7}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v4

    if-ltz v4, :cond_0

    const v4, 0x7f070096

    :goto_0
    aput v4, v3, v10

    const/4 v4, -0x4

    aput v4, v3, v6

    const/4 v4, 0x5

    const v5, 0x7f0200d3

    aput v5, v3, v4

    const/4 v4, 0x6

    const v5, 0x7f0200d4

    aput v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, -0x3

    aput v5, v3, v4

    const/16 v4, 0x8

    const v5, 0x7f0200d5

    aput v5, v3, v4

    const/16 v4, 0x9

    const v5, 0x7f0200d5

    aput v5, v3, v4

    const/16 v4, 0xa

    const/4 v5, -0x2

    aput v5, v3, v4

    const/16 v4, 0xb

    const v5, 0x7f0200d6

    aput v5, v3, v4

    const/16 v4, 0xc

    const v5, 0x7f0200d6

    aput v5, v3, v4

    const/16 v4, 0xd

    const/4 v5, -0x1

    aput v5, v3, v4

    const/16 v4, 0xe

    const v5, 0x7f0200d7

    aput v5, v3, v4

    const/16 v4, 0xf

    const v5, 0x7f0200d7

    aput v5, v3, v4

    const/16 v4, 0x10

    aput v7, v3, v4

    const/16 v4, 0x11

    const v5, 0x7f0200d9

    aput v5, v3, v4

    const/16 v4, 0x12

    const v5, 0x7f0200d9

    aput v5, v3, v4

    const/16 v4, 0x13

    aput v8, v3, v4

    const/16 v4, 0x14

    const v5, 0x7f0200db

    aput v5, v3, v4

    const/16 v4, 0x15

    const v5, 0x7f0200db

    aput v5, v3, v4

    const/16 v4, 0x16

    aput v9, v3, v4

    const/16 v4, 0x17

    const v5, 0x7f0200dc

    aput v5, v3, v4

    const/16 v4, 0x18

    const v5, 0x7f0200dc

    aput v5, v3, v4

    const/16 v4, 0x19

    aput v10, v3, v4

    const/16 v4, 0x1a

    const v5, 0x7f0200dd

    aput v5, v3, v4

    const/16 v4, 0x1b

    const v5, 0x7f0200dd

    aput v5, v3, v4

    const/16 v4, 0x1c

    aput v6, v3, v4

    const/16 v4, 0x1d

    const v5, 0x7f0200de

    aput v5, v3, v4

    const/16 v4, 0x1e

    const v5, 0x7f0200de

    aput v5, v3, v4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_8

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_9

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void

    .line 180
    :cond_0
    const v4, 0x7f070095

    goto/16 :goto_0

    .line 27
    nop

    :array_0
    .array-data 0x4
        0xc7t 0x0t 0x2t 0x7ft
        0xc8t 0x0t 0x2t 0x7ft
        0xc6t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x7t 0x7ft
    .end array-data

    .line 34
    :array_1
    .array-data 0x4
        0x38t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x7t 0x7ft
    .end array-data

    .line 41
    :array_2
    .array-data 0x4
        0x32t 0x2t 0x2t 0x7ft
        0x33t 0x2t 0x2t 0x7ft
        0x31t 0x2t 0x2t 0x7ft
        0x93t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x32t 0x2t 0x2t 0x7ft
        0x33t 0x2t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x29t 0x2t 0x2t 0x7ft
        0x2at 0x2t 0x2t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x2ft 0x2t 0x2t 0x7ft
        0x30t 0x2t 0x2t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x34t 0x2t 0x2t 0x7ft
        0x35t 0x2t 0x2t 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x2t 0x2t 0x7ft
        0x2et 0x2t 0x2t 0x7ft
        0x5t 0x0t 0x0t 0x0t
        0x2bt 0x2t 0x2t 0x7ft
        0x2ct 0x2t 0x2t 0x7ft
        0x7t 0x0t 0x0t 0x0t
        0x27t 0x2t 0x2t 0x7ft
        0x28t 0x2t 0x2t 0x7ft
        0x8t 0x0t 0x0t 0x0t
        0x36t 0x2t 0x2t 0x7ft
        0x37t 0x2t 0x2t 0x7ft
        0x9t 0x0t 0x0t 0x0t
        0x41t 0x1t 0x2t 0x7ft
        0x42t 0x1t 0x2t 0x7ft
        0xat 0x0t 0x0t 0x0t
        0x3ft 0x1t 0x2t 0x7ft
        0x40t 0x1t 0x2t 0x7ft
        0xbt 0x0t 0x0t 0x0t
        0x45t 0x1t 0x2t 0x7ft
        0x46t 0x1t 0x2t 0x7ft
        0xdt 0x0t 0x0t 0x0t
        0x43t 0x1t 0x2t 0x7ft
        0x44t 0x1t 0x2t 0x7ft
    .end array-data

    .line 84
    :array_3
    .array-data 0x4
        0x7t 0x2t 0x2t 0x7ft
        0xat 0x2t 0x2t 0x7ft
        0xfct 0x1t 0x2t 0x7ft
        0x88t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x2t 0x2t 0x7ft
        0xat 0x2t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x2t 0x2t 0x7ft
        0x9t 0x2t 0x2t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x2t 0x2t 0x7ft
        0x4t 0x2t 0x2t 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0xct 0x2t 0x2t 0x7ft
        0xdt 0x2t 0x2t 0x7ft
        0x7t 0x0t 0x0t 0x0t
        0xet 0x2t 0x2t 0x7ft
        0xft 0x2t 0x2t 0x7ft
        0x8t 0x0t 0x0t 0x0t
        0xfdt 0x1t 0x2t 0x7ft
        0xfet 0x1t 0x2t 0x7ft
        0xat 0x0t 0x0t 0x0t
        0x1t 0x2t 0x2t 0x7ft
        0x2t 0x2t 0x2t 0x7ft
        0x6t 0x0t 0x0t 0x0t
        0xf8t 0x1t 0x2t 0x7ft
        0xf9t 0x1t 0x2t 0x7ft
        0x5t 0x0t 0x0t 0x0t
        0x12t 0x2t 0x2t 0x7ft
        0x13t 0x2t 0x2t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x2t 0x2t 0x7ft
        0x6t 0x2t 0x2t 0x7ft
        0x9t 0x0t 0x0t 0x0t
        0xfft 0x1t 0x2t 0x7ft
        0x0t 0x2t 0x2t 0x7ft
        0xct 0x0t 0x0t 0x0t
        0xfat 0x1t 0x2t 0x7ft
        0xfbt 0x1t 0x2t 0x7ft
        0xdt 0x0t 0x0t 0x0t
        0xf6t 0x1t 0x2t 0x7ft
        0xf7t 0x1t 0x2t 0x7ft
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x2t 0x2t 0x7ft
        0x11t 0x2t 0x2t 0x7ft
    .end array-data

    .line 132
    :array_4
    .array-data 0x4
        0x25t 0x2t 0x2t 0x7ft
        0x26t 0x2t 0x2t 0x7ft
        0x24t 0x2t 0x2t 0x7ft
        0x13t 0x0t 0x7t 0x7ft
    .end array-data

    .line 138
    :array_5
    .array-data 0x4
        0xc1t 0x0t 0x2t 0x7ft
        0xc2t 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x7t 0x7ft
    .end array-data

    .line 146
    :array_6
    .array-data 0x4
        0x97t 0x1t 0x2t 0x7ft
        0x98t 0x1t 0x2t 0x7ft
        0x96t 0x1t 0x2t 0x7ft
        0x94t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x97t 0x1t 0x2t 0x7ft
        0x98t 0x1t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x99t 0x1t 0x2t 0x7ft
        0x9at 0x1t 0x2t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x94t 0x1t 0x2t 0x7ft
        0x95t 0x1t 0x2t 0x7ft
    .end array-data

    .line 162
    :array_7
    .array-data 0x4
        0x65t 0x2t 0x2t 0x7ft
        0x67t 0x2t 0x2t 0x7ft
        0x63t 0x2t 0x2t 0x7ft
        0x8at 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x65t 0x2t 0x2t 0x7ft
        0x67t 0x2t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x5at 0x2t 0x2t 0x7ft
        0x5ct 0x2t 0x2t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x5ft 0x2t 0x2t 0x7ft
        0x61t 0x2t 0x2t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x55t 0x2t 0x2t 0x7ft
        0x57t 0x2t 0x2t 0x7ft
    .end array-data

    .line 217
    :array_8
    .array-data 0x4
        0xeft 0x1t 0x2t 0x7ft
        0xf0t 0x1t 0x2t 0x7ft
        0xeet 0x1t 0x2t 0x7ft
        0xa8t 0x0t 0x7t 0x7ft
    .end array-data

    .line 224
    :array_9
    .array-data 0x4
        0x48t 0x1t 0x2t 0x7ft
        0x49t 0x1t 0x2t 0x7ft
        0x47t 0x1t 0x2t 0x7ft
        0xa8t 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getResource()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SideMenuResourceBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    sget-object v0, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    return-object v0
.end method

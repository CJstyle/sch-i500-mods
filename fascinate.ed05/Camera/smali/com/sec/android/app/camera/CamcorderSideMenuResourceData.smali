.class public Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;
.super Ljava/lang/Object;
.source "CamcorderSideMenuResourceData.java"


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
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const v9, 0x7f02011c

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0x13

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v8, [I

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v8, [I

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0x10

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    const/16 v3, 0x1f

    new-array v3, v3, [I

    aput v9, v3, v7

    const v4, 0x7f02011d

    aput v4, v3, v10

    const/4 v4, 0x2

    const v5, 0x7f02011b

    aput v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "2560x1920"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v7}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v5

    if-ltz v5, :cond_0

    const v5, 0x7f070096

    :goto_0
    aput v5, v3, v4

    const/4 v4, -0x4

    aput v4, v3, v6

    const/4 v4, 0x5

    const v5, 0x7f020110

    aput v5, v3, v4

    const/4 v4, 0x6

    const v5, 0x7f020111

    aput v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, -0x3

    aput v5, v3, v4

    const/16 v4, 0x8

    const v5, 0x7f020113

    aput v5, v3, v4

    const/16 v4, 0x9

    const v5, 0x7f020113

    aput v5, v3, v4

    const/4 v4, -0x2

    aput v4, v3, v8

    const/16 v4, 0xb

    const v5, 0x7f020116

    aput v5, v3, v4

    const/16 v4, 0xc

    const v5, 0x7f020116

    aput v5, v3, v4

    const/16 v4, 0xd

    const/4 v5, -0x1

    aput v5, v3, v4

    const/16 v4, 0xe

    const v5, 0x7f020119

    aput v5, v3, v4

    const/16 v4, 0xf

    const v5, 0x7f020119

    aput v5, v3, v4

    const/16 v4, 0x10

    aput v7, v3, v4

    const/16 v4, 0x11

    aput v9, v3, v4

    const/16 v4, 0x12

    aput v9, v3, v4

    const/16 v4, 0x13

    aput v10, v3, v4

    const/16 v4, 0x14

    const v5, 0x7f02011f

    aput v5, v3, v4

    const/16 v4, 0x15

    const v5, 0x7f02011f

    aput v5, v3, v4

    const/16 v4, 0x16

    const/4 v5, 0x2

    aput v5, v3, v4

    const/16 v4, 0x17

    const v5, 0x7f020122

    aput v5, v3, v4

    const/16 v4, 0x18

    const v5, 0x7f020122

    aput v5, v3, v4

    const/16 v4, 0x19

    const/4 v5, 0x3

    aput v5, v3, v4

    const/16 v4, 0x1a

    const v5, 0x7f020125

    aput v5, v3, v4

    const/16 v4, 0x1b

    const v5, 0x7f020125

    aput v5, v3, v4

    const/16 v4, 0x1c

    aput v6, v3, v4

    const/16 v4, 0x1d

    const v5, 0x7f020128

    aput v5, v3, v4

    const/16 v4, 0x1e

    const v5, 0x7f020128

    aput v5, v3, v4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_8

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SideMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_9

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SideMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void

    .line 116
    :cond_0
    const v5, 0x7f070095

    goto/16 :goto_0

    .line 28
    nop

    :array_0
    .array-data 0x4
        0xeet 0x0t 0x2t 0x7ft
        0xeft 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x7t 0x7ft
    .end array-data

    .line 34
    :array_1
    .array-data 0x4
        0x3bt 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x7t 0x7ft
        0x9t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x0t 0x0t
        0x35t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x0t 0x0t
        0x32t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
    .end array-data

    .line 54
    :array_2
    .array-data 0x4
        0xb6t 0x2t 0x2t 0x7ft
        0xb7t 0x2t 0x2t 0x7ft
        0xb2t 0x2t 0x2t 0x7ft
        0x97t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xb6t 0x2t 0x2t 0x7ft
        0xb7t 0x2t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xb3t 0x2t 0x2t 0x7ft
        0xb4t 0x2t 0x2t 0x7ft
    .end array-data

    .line 66
    :array_3
    .array-data 0x4
        0xd1t 0x2t 0x2t 0x7ft
        0xd8t 0x2t 0x2t 0x7ft
        0xc1t 0x2t 0x2t 0x7ft
        0x88t 0x0t 0x7t 0x7ft
    .end array-data

    .line 72
    :array_4
    .array-data 0x4
        0xfft 0x2t 0x2t 0x7ft
        0x0t 0x3t 0x2t 0x7ft
        0xfet 0x2t 0x2t 0x7ft
        0x12t 0x0t 0x7t 0x7ft
    .end array-data

    .line 78
    :array_5
    .array-data 0x4
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x7t 0x7ft
    .end array-data

    .line 85
    :array_6
    .array-data 0x4
        0x45t 0x2t 0x2t 0x7ft
        0x46t 0x2t 0x2t 0x7ft
        0x44t 0x2t 0x2t 0x7ft
        0x94t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x45t 0x2t 0x2t 0x7ft
        0x46t 0x2t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x48t 0x2t 0x2t 0x7ft
        0x49t 0x2t 0x2t 0x7ft
    .end array-data

    .line 98
    :array_7
    .array-data 0x4
        0x56t 0x3t 0x2t 0x7ft
        0x58t 0x3t 0x2t 0x7ft
        0x54t 0x3t 0x2t 0x7ft
        0x8at 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x2t 0x7ft
        0x58t 0x3t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x4at 0x3t 0x2t 0x7ft
        0x4ct 0x3t 0x2t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x50t 0x3t 0x2t 0x7ft
        0x52t 0x3t 0x2t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x44t 0x3t 0x2t 0x7ft
        0x46t 0x3t 0x2t 0x7ft
    .end array-data

    .line 152
    :array_8
    .array-data 0x4
        0xb0t 0x2t 0x2t 0x7ft
        0xb1t 0x2t 0x2t 0x7ft
        0xaft 0x2t 0x2t 0x7ft
        0xa8t 0x0t 0x7t 0x7ft
    .end array-data

    .line 159
    :array_9
    .array-data 0x4
        0xc5t 0x1t 0x2t 0x7ft
        0xc6t 0x1t 0x2t 0x7ft
        0xc4t 0x1t 0x2t 0x7ft
        0xa8t 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method public cleanupResources()V
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 174
    return-void
.end method

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
    .line 169
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->mSideMenuResource:Ljava/util/HashMap;

    return-object v0
.end method

.class public Lcom/sec/android/app/camera/ShutterSoundResourceData;
.super Lcom/sec/android/app/camera/MenuResourceBase;
.source "ShutterSoundResourceData.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceBase;-><init>()V

    .line 27
    const v0, 0x7f070090

    iput v0, p0, Lcom/sec/android/app/camera/ShutterSoundResourceData;->mTextTitle:I

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x1dt 0x2t 0x2t 0x7ft
        0x1et 0x2t 0x2t 0x7ft
        0x1ct 0x2t 0x2t 0x7ft
        0x5ct 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 32
    :array_1
    .array-data 0x4
        0x20t 0x2t 0x2t 0x7ft
        0x21t 0x2t 0x2t 0x7ft
        0x1ft 0x2t 0x2t 0x7ft
        0x5bt 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 35
    :array_2
    .array-data 0x4
        0x23t 0x2t 0x2t 0x7ft
        0x24t 0x2t 0x2t 0x7ft
        0x22t 0x2t 0x2t 0x7ft
        0x5at 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 40
    :array_3
    .array-data 0x4
        0x1at 0x2t 0x2t 0x7ft
        0x1bt 0x2t 0x2t 0x7ft
        0x19t 0x2t 0x2t 0x7ft
        0x81t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

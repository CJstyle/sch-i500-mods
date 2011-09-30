.class public Lcom/sec/android/app/camera/ShutterSoundContinuousResourceData;
.super Lcom/sec/android/app/camera/MenuResourceBase;
.source "ShutterSoundContinuousResourceData.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceBase;-><init>()V

    .line 27
    const v0, 0x7f070090

    iput v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousResourceData;->mTextTitle:I

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x7et 0x1t 0x2t 0x7ft
        0x7ft 0x1t 0x2t 0x7ft
        0x7dt 0x1t 0x2t 0x7ft
        0x5ct 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_1
    .array-data 0x4
        0x7bt 0x1t 0x2t 0x7ft
        0x7ct 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
        0x81t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

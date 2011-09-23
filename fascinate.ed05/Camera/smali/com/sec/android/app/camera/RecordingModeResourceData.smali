.class public Lcom/sec/android/app/camera/RecordingModeResourceData;
.super Lcom/sec/android/app/camera/MenuResourceBase;
.source "RecordingModeResourceData.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceBase;-><init>()V

    .line 27
    const v0, 0x7f070097

    iput v0, p0, Lcom/sec/android/app/camera/RecordingModeResourceData;->mTextTitle:I

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingModeResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingModeResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x85t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x2at 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 35
    :array_1
    .array-data 0x4
        0x82t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

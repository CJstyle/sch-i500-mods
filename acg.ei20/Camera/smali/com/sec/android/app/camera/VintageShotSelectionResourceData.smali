.class public Lcom/sec/android/app/camera/VintageShotSelectionResourceData;
.super Lcom/sec/android/app/camera/MenuResourceBase;
.source "VintageShotSelectionResourceData.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceBase;-><init>()V

    .line 24
    const v0, 0x7f070024

    iput v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionResourceData;->mTextTitle:I

    .line 26
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void

    .line 26
    nop

    :array_0
    .array-data 0x4
        0xbbt 0x1t 0x2t 0x7ft
        0xbct 0x1t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x2at 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 29
    :array_1
    .array-data 0x4
        0xbdt 0x1t 0x2t 0x7ft
        0xbet 0x1t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 32
    :array_2
    .array-data 0x4
        0xb7t 0x1t 0x2t 0x7ft
        0xb8t 0x1t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 35
    :array_3
    .array-data 0x4
        0xb9t 0x1t 0x2t 0x7ft
        0xbat 0x1t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

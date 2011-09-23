.class public Lcom/sec/android/app/camera/ISOResourceData;
.super Lcom/sec/android/app/camera/MenuResourceBase;
.source "ISOResourceData.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const-string v4, "800"

    .line 25
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceBase;-><init>()V

    .line 26
    const v0, 0x7f07008f

    iput v0, p0, Lcom/sec/android/app/camera/ISOResourceData;->mTextTitle:I

    .line 28
    iget-object v0, p0, Lcom/sec/android/app/camera/ISOResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/ISOResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/ISOResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/ISOResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "800"

    const-string v0, "800"

    invoke-virtual {v4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/ISOResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    const-string v0, "800"

    const-string v0, "1600"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/ISOResourceData;->mMenuResource:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/MenuResourceBundle;

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    return-void

    .line 28
    nop

    :array_0
    .array-data 0x4
        0xc1t 0x1t 0x2t 0x7ft
        0xc2t 0x1t 0x2t 0x7ft
        0xc0t 0x1t 0x2t 0x7ft
        0x2et 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0xa6t 0x1t 0x2t 0x7ft
        0xa7t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
        0x36t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_2
    .array-data 0x4
        0xaft 0x1t 0x2t 0x7ft
        0xb0t 0x1t 0x2t 0x7ft
        0xaet 0x1t 0x2t 0x7ft
        0x37t 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_3
    .array-data 0x4
        0xb8t 0x1t 0x2t 0x7ft
        0xb9t 0x1t 0x2t 0x7ft
        0xb7t 0x1t 0x2t 0x7ft
        0x38t 0x0t 0x7t 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 41
    :array_4
    .array-data 0x4
        0xbet 0x1t 0x2t 0x7ft
        0xbft 0x1t 0x2t 0x7ft
        0xbdt 0x1t 0x2t 0x7ft
        0x39t 0x0t 0x7t 0x7ft
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_5
    .array-data 0x4
        0xact 0x1t 0x2t 0x7ft
        0xadt 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0x3at 0x0t 0x7t 0x7ft
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

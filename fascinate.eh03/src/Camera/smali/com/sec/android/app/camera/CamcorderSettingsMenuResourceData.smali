.class public Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;
.super Ljava/lang/Object;
.source "CamcorderSettingsMenuResourceData.java"


# static fields
.field private static mSettingsMenuResource:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SettingsMenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/16 v6, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v6, [I

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v5, [I

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v7, [I

    fill-array-data v3, :array_7

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_9

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v4, [I

    fill-array-data v3, :array_a

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    new-array v3, v7, [I

    fill-array-data v3, :array_c

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void

    .line 31
    :array_0
    .array-data 0x4
        0xa9t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x7t 0x7ft
    .end array-data

    .line 36
    :array_1
    .array-data 0x4
        0x8at 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x7t 0x7ft
    .end array-data

    .line 49
    :array_2
    .array-data 0x4
        0x8bt 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xaft 0x0t 0x7t 0x7ft
        0x9t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x7t 0x7ft
        0xat 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x7t 0x7ft
        0x7t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x7t 0x7ft
        0xct 0x0t 0x0t 0x0t
        0x4et 0x0t 0x7t 0x7ft
        0xdt 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x7t 0x7ft
    .end array-data

    .line 64
    :array_3
    .array-data 0x4
        0x8ct 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x7t 0x7ft
        0x4t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x7t 0x7ft
    .end array-data

    .line 79
    :array_4
    .array-data 0x4
        0x8dt 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xb1t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x7t 0x7ft
        0x3t 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x7t 0x7ft
    .end array-data

    .line 92
    :array_5
    .array-data 0x4
        0x9et 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0xb2t 0x0t 0x7t 0x7ft
    .end array-data

    .line 97
    :array_6
    .array-data 0x4
        0xa2t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x56t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x7t 0x7ft
    .end array-data

    .line 108
    :array_7
    .array-data 0x4
        0x83t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xb9t 0x0t 0x7t 0x7ft
        0x71t 0x0t 0x0t 0x0t
        0x83t 0x0t 0x7t 0x7ft
    .end array-data

    .line 115
    :array_8
    .array-data 0x4
        0xa1t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0xbat 0x0t 0x7t 0x7ft
    .end array-data

    .line 120
    :array_9
    .array-data 0x4
        0xa0t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0xbct 0x0t 0x7t 0x7ft
    .end array-data

    .line 125
    :array_a
    .array-data 0x4
        0xa3t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x7t 0x7ft
    .end array-data

    .line 130
    :array_b
    .array-data 0x4
        0xa4t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x7t 0x7ft
    .end array-data

    .line 139
    :array_c
    .array-data 0x4
        0xa5t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x7t 0x7ft
        0x75t 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 154
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
            "Lcom/sec/android/app/camera/SettingsMenuResourceBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->mSettingsMenuResource:Ljava/util/HashMap;

    return-object v0
.end method

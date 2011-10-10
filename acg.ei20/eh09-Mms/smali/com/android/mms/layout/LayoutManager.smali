.class public Lcom/android/mms/layout/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# static fields
.field private static sInstance:Lcom/android/mms/layout/LayoutManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/mms/layout/LayoutManager;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/android/mms/layout/LayoutManager;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    return-object v0
.end method

.method private static getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;
    .locals 3
    .parameter "displayType"

    .prologue
    .line 61
    packed-switch p0, :pswitch_data_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported display type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_0
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(I)V

    .line 65
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(I)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "Mms/LayoutManager"

    const-string v1, "Already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    new-instance v0, Lcom/android/mms/layout/LayoutManager;

    invoke-direct {v0, p0}, Lcom/android/mms/layout/LayoutManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    .line 81
    return-void
.end method

.method private initLayoutParameters(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "configuration"

    .prologue
    .line 47
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 58
    return-void
.end method


# virtual methods
.method public getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V

    .line 95
    return-void
.end method
